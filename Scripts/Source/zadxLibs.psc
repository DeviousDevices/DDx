Scriptname zadxLibs extends Quest

zadLibs Property libs Auto

float function GetVersion()
        return 1.1
EndFunction

Armor Property blindfoldUnlocked Auto
Armor Property blindfoldBlocking Auto
Armor Property blindfoldBlockingRendered Auto
Armor Property harnessUnlocked Auto
Armor Property harnessLocking Auto ; These harnesses don't work as chastity belts
Armor Property harnessLockingRendered Auto
Armor Property harnessBlocking Auto
Armor Property harnessBlockingRendered Auto
Armor Property bootsUnlocked Auto
Armor Property bootsUnlockedRendered Auto
Armor Property bootsLocking Auto
Armor Property bootsLockingRendered Auto

; *cough* latex *cough* items
Armor Property cuffsEboniteArms Auto
Armor Property cuffsEboniteArmsRendered Auto
Armor Property cuffsEboniteLegs Auto
Armor Property cuffsEboniteLegsRendered Auto
Armor Property cuffsEboniteCollar Auto
Armor Property cuffsEboniteCollarRendered Auto
Armor Property eboniteArmbinder Auto
Armor Property eboniteArmbinderRendered Auto
Armor Property eboniteHarnessBody Auto ; "normal" version, works as a chastity belt
Armor Property eboniteHarnessBodyRendered Auto
Armor Property eboniteHarnessCollar Auto
Armor Property eboniteHarnessCollarRendered Auto
Armor Property eboniteBlindfold Auto
Armor Property eboniteBlindfoldRendered Auto
Armor Property gagEboniteBall Auto
Armor Property gagEboniteBallRendered Auto
Armor Property gagEboniteRing Auto
Armor Property gagEboniteRingRendered Auto
Armor Property gagEbonitePanel Auto
Armor Property gagEbonitePanelRendered Auto
Armor Property gagEboniteStrapBall Auto
Armor Property gagEboniteStrapBallRendered Auto
Armor Property gagEboniteStrapRing Auto
Armor Property gagEboniteStrapRingRendered Auto

; Shorthand manipulation for expansion items. Falls back to Integration ManipulateDevice() if the item is not found here.
Function ManipulateDevice(actor akActor, armor device, bool equipOrUnequip, bool skipEvents = false)
	Armor deviceRendered
	Keyword deviceKeyword
	If device == blindfoldBlocking
		deviceRendered = blindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == harnessLocking
		deviceRendered = harnessLockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == harnessBlocking
		deviceRendered = harnessBlockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == bootsUnlocked
		deviceRendered = bootsUnlockedRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == bootsLocking
		deviceRendered = bootsLockingRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == cuffsEboniteArms
		deviceRendered = cuffsEboniteArmsRendered
		deviceKeyword = libs.zad_DeviousArmCuffs
	ElseIf device == cuffsEboniteLegs
		deviceRendered = cuffsEboniteLegsRendered
		deviceKeyword = libs.zad_DeviousLegCuffs
	ElseIf device == cuffsEboniteCollar
		deviceRendered = cuffsEboniteCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == eboniteArmbinder
		deviceRendered = eboniteArmbinderRendered
		deviceKeyword = libs.zad_DeviousArmbinder
	ElseIf device == eboniteHarnessBody
		deviceRendered = eboniteHarnessBodyRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == eboniteHarnessCollar
		deviceRendered = eboniteHarnessCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == eboniteBlindfold
		deviceRendered = eboniteBlindfoldRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == gagEboniteBall
		deviceRendered = gagEboniteBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagEboniteRing
		deviceRendered = gagEboniteRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagEbonitePanel
		deviceRendered = gagEbonitePanelRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagEboniteStrapBall
		deviceRendered = gagEboniteStrapBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagEboniteStrapRing
		deviceRendered = gagEboniteStrapRingRendered
		deviceKeyword = libs.zad_DeviousGag
	Else
		libs.ManipulateDevice(akActor, device, equipOrUnequip, skipEvents)
		return
	EndIf
	If equipOrUnequip
		libs.EquipDevice(akActor, device, deviceRendered, deviceKeyword, skipEvents = skipEvents)
	else
		libs.RemoveDevice(akActor, device, deviceRendered, deviceKeyword, skipEvents = skipEvents)
	EndIf
EndFunction
