ScriptName zadx_HobbleSkirtEffectScript extends ActiveMagicEffect

; Libraries
zadLibs Property Libs Auto

Float SpeedMultDifferential = 0.0
Float TargetSpeedMult = 50.0
Float FlatSpeedDebuff = 50.0
Float SpeedMultRestore = 0.0

bool savedINIDampen
bool FootIKneedsreset

String Property NINODE_ROOT = "NPC" AutoReadOnly
String Property NIOO_KEY = "DDPET" AutoReadOnly

Actor who
Keyword Property zad_DeviousHobbleSkirtRelaxed Auto	;extreme or relaxed speed debuff
GlobalVariable REQExhaustion	;Requiem setting responsible for its exhaustion slowdown, disabled while the dress is worn
float REQSavedVal				;Saved value of the setting, returned once the dress is unequipped

bool Function GetRequiem()
	If Game.GetModByName("Requiem.esp") != 255
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
	; For Princessity! *hugs*
	TargetSpeedMult = 100 - Libs.Config.HobbleSkirtSpeedDebuff
	FlatSpeedDebuff = Libs.Config.HobbleSkirtSpeedDebuff
	
	savedINIDampen = Utility.GetINIBool("bDampenPlayerControls:Controls")
	Utility.SetINIBool("bDampenPlayerControls:Controls", false)
		
	FootIKneedsreset == False
	If akTarget.WornHasKeyword(libs.zad_DeviousPetSuit) 
		If akTarget.GetAnimationVariableBool("bHumanoidFootIKDisable") == false  ; that's the pet suit, needs FootIK disabled
			akTarget.SetAnimationVariableBool("bHumanoidFootIKDisable", true)
			FootIKneedsreset == True		
		EndIf		
		; need to override NiOverride... Yes, we're really overriding an override. Fun!
		Int isFemale = aktarget.GetLeveledActorBase().GetSex()
		If NiOverride.HasNodeTransformPosition(aktarget, False, isFemale, NINODE_ROOT, "internal")
			Float[] pos = NiOverride.GetNodeTransformPosition(aktarget, false, isFemale, NINODE_ROOT, "internal")
			pos[0] = -pos[0]
			pos[1] = -pos[1]
			pos[2] = -pos[2]
			NiOverride.AddNodeTransformPosition(aktarget, False, isFemale, NINODE_ROOT, NIOO_KEY, pos)
			NiOverride.UpdateNodeTransform(aktarget, False, isFemale, NINODE_ROOT)		
		EndIf		
	EndIf
	
	If akTarget.WornHasKeyword(zad_DeviousHobbleSkirtRelaxed)
		; With the current default values, the relaxed skirt needs no modification
		TargetSpeedMult += 20
		FlatSpeedDebuff -= 20
	Else
		; relaxed skirts do not use special animations, but the extreme ones do.
		libs.BoundCombat.Apply_HBC(akTarget)
	EndIf
	
	If GetRequiem() == True && akTarget == Libs.PlayerRef
		REQSavedVal = REQExhaustion.GetValue()
		REQExhaustion.SetValue(1.0)
		akTarget.DamageActorValue("SpeedMult", FlatSpeedDebuff)
		ApplySM(akTarget)
	Else
		Float CurrentSpeedMult = akTarget.GetAV("SpeedMult")
		SpeedMultDifferential = CurrentSpeedMult - TargetSpeedMult
		If SpeedMultDifferential > 0.0
			akTarget.DamageActorValue("SpeedMult", SpeedMultDifferential)
			ApplySM(akTarget)
		EndIf
		who = akTarget
		SpeedMultRestore = SpeedMultDifferential
		RegisterForSingleUpdate(5.0)
	Endif
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectFinish(): Hobble Skirt")
	
	Utility.SetINIBool("bDampenPlayerControls:Controls", savedINIDampen)
	
	If GetRequiem() == True && akTarget == Libs.PlayerRef
		akTarget.RestoreActorValue("SpeedMult", FlatSpeedDebuff)
		REQExhaustion.SetValue(REQSavedVal)
		ApplySM(akTarget)
	Else
		akTarget.RestoreActorValue("SpeedMult", SpeedMultRestore)
		ApplySM(akTarget)
		UnRegisterForUpdate()
	Endif

	If FootIKneedsreset == True
		akTarget.SetAnimationVariableBool("bHumanoidFootIKDisable", false)		
	EndIf	

	Int isFemale = akTarget.GetLeveledActorBase().GetSex()
	If NiOverride.HasNodeTransformPosition(akTarget, False, isFemale, NINODE_ROOT, NIOO_KEY)
		NiOverride.RemoveNodeTransformPosition(akTarget, False, isFemale, NINODE_ROOT, NIOO_KEY)
		NiOverride.UpdateNodeTransform(akTarget, False, isFemale, NINODE_ROOT)
	EndIf
		
	If !akTarget.WornHasKeyword(zad_DeviousHobbleSkirtRelaxed)
		libs.BoundCombat.Remove_HBC(akTarget)
	EndIf
EndEvent

Event OnUpdate()
	Float CurrentSpeedMult = who.GetAV("SpeedMult")
	TargetSpeedMult = 100 - Libs.Config.HobbleSkirtSpeedDebuff	
	SpeedMultDifferential = CurrentSpeedMult - TargetSpeedMult
	If who.WornHasKeyword(zad_DeviousHobbleSkirtRelaxed)
		TargetSpeedMult += 20
	EndIf
	If SpeedMultDifferential > 0.0
		who.DamageActorValue("SpeedMult", SpeedMultDifferential)
		ApplySM(who)
	EndIf
	If SpeedMultDifferential < 0.0
                SpeedMultDifferential *= -1
                who.RestoreActorValue("SpeedMult", SpeedMultDifferential)
		ApplySM(who)
	EndIf	
	If who.WornHasKeyword(libs.zad_DeviousPetSuit) 
		Int isFemale = who.GetLeveledActorBase().GetSex()
		If !NiOverride.HasNodeTransformPosition(who, False, isFemale, NINODE_ROOT, "internal") && NiOverride.HasNodeTransformPosition(who, False, isFemale, NINODE_ROOT, NIOO_KEY) 		
			If NiOverride.HasNodeTransformPosition(who, False, isFemale, NINODE_ROOT, NIOO_KEY)
				NiOverride.RemoveNodeTransformPosition(who, False, isFemale, NINODE_ROOT, NIOO_KEY)
				NiOverride.UpdateNodeTransform(who, False, isFemale, NINODE_ROOT)
			EndIf		
		ElseIf NiOverride.HasNodeTransformPosition(who, False, isFemale, NINODE_ROOT, "internal") && !NiOverride.HasNodeTransformPosition(who, False, isFemale, NINODE_ROOT, NIOO_KEY) 
			; need to override NiOverride... Yes, we're really overriding an override. Fun!		
			If NiOverride.HasNodeTransformPosition(who, False, isFemale, NINODE_ROOT, "internal")
				Float[] pos = NiOverride.GetNodeTransformPosition(who, false, isFemale, NINODE_ROOT, "internal")
				pos[0] = -pos[0]
				pos[1] = -pos[1]
				pos[2] = -pos[2]
				NiOverride.AddNodeTransformPosition(who, False, isFemale, NINODE_ROOT, NIOO_KEY, pos)
				NiOverride.UpdateNodeTransform(who, False, isFemale, NINODE_ROOT)			
			EndIf		
		EndIf
	EndIf
	RegisterForSingleUpdate(5.0)
EndEvent