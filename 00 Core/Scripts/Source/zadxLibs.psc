Scriptname zadxLibs extends Quest

zadLibs Property libs Auto
float Property currentVersion = 0.0 Auto hidden

float function GetVersion()
    return 1.12
EndFunction

Function Maintenance()
	if currentVersion != GetVersion()
		Log("Updating from " + currentVersion + " to " + GetVersion())
		RegisterDevices()	
		currentVersion = GetVersion()
	endIf
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
Armor Property collarPostureEbonite Auto
Armor Property collarPostureEboniteRendered Auto

; White Ebonite
Armor Property cuffsWTEboniteArms Auto
Armor Property cuffsWTEboniteArmsRendered Auto
Armor Property cuffsWTEboniteLegs Auto
Armor Property cuffsWTEboniteLegsRendered Auto
Armor Property cuffsWTEboniteCollar Auto
Armor Property cuffsWTEboniteCollarRendered Auto
Armor Property wtEboniteArmbinder Auto
Armor Property wtEboniteArmbinderRendered Auto
Armor Property wtEboniteHarnessBody Auto 
Armor Property wtEboniteHarnessBodyRendered Auto
Armor Property wtEboniteHarnessCollar Auto
Armor Property wtEboniteHarnessCollarRendered Auto
Armor Property wtEboniteBlindfold Auto
Armor Property wtEboniteBlindfoldRendered Auto
Armor Property gagWTEboniteBall Auto
Armor Property gagWTEboniteBallRendered Auto
Armor Property gagWTEboniteRing Auto
Armor Property gagWTEboniteRingRendered Auto
Armor Property gagWTEbonitePanel Auto
Armor Property gagWTEbonitePanelRendered Auto
Armor Property gagWTEboniteStrapBall Auto
Armor Property gagWTEboniteStrapBallRendered Auto
Armor Property gagWTEboniteStrapRing Auto
Armor Property gagWTEboniteStrapRingRendered Auto
Armor Property collarPostureWTEbonite Auto
Armor Property collarPostureWTEboniteRendered Auto

; White Leather
Armor Property cuffsWTLeatherArms Auto
Armor Property cuffsWTLeatherArmsRendered Auto
Armor Property cuffsWTLeatherLegs Auto
Armor Property cuffsWTLeatherLegsRendered Auto
Armor Property cuffsWTLeatherCollar Auto
Armor Property cuffsWTLeatherCollarRendered Auto
Armor Property wtLeatherArmbinder Auto
Armor Property wtLeatherArmbinderRendered Auto
Armor Property wtLeatherHarnessBody Auto 
Armor Property wtLeatherHarnessBodyRendered Auto
Armor Property wtLeatherHarnessCollar Auto
Armor Property wtLeatherHarnessCollarRendered Auto
Armor Property wtLeatherBlindfold Auto
Armor Property wtLeatherBlindfoldRendered Auto
Armor Property gagWTLeatherBall Auto
Armor Property gagWTLeatherBallRendered Auto
Armor Property gagWTLeatherRing Auto
Armor Property gagWTLeatherRingRendered Auto
Armor Property gagWTLeatherPanel Auto
Armor Property gagWTLeatherPanelRendered Auto
Armor Property gagWTLeatherStrapBall Auto
Armor Property gagWTLeatherStrapBallRendered Auto
Armor Property gagWTLeatherStrapRing Auto
Armor Property gagWTLeatherStrapRingRendered Auto
Armor Property collarPostureWTLeather Auto
Armor Property collarPostureWTLeatherRendered Auto

