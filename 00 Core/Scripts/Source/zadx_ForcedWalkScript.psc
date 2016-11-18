Scriptname zadx_ForcedWalkScript extends activemagiceffect  

zadLibs Property Libs Auto

string savedMSG1
string savedMSG2
bool savedINIDampen

Event OnEffectStart(Actor akTarget, Actor akCaster)
	savedMSG1 = Game.GetGameSettingString("sOverEncumbered") as string
	savedMSG2 = Game.GetGameSettingString("sNoFastTravelOverencumbered") as string
	libs.MuteOverEncumberedMSG()
;	savedINIDampen = Utility.GetINIBool("bDampenPlayerControls:Controls")
;	Utility.SetINIBool("bDampenPlayerControls:Controls", false)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
;	Utility.SetINIBool("bDampenPlayerControls:Controls", savedINIDampen)
	Game.SetGameSettingString("sOverEncumbered", savedMSG1)
	Game.SetGameSettingString("sNoFastTravelOverencumbered", savedMSG2)
EndEvent