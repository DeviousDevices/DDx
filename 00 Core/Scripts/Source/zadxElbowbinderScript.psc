Scriptname zadxElbowBinderScript extends zadequipscript  

zadxElbowBinderQuestScript Property ebq Auto

; Messages
Message Property zadx_ElbowBinderPreEquipMsg Auto
Message Property zadx_ElbowBinderEquipPostMsg Auto
Message Property zadx_ElbowBinderDisableLocksMsg Auto
Message Property zadx_ElbowBinderEnableLocksMsg Auto
Message Property CustomStruggleImpossibleMsg = None Auto
Message Property CustomStruggleMsg = None Auto

Bool Property Locked = true Auto

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		if akActor == libs.PlayerRef
			zadx_ElbowBinderEquipPostMsg.Show()
		Else
			libs.NotifyActor("You slip "+GetMessageName(akActor)+" arms into the ElbowBinder and lock the straps tight.", akActor, true)
		EndIf
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction


Function OnEquippedPost(actor akActor)
	akActor.UnequipItemSlot(36) ; Unequip ring to avoid clipping
	if akActor == libs.PlayerRef
		libs.UpdateControls()
		ebq.IsLoose = False
		ebq.StruggleCount = 0
		If devicekey
			ebq.SetDevicekey(devicekey)
		Else
			ebq.SetDevicekey(None)
		EndIf
		If BaseEscapeChance > 0
			ebq.EnableStruggling()
		Else
			ebq.DisableStruggling()			
		EndIf
		if CustomStruggleImpossibleMsg
			ebq.CustomStruggleImpossibleMsg = CustomStruggleImpossibleMsg
		EndIf
		if CustomStruggleMsg
			ebq.CustomStruggleMsg = CustomStruggleMsg
		EndIf
		ebq.EnableDialogue()
		SetCustomMessage()
	EndIf
	libs.ApplyBoundAnim(akActor)
EndFunction

Function SetCustomMessage()
	SetDefaultMessages()
EndFunction

Function SetDefaultMessages()
	ebq.CustomStruggleMsg = None
	ebq.CustomStruggleImpossibleMsg = None
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Elbowbinder).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousHeavyBondage)
			MultipleItemFailMessage("Heavy Restraint")
			return 2
		EndIf
	EndIf
	if akActor != libs.PlayerRef || silent
		return 0 ; Proceed.
	EndIf
        int interaction = zadx_ElbowBinderPreEquipMsg.show()
        if interaction == 0 ; Equip Device
		ebq.IsLocked = Locked
		return 0 ; Proceed
	ElseIf interaction == 1 ; Manipulate Locks
		if Locked
			zadx_ElbowBinderDisableLocksMsg.Show()
			Locked = False
		Else
			zadx_ElbowBinderEnableLocksMsg.Show()
			Locked = True
		EndIf
		return OnEquippedFilter(akActor)
	ElseIf interaction == 2 ; Put it away
		return 2
	EndIf
	libs.Error("Invalid menu option selected for Elbowbinder Script")
	return 0
EndFunction


Function DeviceMenu(Int msgChoice = 0)
	msgChoice = ebq.ShowDeviceMenu(msgChoice)
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