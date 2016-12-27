Scriptname zadxStraitJacketQuestScript extends zadHeavyBondageQuestScript  Conditional

Message Property zadx_StraitJacketRemoveLockedMsg Auto
Message Property zadx_StraitJacketRemoveUnlockedMsg Auto
Message Property zadx_StraitJacketRemoveLooseMsg Auto
Message Property zadx_StraitJacketStruggleMsg Auto
Message Property zadx_StraitJacketStruggleLooseMsg Auto
Message Property zadx_StraitJacketImpossibleStruggleMsg Auto

Function DeviceMenuRemove()
	if IsLocked
		if IsLoose
			zadx_StraitJacketRemoveLooseMsg.Show()
			RemoveHeavyBondage(libs.zad_DeviousSuit)
			libs.SendDeviceRemovalEvent("Straitjacket", libs.PlayerRef)
			libs.Aroused.UpdateActorExposure(libs.PlayerRef,1)
		Else
			zadx_StraitJacketRemoveLockedMsg.Show()
		EndIf
	Else
		zadx_StraitJacketRemoveUnlockedMsg.Show()
		RemoveHeavyBondage(libs.zad_DeviousSuit)
		libs.SendDeviceRemovalEvent("Straitjacket", libs.PlayerRef)
		CustomStruggleImpossibleMsg = None
		CustomStruggleMsg = None
		libs.UpdateExposure(libs.PlayerRef,1)
	EndIf
EndFunction

Function DeviceMenuPostStruggle()
	If devicekey && libs.PlayerRef.GetItemCount(devicekey) < 1
		libs.notify("Struggle as you might, but without the proper key, there will be no chance to escape your bindings.", true)
		return
	ElseIf devicekey && libs.PlayerRef.GetItemCount(devicekey) > 0
		If Utility.RandomFloat(0.0, 99.9) < Libs.Config.DestroyKeyProbability
			libs.notify("You struggle a bit too hard while trying to insert the key into the lock - and break the key in the process. Oh no!", true)
			libs.PlayerRef.RemoveItem(devicekey, 1)
			return
		EndIf
	EndIf
	if IsLoose || (StruggleCount >= Libs.Config.ArmbinderMinStruggle) && (Utility.RandomFloat(0.0, 99.9) < Libs.Config.ArmbinderStruggleBaseChance + StruggleCount)
		zadx_StraitJacketStruggleLooseMsg.Show()
		libs.Aroused.UpdateActorExposure(libs.PlayerRef, 1)
		IsLoose = true
	Else
		if DisableStruggle
			if CustomStruggleImpossibleMsg != None
				CustomStruggleImpossibleMsg.Show()
			Else
				zadx_StraitJacketImpossibleStruggleMsg.show()
			EndIf
		Else
			if CustomStruggleMsg != None
				CustomStruggleMsg.Show()
			Else
				zadx_StraitJacketStruggleMsg.Show()
			EndIf
		Endif
	EndIf
EndFunction


Function DeviceMenuEndureBonds()
	;
EndFunction


Function DeviceMenuExt(int msgChoice=0)
	;
EndFunction