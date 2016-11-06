ScriptName zadx_HobbleSkirtEffectScript extends ActiveMagicEffect

; Libraries
zadLibs Property Libs Auto

Float SpeedMultDifferential = 0.0
Float TargetSpeedMult = 15.0

Actor who

Function ApplySM(actor akTarget)
	akTarget.DamageAv("CarryWeight", 0.02)
	akTarget.RestoreAv("CarryWeight", 0.02)
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectStart(): Hobble Skirt")
	libs.BoundCombat.Apply_HBC(akTarget)
	Float CurrentSpeedMult = akTarget.GetAV("SpeedMult")	
	SpeedMultDifferential = CurrentSpeedMult - TargetSpeedMult
	If SpeedMultDifferential > 0.0
		akTarget.DamageAV("SpeedMult", SpeedMultDifferential)
		ApplySM(akTarget)
	EndIf
	who = akTarget
	RegisterForSingleUpdate(5.0)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectFinish(): Hobble Skirt")
	If SpeedMultDifferential > 0.0
		akTarget.RestoreAV("SpeedMult", SpeedMultDifferential)
		ApplySM(akTarget)
	EndIf
	UnRegisterForUpdate()
	libs.BoundCombat.Remove_HBC(akTarget)
EndEvent

Event OnUpdate()
	Float CurrentSpeedMult = who.GetAV("SpeedMult")
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