; Red Ebonite
Armor Property cuffsRDEboniteArms Auto
Armor Property cuffsRDEboniteArmsRendered Auto
Armor Property cuffsRDEboniteLegs Auto
Armor Property cuffsRDEboniteLegsRendered Auto
Armor Property cuffsRDEboniteCollar Auto
Armor Property cuffsRDEboniteCollarRendered Auto
Armor Property rdEboniteArmbinder Auto
Armor Property rdEboniteArmbinderRendered Auto
Armor Property rdEboniteHarnessBody Auto 
Armor Property rdEboniteHarnessBodyRendered Auto
Armor Property rdEboniteHarnessCollar Auto
Armor Property rdEboniteHarnessCollarRendered Auto
Armor Property rdEboniteBlindfold Auto
Armor Property rdEboniteBlindfoldRendered Auto
Armor Property gagRDEboniteBall Auto
Armor Property gagRDEboniteBallRendered Auto
Armor Property gagRDEboniteRing Auto
Armor Property gagRDEboniteRingRendered Auto
Armor Property gagRDEbonitePanel Auto
Armor Property gagRDEbonitePanelRendered Auto
Armor Property gagRDEboniteStrapBall Auto
Armor Property gagRDEboniteStrapBallRendered Auto
Armor Property gagRDEboniteStrapRing Auto
Armor Property gagRDEboniteStrapRingRendered Auto
Armor Property collarPostureRDEbonite Auto
Armor Property collarPostureRDEboniteRendered Auto

