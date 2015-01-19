Scriptname zadxLibs extends Quest

zadLibs Property libs Auto

float function GetVersion()
    return 1.2
EndFunction

Function VersionUpdate()
	RegisterDevices()	
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
Armor Property restrictiveBoots Auto
Armor Property restrictiveBootsRendered Auto
Armor Property PlugsGreaterSoulVag Auto
Armor Property PlugsGreaterSoulVagRendered Auto
Armor Property PlugsGreaterSoulAnl Auto
Armor Property PlugsGreaterSoulAnlRendered Auto
Armor Property PlugsGrandSoulVag Auto
Armor Property PlugsGrandSoulVagRendered Auto
Armor Property PlugsGrandSoulAnl Auto
Armor Property PlugsGrandSoulAnlRendered Auto
Armor Property PlugsBlackSoulVag Auto
Armor Property PlugsBlackSoulVagRendered Auto
Armor Property PlugsBlackSoulAnl Auto
Armor Property PlugsBlackSoulAnlRendered Auto
Armor Property PlugsFilledSoulVag Auto
Armor Property PlugsFilledSoulVagRendered Auto
Armor Property PlugsFilledSoulAnl Auto
Armor Property PlugsFilledSoulAnlRendered Auto
Armor Property PlugsShockSoulVag Auto
Armor Property PlugsShockSoulVagRendered Auto
Armor Property PlugsShockSoulAnl Auto
Armor Property PlugsShockSoulAnlRendered Auto
Armor Property PiercingsCommonSoulVag Auto
Armor Property PiercingsCommonSoulVagRendered Auto
Armor Property PiercingsCommonSoulNips Auto
Armor Property PiercingsCommonSoulNipsRendered Auto
Armor Property PiercingsShockSoulVag Auto
Armor Property PiercingsShockSoulVagRendered Auto
Armor Property PiercingsShockSoulNips Auto
Armor Property PiercingsShockSoulNipsRendered Auto


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
Armor Property EbharnessUnlocked Auto
Armor Property EbharnessLocking Auto
Armor Property EbharnessLockingRendered Auto
Armor Property EbharnessBlocking Auto
Armor Property EbharnessBlockingRendered Auto
Armor Property EbblindfoldUnlocked Auto
Armor Property EbblindfoldBlocking Auto
Armor Property EbblindfoldBlockingRendered Auto

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
Armor Property WTEharnessUnlocked Auto
Armor Property WTEharnessLocking Auto
Armor Property WTEharnessLockingRendered Auto
Armor Property WTEharnessBlocking Auto
Armor Property WTEharnessBlockingRendered Auto
Armor Property WTEblindfoldUnlocked Auto
Armor Property WTEblindfoldBlocking Auto
Armor Property WTEblindfoldBlockingRendered Auto

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
Armor Property WTLharnessUnlocked Auto
Armor Property WTLharnessLocking Auto
Armor Property WTLharnessLockingRendered Auto
Armor Property WTLharnessBlocking Auto
Armor Property WTLharnessBlockingRendered Auto
Armor Property WTLblindfoldUnlocked Auto
Armor Property WTLblindfoldBlocking Auto
Armor Property WTLblindfoldBlockingRendered Auto

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
Armor Property RDEharnessUnlocked Auto
Armor Property RDEharnessLocking Auto
Armor Property RDEharnessLockingRendered Auto
Armor Property RDEharnessBlocking Auto
Armor Property RDEharnessBlockingRendered Auto
Armor Property RDEblindfoldUnlocked Auto
Armor Property RDEblindfoldBlocking Auto
Armor Property RDEblindfoldBlockingRendered Auto

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
Armor Property RDLharnessUnlocked Auto
Armor Property RDLharnessLocking Auto
Armor Property RDLharnessLockingRendered Auto
Armor Property RDLharnessBlocking Auto
Armor Property RDLharnessBlockingRendered Auto
Armor Property RDLblindfoldUnlocked Auto
Armor Property RDLblindfoldBlocking Auto
Armor Property RDLblindfoldBlockingRendered Auto

