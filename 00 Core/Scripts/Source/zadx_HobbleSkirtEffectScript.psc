ScriptName zadx_HobbleSkirtEffectScript extends ActiveMagicEffect

; Libraries
zadLibs Property Libs Auto

Float SpeedMultDifferential = 0.0
Float TargetSpeedMult = 14.0
Float FlatSpeedDebuff = 86.0

Actor who

GlobalVariable REQExhaustion	;Requiem setting responsible for its exhaustion slowdown, disabled while the dress is worn
float REQSavedVal				;Saved value of the setting, returned once the dress is unequipped

bool Function GetRequiem()
	If Game.GetFormFromFile(0x03609AF0, "Requiem.esp")
		REQExhaustion = (Game.GetFormFromFile(0x0336AD6A, "Requiem.esp") as GlobalVariable)
		libs.Log("GetRequiem(): Hobble Skirt == true. Switching to Requiem compatibility mode.")
		return True
	Else
		return False
	Endif
EndFunction

Function ApplySM(actor akTarget)
	akTarget.DamageAv("CarryWeight", 0.02)
	akTarget.RestoreAv("CarryWeight", 0.02)
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectStart(): Hobble Skirt")
	libs.BoundCombat.Apply_HBC(akTarget)
	
	; For Princessity! *hugs*
	TargetSpeedMult = 100 - Libs.Config.HobbleSkirtSpeedDebuff
	FlatSpeedDebuff = Libs.Config.HobbleSkirtSpeedDebuff	
	
	If GetRequiem() == True
		REQSavedVal = REQExhaustion.GetValue()
		REQExhaustion.SetValue(1.0)
		akTarget.DamageAV("SpeedMult", FlatSpeedDebuff)
		ApplySM(akTarget)
	Else
		Float CurrentSpeedMult = akTarget.GetAV("SpeedMult")	
		SpeedMultDifferential = CurrentSpeedMult - TargetSpeedMult
		If SpeedMultDifferential > 0.0
			akTarget.DamageAV("SpeedMult", SpeedMultDifferential)
			ApplySM(akTarget)
		EndIf
		who = akTarget
		RegisterForSingleUpdate(5.0)
	Endif
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectFinish(): Hobble Skirt")
	
	If GetRequiem() == True
		akTarget.RestoreAV("SpeedMult", FlatSpeedDebuff)
		REQExhaustion.SetValue(REQSavedVal)
		ApplySM(akTarget)
	Else
		If SpeedMultDifferential > 0.0
			akTarget.RestoreAV("SpeedMult", SpeedMultDifferential)
			ApplySM(akTarget)
		EndIf
		UnRegisterForUpdate()
	Endif

	libs.BoundCombat.Remove_HBC(akTarget)
EndEvent

Event OnUpdate()
	Float CurrentSpeedMult = who.GetAV("SpeedMult")
	TargetSpeedMult = 100 - Libs.Config.HobbleSkirtSpeedDebuff	
	If CurrentSpeedMult != TargetSpeedMult
		If SpeedMultDifferential > 0.0
			who.RestoreAV("SpeedMult", SpeedMultDifferential)
			ApplySM(who)
		EndIf
		SpeedMultDifferential = CurrentSpeedMult - TargetSpeedMult
		If SpeedMultDifferential > 0.0
			who.DamageAV("SpeedMult", SpeedMultDifferential)
			ApplySM(who)
		EndIf
	EndIf
	RegisterForSingleUpdate(5.0)
EndEvent