; Red Leather
Armor Property cuffsRDLeatherArms Auto
Armor Property cuffsRDLeatherArmsRendered Auto
Armor Property cuffsRDLeatherLegs Auto
Armor Property cuffsRDLeatherLegsRendered Auto
Armor Property cuffsRDLeatherCollar Auto
Armor Property cuffsRDLeatherCollarRendered Auto
Armor Property rdLeatherArmbinder Auto
Armor Property rdLeatherArmbinderRendered Auto
Armor Property rdLeatherHarnessBody Auto 
Armor Property rdLeatherHarnessBodyRendered Auto
Armor Property rdLeatherHarnessCollar Auto
Armor Property rdLeatherHarnessCollarRendered Auto
Armor Property rdLeatherBlindfold Auto
Armor Property rdLeatherBlindfoldRendered Auto
Armor Property gagRDLeatherBall Auto
Armor Property gagRDLeatherBallRendered Auto
Armor Property gagRDLeatherRing Auto
Armor Property gagRDLeatherRingRendered Auto
Armor Property gagRDLeatherPanel Auto
Armor Property gagRDLeatherPanelRendered Auto
Armor Property gagRDLeatherStrapBall Auto
Armor Property gagRDLeatherStrapBallRendered Auto
Armor Property gagRDLeatherStrapRing Auto
Armor Property gagRDLeatherStrapRingRendered Auto
Armor Property collarPostureRDLeather Auto
Armor Property collarPostureRDLeatherRendered Auto

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
		
	; ------- Ebonite --------	
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
	ElseIf device == collarPostureEbonite
		deviceRendered = collarPostureEboniteRendered
		deviceKeyword = libs.zad_DeviousCollar
	
	; ------- White Ebonite --------		
	ElseIf device == cuffsWTEboniteArms
		deviceRendered = cuffsWTEboniteArmsRendered
		deviceKeyword = libs.zad_DeviousArmCuffs
	ElseIf device == cuffsWTEboniteLegs
		deviceRendered = cuffsWTEboniteLegsRendered
		deviceKeyword = libs.zad_DeviousLegCuffs
	ElseIf device == cuffsWTEboniteCollar
		deviceRendered = cuffsWTEboniteCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == wtEboniteArmbinder
		deviceRendered = wtEboniteArmbinderRendered
		deviceKeyword = libs.zad_DeviousArmbinder
	ElseIf device == wtEboniteHarnessBody
		deviceRendered = wtEboniteHarnessBodyRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == wtEboniteHarnessCollar
		deviceRendered = wtEboniteHarnessCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == wtEboniteBlindfold
		deviceRendered = wtEboniteBlindfoldRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == gagWTEboniteBall
		deviceRendered = gagWTEboniteBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTEboniteRing
		deviceRendered = gagWTEboniteRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTEbonitePanel
		deviceRendered = gagWTEbonitePanelRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTEboniteStrapBall
		deviceRendered = gagWTEboniteStrapBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTEboniteStrapRing
		deviceRendered = gagWTEboniteStrapRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == collarPostureWTEbonite
		deviceRendered = collarPostureWTEboniteRendered
		deviceKeyword = libs.zad_DeviousCollar
	
	; ------- White leather --------	
	ElseIf device == cuffsWTLeatherArms
		deviceRendered = cuffsWTLeatherArmsRendered
		deviceKeyword = libs.zad_DeviousArmCuffs
	ElseIf device == cuffsWTLeatherLegs
		deviceRendered = cuffsWTLeatherLegsRendered
		deviceKeyword = libs.zad_DeviousLegCuffs
	ElseIf device == cuffsWTLeatherCollar
		deviceRendered = cuffsWTLeatherCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == wtLeatherArmbinder
		deviceRendered = wtLeatherArmbinderRendered
		deviceKeyword = libs.zad_DeviousArmbinder
	ElseIf device == wtLeatherHarnessBody
		deviceRendered = wtLeatherHarnessBodyRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == wtLeatherHarnessCollar
		deviceRendered = wtLeatherHarnessCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == wtLeatherBlindfold
		deviceRendered = wtLeatherBlindfoldRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == gagWTLeatherBall
		deviceRendered = gagWTLeatherBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTLeatherRing
		deviceRendered = gagWTLeatherRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTLeatherPanel
		deviceRendered = gagWTLeatherPanelRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTLeatherStrapBall
		deviceRendered = gagWTLeatherStrapBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagWTLeatherStrapRing
		deviceRendered = gagWTLeatherStrapRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == collarPostureWTLeather
		deviceRendered = collarPostureWTLeatherRendered
		deviceKeyword = libs.zad_DeviousCollar
		
	; ------- Red Ebonite --------		
	ElseIf device == cuffsRDEboniteArms
		deviceRendered = cuffsRDEboniteArmsRendered
		deviceKeyword = libs.zad_DeviousArmCuffs
	ElseIf device == cuffsRDEboniteLegs
		deviceRendered = cuffsRDEboniteLegsRendered
		deviceKeyword = libs.zad_DeviousLegCuffs
	ElseIf device == cuffsRDEboniteCollar
		deviceRendered = cuffsRDEboniteCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == rdEboniteArmbinder
		deviceRendered = rdEboniteArmbinderRendered
		deviceKeyword = libs.zad_DeviousArmbinder
	ElseIf device == rdEboniteHarnessBody
		deviceRendered = rdEboniteHarnessBodyRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == rdEboniteHarnessCollar
		deviceRendered = rdEboniteHarnessCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == rdEboniteBlindfold
		deviceRendered = rdEboniteBlindfoldRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == gagRDEboniteBall
		deviceRendered = gagRDEboniteBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDEboniteRing
		deviceRendered = gagRDEboniteRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDEbonitePanel
		deviceRendered = gagRDEbonitePanelRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDEboniteStrapBall
		deviceRendered = gagRDEboniteStrapBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDEboniteStrapRing
		deviceRendered = gagRDEboniteStrapRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == collarPostureRDEbonite
		deviceRendered = collarPostureRDEboniteRendered
		deviceKeyword = libs.zad_DeviousCollar
	
	; ------- Red leather --------	
	ElseIf device == cuffsRDLeatherArms
		deviceRendered = cuffsRDLeatherArmsRendered
		deviceKeyword = libs.zad_DeviousArmCuffs
	ElseIf device == cuffsRDLeatherLegs
		deviceRendered = cuffsRDLeatherLegsRendered
		deviceKeyword = libs.zad_DeviousLegCuffs
	ElseIf device == cuffsRDLeatherCollar
		deviceRendered = cuffsRDLeatherCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == rdLeatherArmbinder
		deviceRendered = rdLeatherArmbinderRendered
		deviceKeyword = libs.zad_DeviousArmbinder
	ElseIf device == rdLeatherHarnessBody
		deviceRendered = rdLeatherHarnessBodyRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == rdLeatherHarnessCollar
		deviceRendered = rdLeatherHarnessCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
	ElseIf device == rdLeatherBlindfold
		deviceRendered = rdLeatherBlindfoldRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == gagRDLeatherBall
		deviceRendered = gagRDLeatherBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDLeatherRing
		deviceRendered = gagRDLeatherRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDLeatherPanel
		deviceRendered = gagRDLeatherPanelRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDLeatherStrapBall
		deviceRendered = gagRDLeatherStrapBallRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == gagRDLeatherStrapRing
		deviceRendered = gagRDLeatherStrapRingRendered
		deviceKeyword = libs.zad_DeviousGag
	ElseIf device == collarPostureRDLeather
		deviceRendered = collarPostureRDLeatherRendered
		deviceKeyword = libs.zad_DeviousCollar
		
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