; Pony boots
Armor Property PonyBoots Auto
Armor Property PonyBootsRendered Auto
Armor Property EbonitePonyBoots Auto
Armor Property EbonitePonyBootsRendered Auto
Armor Property RDLeatherPonyBoots Auto
Armor Property RDLeatherPonyBootsRendered Auto
Armor Property WTLeatherPonyBoots Auto
Armor Property WTLeatherPonyBootsRendered Auto
Armor Property RDEbonitePonyBoots Auto
Armor Property RDEbonitePonyBootsRendered Auto
Armor Property WTEbonitePonyBoots Auto
Armor Property WTEbonitePonyBootsRendered Auto

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
	ElseIf device == restrictiveBoots
		deviceRendered = restrictiveBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == PlugsGreaterSoulVag
		deviceRendered = PlugsGreaterSoulVagRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsGreaterSoulAnl
		deviceRendered = PlugsGreaterSoulAnlRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsGrandSoulVag
		deviceRendered = PlugsGrandSoulVagRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsGrandSoulAnl
		deviceRendered = PlugsGrandSoulAnlRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsBlackSoulVag
		deviceRendered = PlugsBlackSoulVagRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsBlackSoulAnl
		deviceRendered = PlugsBlackSoulAnlRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsFilledSoulVag
		deviceRendered = PlugsFilledSoulVagRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsFilledSoulAnl
		deviceRendered = PlugsFilledSoulAnlRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsShockSoulVag
		deviceRendered = PlugsShockSoulVagRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PlugsShockSoulAnl
		deviceRendered = PlugsShockSoulAnlRendered
		deviceKeyword = libs.zad_DeviousPlug
	ElseIf device == PiercingsCommonSoulVag
		deviceRendered = PiercingsCommonSoulVagRendered
		deviceKeyword = libs.zad_DeviousPiercingsVaginal
	ElseIf device == PiercingsCommonSoulNips
		deviceRendered = PiercingsCommonSoulNipsRendered
		deviceKeyword = libs.zad_DeviousPiercingsNipple
	ElseIf device == PiercingsShockSoulVag
		deviceRendered = PiercingsShockSoulVagRendered
		deviceKeyword = libs.zad_DeviousPiercingsVaginal
	ElseIf device == PiercingsShockSoulNips
		deviceRendered = PiercingsShockSoulNipsRendered
		deviceKeyword = libs.zad_DeviousPiercingsNipple
		
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
	ElseIf device == EbharnessLocking
		deviceRendered = EbharnessLockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == EbharnessBlocking
		deviceRendered = EbharnessBlockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == EbblindfoldBlocking
		deviceRendered = EbblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	
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
	ElseIf device == WTEharnessLocking
		deviceRendered = WTEharnessLockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == WTEharnessBlocking
		deviceRendered = WTEharnessBlockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == WTEblindfoldBlocking
		deviceRendered = WTEblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	
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
	ElseIf device == WTLharnessLocking
		deviceRendered = WTLharnessLockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == WTLharnessBlocking
		deviceRendered = WTLharnessBlockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == WTLblindfoldBlocking
		deviceRendered = WTLblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
		
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
	ElseIf device == RDEharnessLocking
		deviceRendered = RDEharnessLockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == RDEharnessBlocking
		deviceRendered = RDEharnessBlockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == RDEblindfoldBlocking
		deviceRendered = RDEblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	
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
	ElseIf device == RDLharnessLocking
		deviceRendered = RDLharnessLockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == RDLharnessBlocking
		deviceRendered = RDLharnessBlockingRendered
		deviceKeyword = libs.zad_DeviousHarness
	ElseIf device == RDLblindfoldBlocking
		deviceRendered = RDLblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
		
	; -------- Pony boots --------
	ElseIf device == PonyBoots
		deviceRendered = PonyBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == EbonitePonyBoots
		deviceRendered = EbonitePonyBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == RDEbonitePonyBoots
		deviceRendered = RDEbonitePonyBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == WTEbonitePonyBoots
		deviceRendered = WTEbonitePonyBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == RDLeatherPonyBoots
		deviceRendered = RDLeatherPonyBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	ElseIf device == WTLeatherPonyBoots
		deviceRendered = WTLeatherPonyBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
		
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
	;Left the unlocked items out, since they are not so much devices per se
	
	libs.RegisterGenericDevice(harnessLocking				, "torso,leather,black,ddx")
	libs.RegisterGenericDevice(harnessBlocking				, "torso,blocking,leather,black,ddx")
	libs.RegisterGenericDevice(blindfoldBlocking				, "blindfold,blocking,leather,black,ddx")
	libs.RegisterGenericDevice(bootsLocking				, "boots,blocking,metal,ddx")
	libs.RegisterGenericDevice(cuffsEboniteArms			, "cuffs,arms,ebonite,black,ddx")
	libs.RegisterGenericDevice(cuffsEboniteLegs			, "cuffs,legs,ebonite,black,ddx")
	libs.RegisterGenericDevice(cuffsEboniteCollar			, "collar,short,ebonite,black,ddx")
	libs.RegisterGenericDevice(eboniteArmbinder			, "armbinder,ebonite,black,ddx")
	libs.RegisterGenericDevice(eboniteHarnessBody			, "harness,full,ebonite,black,ddx")
	libs.RegisterGenericDevice(eboniteHarnessCollar		, "collar,harness,ebonite,black,ddx")
	libs.RegisterGenericDevice(eboniteBlindfold			, "blindfold,ebonite,black,ddx")
	libs.RegisterGenericDevice(gagEboniteBall				, "gag,ball,harness,ebonite,black,ddx")
	libs.RegisterGenericDevice(gagEboniteRing				, "gag,ring,harness,ebonite,black,ddx")
	libs.RegisterGenericDevice(gagEbonitePanel			, "gag,panel,harness,ebonite,black,ddx")
	libs.RegisterGenericDevice(gagEboniteStrapBall		, "gag,ball,strap,ebonite,black,ddx")
	libs.RegisterGenericDevice(gagEboniteStrapRing		, "gag,ring,strap,ebonite,black,ddx")
	libs.RegisterGenericDevice(collarPostureEbonite		, "collar,posture,ebonite,black,ddx")
     libs.RegisterGenericDevice(EbharnessLocking				, "torso,ebonite,black,ddx")
	libs.RegisterGenericDevice(EbharnessBlocking				, "torso,blocking,ebonite,black,ddx")
	libs.RegisterGenericDevice(EbblindfoldBlocking				, "blindfold,blocking,ebonite,black,ddx")
	libs.RegisterGenericDevice(restrictiveBoots				, "boots,blocking,restrictive,leather,black,ddx")
	libs.RegisterGenericDevice(PlugsGreaterSoulVag       , "plug,vaginal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsGreaterSoulAnl		, "plug,anal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsGrandSoulVag		, "plug,vaginal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsGrandSoulAnl		, "plug,anal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsBlackSoulVag		, "plug,vaginal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsBlackSoulAnl		, "plug,anal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsFilledSoulVag		, "plug,vaginal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsFilledSoulAnl		, "plug,anal,soulgem,magic,ddx")
	libs.RegisterGenericDevice(PlugsShockSoulVag		, "plug,vaginal,soulgem,magic,shock,ddx")
	libs.RegisterGenericDevice(PlugsShockSoulAnl		, "plug,anal,soulgem,magic,shock,ddx")
	libs.RegisterGenericDevice(PiercingsCommonSoulVag	, "piercing,vaginal,soulgem,ddx")
	libs.RegisterGenericDevice(PiercingsCommonSoulNips	, "piercing,nipple,soulgem,ddx")
	libs.RegisterGenericDevice(PiercingsShockSoulVag	, "piercing,vaginal,soulgem,shock,ddx")
	libs.RegisterGenericDevice(PiercingsShockSoulNips	, "piercing,nipple,soulgem,shock,ddx")


	; White Ebonite
	libs.RegisterGenericDevice(cuffsWTEboniteArms			, "cuffs,arms,ebonite,white,ddx")
	libs.RegisterGenericDevice(cuffsWTEboniteLegs			, "cuffs,legs,ebonite,white,ddx")
	libs.RegisterGenericDevice(cuffsWTEboniteCollar		, "collar,short,ebonite,white,ddx")
	libs.RegisterGenericDevice(wtEboniteArmbinder			, "armbinder,ebonite,white,ddx")
	libs.RegisterGenericDevice(wtEboniteHarnessBody		, "harness,full,ebonite,white,ddx")
	libs.RegisterGenericDevice(wtEboniteHarnessCollar	, "collar,harness,ebonite,white,ddx")
	libs.RegisterGenericDevice(wtEboniteBlindfold			, "blindfold,ebonite,white,ddx")
	libs.RegisterGenericDevice(gagWTEboniteBall			, "gag,ball,harness,ebonite,white,ddx")
	libs.RegisterGenericDevice(gagWTEboniteRing			, "gag,ring,harness,ebonite,white,ddx")
	libs.RegisterGenericDevice(gagWTEbonitePanel			, "gag,panel,harness,ebonite,white,ddx")
	libs.RegisterGenericDevice(gagWTEboniteStrapBall		, "gag,ball,strap,ebonite,white,ddx")
	libs.RegisterGenericDevice(gagWTEboniteStrapRing		, "gag,ring,strap,ebonite,white,ddx")
	libs.RegisterGenericDevice(collarPostureWTEbonite	, "collar,posture,ebonite,white,ddx")
     libs.RegisterGenericDevice(WTEharnessLocking				, "torso,ebonite,white,ddx")
	libs.RegisterGenericDevice(WTEharnessBlocking				, "torso,blocking,ebonite,white,ddx")
	libs.RegisterGenericDevice(WTEblindfoldBlocking				, "blindfold,blocking,ebonite,white,ddx")

	; White Leather
	libs.RegisterGenericDevice(cuffsWTLeatherArms			, "cuffs,arms,leather,white,ddx")
	libs.RegisterGenericDevice(cuffsWTLeatherLegs			, "cuffs,legs,leather,white,ddx")
	libs.RegisterGenericDevice(cuffsWTLeatherCollar		, "collar,short,leather,white,ddx")
	libs.RegisterGenericDevice(wtLeatherArmbinder			, "armbinder,leather,white,ddx")
	libs.RegisterGenericDevice(wtLeatherHarnessBody		, "harness,full,leather,white,ddx")
	libs.RegisterGenericDevice(wtLeatherHarnessCollar	, "collar,harness,leather,white,ddx")
	libs.RegisterGenericDevice(wtLeatherBlindfold			, "blindfold,leather,white,ddx")
	libs.RegisterGenericDevice(gagWTLeatherBall			, "gag,ball,harness,leather,white,ddx")
	libs.RegisterGenericDevice(gagWTLeatherRing			, "gag,ring,harness,leather,white,ddx")
	libs.RegisterGenericDevice(gagWTLeatherPanel			, "gag,panel,harness,leather,white,ddx")
	libs.RegisterGenericDevice(gagWTLeatherStrapBall		, "gag,ball,strap,leather,white,ddx")
	libs.RegisterGenericDevice(gagWTLeatherStrapRing		, "gag,ring,strap,leather,white,ddx")
	libs.RegisterGenericDevice(collarPostureWTLeather	, "collar,posture,leather,white,ddx")
     libs.RegisterGenericDevice(WTLharnessLocking				, "torso,leather,white,ddx")
	libs.RegisterGenericDevice(WTLharnessBlocking				, "torso,blocking,leather,white,ddx")
	libs.RegisterGenericDevice(WTLblindfoldBlocking				, "blindfold,blocking,leather,white,ddx")
	
	; Red Ebonite
	libs.RegisterGenericDevice(cuffsRDEboniteArms			, "cuffs,arms,ebonite,red,ddx")
	libs.RegisterGenericDevice(cuffsRDEboniteLegs			, "cuffs,legs,ebonite,red,ddx")
	libs.RegisterGenericDevice(cuffsRDEboniteCollar		, "collar,short,ebonite,red,ddx")
	libs.RegisterGenericDevice(rdEboniteArmbinder			, "armbinder,ebonite,red,ddx")
	libs.RegisterGenericDevice(rdEboniteHarnessBody		, "harness,full,ebonite,red,ddx")
	libs.RegisterGenericDevice(rdEboniteHarnessCollar	, "collar,harness,ebonite,red,ddx")
	libs.RegisterGenericDevice(rdEboniteBlindfold			, "blindfold,ebonite,red,ddx")
	libs.RegisterGenericDevice(gagRDEboniteBall			, "gag,ball,harness,ebonite,red,ddx")
	libs.RegisterGenericDevice(gagRDEboniteRing			, "gag,ring,harness,ebonite,red,ddx")
	libs.RegisterGenericDevice(gagRDEbonitePanel			, "gag,panel,harness,ebonite,red,ddx")
	libs.RegisterGenericDevice(gagRDEboniteStrapBall		, "gag,ball,strap,ebonite,red,ddx")
	libs.RegisterGenericDevice(gagRDEboniteStrapRing		, "gag,ring,strap,ebonite,red,ddx")
	libs.RegisterGenericDevice(collarPostureRDEbonite	, "collar,posture,ebonite,red,ddx")
     libs.RegisterGenericDevice(RDEharnessLocking				, "torso,ebonite,red,ddx")
	libs.RegisterGenericDevice(RDEharnessBlocking				, "torso,blocking,ebonite,red,ddx")
	libs.RegisterGenericDevice(RDEblindfoldBlocking				, "blindfold,blocking,ebonite,red,ddx")

	; Red Leather
	libs.RegisterGenericDevice(cuffsRDLeatherArms			, "cuffs,arms,leather,red,ddx")
	libs.RegisterGenericDevice(cuffsRDLeatherLegs			, "cuffs,legs,leather,red,ddx")
	libs.RegisterGenericDevice(cuffsRDLeatherCollar		, "collar,short,leather,red,ddx")
	libs.RegisterGenericDevice(rdLeatherArmbinder			, "armbinder,leather,red,ddx")
	libs.RegisterGenericDevice(rdLeatherHarnessBody		, "harness,full,leather,red,ddx")
	libs.RegisterGenericDevice(rdLeatherHarnessCollar	, "collar,harness,leather,red,ddx")
	libs.RegisterGenericDevice(rdLeatherBlindfold			, "blindfold,leather,red,ddx")
	libs.RegisterGenericDevice(gagRDLeatherBall			, "gag,ball,harness,leather,red,ddx")
	libs.RegisterGenericDevice(gagRDLeatherRing			, "gag,ring,harness,leather,red,ddx")
	libs.RegisterGenericDevice(gagRDLeatherPanel			, "gag,panel,harness,leather,red,ddx")
	libs.RegisterGenericDevice(gagRDLeatherStrapBall		, "gag,ball,strap,leather,red,ddx")
	libs.RegisterGenericDevice(gagRDLeatherStrapRing		, "gag,ring,strap,leather,red,ddx")
	libs.RegisterGenericDevice(collarPostureRDLeather	, "collar,posture,leather,red,ddx")
     libs.RegisterGenericDevice(RDLharnessLocking				, "torso,leather,red,ddx")
	libs.RegisterGenericDevice(RDLharnessBlocking				, "torso,blocking,leather,red,ddx")
	libs.RegisterGenericDevice(RDLblindfoldBlocking				, "blindfold,blocking,leather,red,ddx")
	
	; Pony boots
	libs.RegisterGenericDevice(PonyBoots					, "boots,blocking,leather,black,pony,ddx")
	libs.RegisterGenericDevice(EbonitePonyBoots			, "boots,blocking,ebonite,black,pony,ddx")
	libs.RegisterGenericDevice(RDEbonitePonyBoots			, "boots,blocking,ebonite,red,pony,ddx")
	libs.RegisterGenericDevice(WTEbonitePonyBoots			, "boots,blocking,ebonite,white,pony,ddx")
	libs.RegisterGenericDevice(RDLeatherPonyBoots			, "boots,blocking,leather,red,pony,ddx")
	libs.RegisterGenericDevice(WTLeatherPonyBoots			, "boots,blocking,leather,white,pony,ddx")
	
	
	Log("Finished registering items.")

EndFunction

Function Log(String msg)
	Debug.Trace("[zadx]: " + msg)
EndFunction

