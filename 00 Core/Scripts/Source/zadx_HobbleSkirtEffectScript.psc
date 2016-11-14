ScriptName zadx_HobbleSkirtEffectScript extends ActiveMagicEffect

; Libraries
zadLibs Property Libs Auto

Keyword Property zad_DeviousHobbleSkirtRelaxed Auto	;extreme or relaxed speed debuff
GlobalVariable REQExhaustion	;Requiem setting responsible for its exhaustion slowdown, disabled while the dress is worn
float REQSavedVal				;Saved value of the setting, returned once the dress is unequipped

bool Function GetRequiem()
	If Game.GetFormFromFile(0x0336AD6A, "Requiem.esp")
		REQExhaustion = (Game.GetFormFromFile(0x0336AD6A, "Requiem.esp") as GlobalVariable)
		libs.Log("GetRequiem(): Hobble Skirt == true. Switching to Requiem compatibility mode.")
		return True
	Else
		return False
	Endif
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectStart(): Hobble Skirt")

	If !akTarget.WornHasKeyword(zad_DeviousHobbleSkirtRelaxed)
		; relaxed skirts do not use special animations, but the extreme ones do.
		libs.BoundCombat.Apply_HBC(akTarget)
	EndIf

	If GetRequiem() == True && akTarget == Libs.PlayerRef
		REQSavedVal = REQExhaustion.GetValue()
		REQExhaustion.SetValue(1.0)
	Endif
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	libs.Log("OnEffectFinish(): Hobble Skirt")

	If !akTarget.WornHasKeyword(zad_DeviousHobbleSkirtRelaxed)
		libs.BoundCombat.Remove_HBC(akTarget)
	EndIf

	If GetRequiem() == True && akTarget == Libs.PlayerRef
		REQExhaustion.SetValue(REQSavedVal)
	Endif
EndEvent