Function RegisterDevices()
	;Left the blocking items and other similar stuff out, as they behave a bit differently from other items
	
	libs.RegisterGenericDevice(bootsLocking				, "boots,blocking,metal")
	
	libs.RegisterGenericDevice(cuffsEboniteArms			, "cuffs,arms,ebonite,black")
	libs.RegisterGenericDevice(cuffsEboniteLegs			, "cuffs,legs,ebonite,black")
	libs.RegisterGenericDevice(cuffsEboniteCollar			, "collar,short,ebonite,black")
	libs.RegisterGenericDevice(eboniteArmbinder			, "armbinder,ebonite,black")
	libs.RegisterGenericDevice(eboniteHarnessBody			, "harness,full,ebonite,black")
	libs.RegisterGenericDevice(eboniteHarnessCollar		, "collar,harness,ebonite,black")
	libs.RegisterGenericDevice(eboniteBlindfold			, "blindfold,ebonite,black")
	libs.RegisterGenericDevice(gagEboniteBall				, "gag,ball,harness,ebonite,black")
	libs.RegisterGenericDevice(gagEboniteRing				, "gag,ring,harness,ebonite,black")
	libs.RegisterGenericDevice(gagEbonitePanel			, "gag,panel,harness,ebonite,black")
	libs.RegisterGenericDevice(gagEboniteStrapBall		, "gag,ball,strap,ebonite,black")
	libs.RegisterGenericDevice(gagEboniteStrapRing		, "gag,ring,strap,ebonite,black")
	libs.RegisterGenericDevice(collarPostureEbonite		, "collar,posture,ebonite,black")

	; White Ebonite
	libs.RegisterGenericDevice(cuffsWTEboniteArms			, "cuffs,arms,ebonite,white")
	libs.RegisterGenericDevice(cuffsWTEboniteLegs			, "cuffs,legs,ebonite,white")
	libs.RegisterGenericDevice(cuffsWTEboniteCollar		, "collar,short,ebonite,white")
	libs.RegisterGenericDevice(wtEboniteArmbinder			, "armbinder,ebonite,white")
	libs.RegisterGenericDevice(wtEboniteHarnessBody		, "harness,full,ebonite,white")
	libs.RegisterGenericDevice(wtEboniteHarnessCollar	, "collar,harness,ebonite,white")
	libs.RegisterGenericDevice(wtEboniteBlindfold			, "blindfold,ebonite,white")
	libs.RegisterGenericDevice(gagWTEboniteBall			, "gag,ball,harness,ebonite,white")
	libs.RegisterGenericDevice(gagWTEboniteRing			, "gag,ring,harness,ebonite,white")
	libs.RegisterGenericDevice(gagWTEbonitePanel			, "gag,panel,harness,ebonite,white")
	libs.RegisterGenericDevice(gagWTEboniteStrapBall		, "gag,ball,strap,ebonite,white")
	libs.RegisterGenericDevice(gagWTEboniteStrapRing		, "gag,ring,strap,ebonite,white")
	libs.RegisterGenericDevice(collarPostureWTEbonite	, "collar,posture,ebonite,white")

	; White Leather
	libs.RegisterGenericDevice(cuffsWTLeatherArms			, "cuffs,arms,leather,white")
	libs.RegisterGenericDevice(cuffsWTLeatherLegs			, "cuffs,legs,leather,white")
	libs.RegisterGenericDevice(cuffsWTLeatherCollar		, "collar,short,leather,white")
	libs.RegisterGenericDevice(wtLeatherArmbinder			, "armbinder,leather,white")
	libs.RegisterGenericDevice(wtLeatherHarnessBody		, "harness,full,leather,white")
	libs.RegisterGenericDevice(wtLeatherHarnessCollar	, "collar,harness,leather,white")
	libs.RegisterGenericDevice(wtLeatherBlindfold			, "blindfold,leather,white")
	libs.RegisterGenericDevice(gagWTLeatherBall			, "gag,ball,harness,leather,white")
	libs.RegisterGenericDevice(gagWTLeatherRing			, "gag,ring,harness,leather,white")
	libs.RegisterGenericDevice(gagWTLeatherPanel			, "gag,panel,harness,leather,white")
	libs.RegisterGenericDevice(gagWTLeatherStrapBall		, "gag,ball,strap,leather,white")
	libs.RegisterGenericDevice(gagWTLeatherStrapRing		, "gag,ring,strap,leather,white")
	libs.RegisterGenericDevice(collarPostureWTLeather	, "collar,posture,leather,white")
	
	; Red Ebonite
	libs.RegisterGenericDevice(cuffsRDEboniteArms			, "cuffs,arms,ebonite,red")
	libs.RegisterGenericDevice(cuffsRDEboniteLegs			, "cuffs,legs,ebonite,red")
	libs.RegisterGenericDevice(cuffsRDEboniteCollar		, "collar,short,ebonite,red")
	libs.RegisterGenericDevice(rdEboniteArmbinder			, "armbinder,ebonite,red")
	libs.RegisterGenericDevice(rdEboniteHarnessBody		, "harness,full,ebonite,red")
	libs.RegisterGenericDevice(rdEboniteHarnessCollar	, "collar,harness,ebonite,red")
	libs.RegisterGenericDevice(rdEboniteBlindfold			, "blindfold,ebonite,red")
	libs.RegisterGenericDevice(gagRDEboniteBall			, "gag,ball,harness,ebonite,red")
	libs.RegisterGenericDevice(gagRDEboniteRing			, "gag,ring,harness,ebonite,red")
	libs.RegisterGenericDevice(gagRDEbonitePanel			, "gag,panel,harness,ebonite,red")
	libs.RegisterGenericDevice(gagRDEboniteStrapBall		, "gag,ball,strap,ebonite,red")
	libs.RegisterGenericDevice(gagRDEboniteStrapRing		, "gag,ring,strap,ebonite,red")
	libs.RegisterGenericDevice(collarPostureRDEbonite	, "collar,posture,ebonite,red")

	; Red Leather
	libs.RegisterGenericDevice(cuffsRDLeatherArms			, "cuffs,arms,leather,red")
	libs.RegisterGenericDevice(cuffsRDLeatherLegs			, "cuffs,legs,leather,red")
	libs.RegisterGenericDevice(cuffsRDLeatherCollar		, "collar,short,leather,red")
	libs.RegisterGenericDevice(rdLeatherArmbinder			, "armbinder,leather,red")
	libs.RegisterGenericDevice(rdLeatherHarnessBody		, "harness,full,leather,red")
	libs.RegisterGenericDevice(rdLeatherHarnessCollar	, "collar,harness,leather,red")
	libs.RegisterGenericDevice(rdLeatherBlindfold			, "blindfold,leather,red")
	libs.RegisterGenericDevice(gagRDLeatherBall			, "gag,ball,harness,leather,red")
	libs.RegisterGenericDevice(gagRDLeatherRing			, "gag,ring,harness,leather,red")
	libs.RegisterGenericDevice(gagRDLeatherPanel			, "gag,panel,harness,leather,red")
	libs.RegisterGenericDevice(gagRDLeatherStrapBall		, "gag,ball,strap,leather,red")
	libs.RegisterGenericDevice(gagRDLeatherStrapRing		, "gag,ring,strap,leather,red")
	libs.RegisterGenericDevice(collarPostureRDLeather	, "collar,posture,leather,red")
	
	Log("Finished registering items.")

EndFunction

Function Log(String msg)
	Debug.Trace("[zadx]: " + msg)
EndFunction
