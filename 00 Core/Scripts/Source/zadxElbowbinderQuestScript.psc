Scriptname zadxElbowbinderQuestScript extends zadHeavyBondageQuestScript Conditional

Message Property zadx_ElbowBinderRemoveLockedMsg Auto
Message Property zadx_ElbowBinderRemoveUnlockedMsg Auto
Message Property zadx_ElbowBinderRemoveLooseMsg Auto
Message Property zadx_ElbowBinderStruggleMsg Auto
Message Property zadx_ElbowBinderStruggleLooseMsg Auto
Message Property zadx_ElbowBinderImpossibleStruggleMsg Auto

Function DeviceMenuRemove()
	if IsLocked
		if IsLoose
			zadx_ElbowBinderRemoveLooseMsg.Show()
			RemoveHeavyBondage(libs.zad_DeviousArmbinderElbow)
			libs.SendDeviceRemovalEvent("ArmbinderElbow", libs.PlayerRef)
			libs.Aroused.UpdateActorExposure(libs.PlayerRef,1)
		Else
			zadx_ElbowBinderRemoveLockedMsg.Show()
		EndIf
	Else
		zadx_ElbowBinderRemoveUnlockedMsg.Show()
		RemoveHeavyBondage(libs.zad_DeviousArmbinderElbow)
		libs.SendDeviceRemovalEvent("ArmbinderElbow", libs.PlayerRef)
		CustomStruggleImpossibleMsg = None
		CustomStruggleMsg = None
		libs.UpdateExposure(libs.PlayerRef,1)
	EndIf
EndFunction

Function DeviceMenuPostStruggle()
	if IsLoose || (StruggleCount >= Libs.Config.ArmbinderMinStruggle) && (Utility.RandomFloat(0.0, 99.9) < Libs.Config.ArmbinderStruggleBaseChance + StruggleCount)
		zadx_ElbowBinderStruggleLooseMsg.Show()
		libs.Aroused.UpdateActorExposure(libs.PlayerRef, 1)
		IsLoose = true
	Else
		if DisableStruggle
			if CustomStruggleImpossibleMsg != None
				CustomStruggleImpossibleMsg.Show()
			Else
				zadx_ElbowBinderImpossibleStruggleMsg.show()
			EndIf
		Else
			if CustomStruggleMsg != None
				CustomStruggleMsg.Show()
			Else
				zadx_ElbowBinderStruggleMsg.Show()
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