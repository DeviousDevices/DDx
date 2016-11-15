Scriptname zadx_ForcedWalkScript extends activemagiceffect  

zadLibs Property Libs Auto
string savedMSG1
string savedMSG2

Event OnEffectStart(Actor akTarget, Actor akCaster)
	savedMSG1 = Game.GetGameSettingString("sOverEncumbered") as string
	savedMSG2 = Game.GetGameSettingString("sNoFastTravelOverencumbered") as string
	libs.MuteOverEncumberedMSG()
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	Game.SetGameSettingString("sOverEncumbered", savedMSG1)
	Game.SetGameSettingString("sNoFastTravelOverencumbered", savedMSG2)
EndEvent