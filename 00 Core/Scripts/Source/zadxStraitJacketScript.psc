Scriptname zadxStraitJacketScript extends zadequipscript  

zadxStraitJacketQuestScript Property sbq Auto

; Messages
Message Property zadx_StraitJacketPreEquipMsg Auto
Message Property zadx_StraitJacketEquipPostMsg Auto
Message Property zadx_StraitJacketDisableLocksMsg Auto
Message Property zadx_StraitJacketEnableLocksMsg Auto
Message Property CustomStruggleImpossibleMsg = None Auto
Message Property CustomStruggleMsg = None Auto

Bool Property Locked = true Auto

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		if akActor == libs.PlayerRef
			zadx_StraitJacketEquipPostMsg.Show()
		Else
			libs.NotifyActor("You slip "+GetMessageName(akActor)+" arms into the straitjacket and lock the straps tight.", akActor, true)
		EndIf
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction


Function OnEquippedPost(actor akActor)
	akActor.UnequipItemSlot(36) ; Unequip ring to avoid clipping
	if akActor == libs.PlayerRef
		libs.UpdateControls()
		sbq.IsLoose = False
		sbq.StruggleCount = 0
		If devicekey
			sbq.SetDevicekey(devicekey)
		Else
			sbq.SetDevicekey(None)
		EndIf
		If BaseEscapeChance > 0
			sbq.EnableStruggling()
		Else
			sbq.DisableStruggling()			
		EndIf
		if CustomStruggleImpossibleMsg
			sbq.CustomStruggleImpossibleMsg = CustomStruggleImpossibleMsg
		EndIf
		if CustomStruggleMsg
			sbq.CustomStruggleMsg = CustomStruggleMsg
		EndIf
		sbq.EnableDialogue()
		SetCustomMessage()
	EndIf
	libs.ApplyBoundAnim(akActor)
EndFunction

Function SetCustomMessage()
	SetDefaultMessages()
EndFunction

Function SetDefaultMessages()
	sbq.CustomStruggleMsg = None
	sbq.CustomStruggleImpossibleMsg = None
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Straitjacket).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousYoke)
			MultipleItemFailMessage("Yoke")
			return 2
		EndIf	
		if akActor.WornHasKeyword(libs.zad_DeviousArmbinder)
			MultipleItemFailMessage("Armbinder")
			return 2
		EndIf	
	EndIf
	if akActor != libs.PlayerRef || silent
		return 0 ; Proceed.
	EndIf
        int interaction = zadx_StraitJacketPreEquipMsg.show()
        if interaction == 0 ; Equip Device
		sbq.IsLocked = Locked
		return 0 ; Proceed
	ElseIf interaction == 1 ; Manipulate Locks
		if Locked
			zadx_StraitJacketDisableLocksMsg.Show()
			Locked = False
		Else
			zadx_StraitJacketEnableLocksMsg.Show()
			Locked = True
		EndIf
		return OnEquippedFilter(akActor)
	ElseIf interaction == 2 ; Put it away
		return 2
	EndIf
	libs.Error("Invalid menu option selected for Straitjacket Script")
	return 0
EndFunction


Function DeviceMenu(Int msgChoice = 0)
	msgChoice = sbq.ShowDeviceMenu(msgChoice)
	DeviceMenuExt(msgChoice)
	SyncInventory()
EndFunction


Function OnRemoveDevice(actor akActor)
	if akActor == libs.PlayerRef
		SetDefaultMessages()
	EndIf
	if !libs.IsAnimating(akActor)
		Debug.SendAnimationEvent(akActor, "IdleForceDefaultState")
	EndIf
EndFunction