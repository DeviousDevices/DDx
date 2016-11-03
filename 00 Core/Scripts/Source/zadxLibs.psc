Scriptname zadxLibs extends Quest

zadLibs Property libs Auto

float function GetVersion()
    return 2
EndFunction

String function GetVersionString()
    return "2.0"
EndFunction


Function VersionUpdate()
	RegisterDevices()	
EndFunction

Armor Property blindfoldUnlocked Auto
Armor Property blindfoldBlocking Auto
Armor Property blindfoldBlockingRendered Auto
Armor Property harnessUnlocked Auto
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
Armor Property EbblindfoldUnlocked Auto
Armor Property EbblindfoldBlocking Auto
Armor Property EbblindfoldBlockingRendered Auto
Armor Property EbRestrictiveCorset Auto
Armor Property EbRestrictiveCorsetRendered Auto
Armor Property EbRestrictiveCollar Auto
Armor Property EbRestrictiveCollarRendered Auto
Armor Property EbRestrictiveGloves Auto
Armor Property EbRestrictiveGlovesRendered Auto
Armor Property EbRestrictiveBoots Auto
Armor Property EbRestrictiveBootsRendered Auto

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
Armor Property WTEblindfoldUnlocked Auto
Armor Property WTEblindfoldBlocking Auto
Armor Property WTEblindfoldBlockingRendered Auto
Armor Property WTErestrictiveCorset Auto
Armor Property WTErestrictiveCorsetRendered Auto
Armor Property WTErestrictiveCollar Auto
Armor Property WTErestrictiveCollarRendered Auto
Armor Property WTErestrictiveGloves Auto
Armor Property WTErestrictiveGlovesRendered Auto
Armor Property WTErestrictiveBoots Auto
Armor Property WTErestrictiveBootsRendered Auto
Armor Property wtEboniteRegularHarness Auto 
Armor Property wtEboniteRegularHarnessRendered Auto

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
Armor Property WTLblindfoldUnlocked Auto
Armor Property WTLblindfoldBlocking Auto
Armor Property WTLblindfoldBlockingRendered Auto
Armor Property WTLrestrictiveCorset Auto
Armor Property WTLrestrictiveCorsetRendered Auto
Armor Property WTLrestrictiveCollar Auto
Armor Property WTLrestrictiveCollarRendered Auto
Armor Property WTLrestrictiveGloves Auto
Armor Property WTLrestrictiveGlovesRendered Auto
Armor Property WTLrestrictiveBoots Auto
Armor Property WTLrestrictiveBootsRendered Auto
Armor Property wtLeatherRegularHarness Auto 
Armor Property wtLeatherRegularHarnessRendered Auto

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
Armor Property RDEblindfoldUnlocked Auto
Armor Property RDEblindfoldBlocking Auto
Armor Property RDEblindfoldBlockingRendered Auto
Armor Property RDErestrictiveCorset Auto
Armor Property RDErestrictiveCorsetRendered Auto
Armor Property RDErestrictiveCollar Auto
Armor Property RDErestrictiveCollarRendered Auto
Armor Property RDErestrictiveGloves Auto
Armor Property RDErestrictiveGlovesRendered Auto
Armor Property RDErestrictiveBoots Auto
Armor Property RDErestrictiveBootsRendered Auto
Armor Property rdEboniteRegularHarness Auto 
Armor Property rdEboniteRegularHarnessRendered Auto

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
Armor Property RDLblindfoldUnlocked Auto
Armor Property RDLblindfoldBlocking Auto
Armor Property RDLblindfoldBlockingRendered Auto
Armor Property RDLrestrictiveCorset Auto
Armor Property RDLrestrictiveCorsetRendered Auto
Armor Property RDLrestrictiveCollar Auto
Armor Property RDLrestrictiveCollarRendered Auto
Armor Property RDLrestrictiveGloves Auto
Armor Property RDLrestrictiveGlovesRendered Auto
Armor Property RDLrestrictiveBoots Auto
Armor Property RDLrestrictiveBootsRendered Auto
Armor Property rdLeatherRegularHarness Auto 
Armor Property rdLeatherRegularHarnessRendered Auto

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

; Heretic Resources
Armor Property zadx_HR_BridleBaseInventory Auto
Armor Property zadx_HR_BridleBaseRendered Auto
Armor Property zadx_HR_BridleHalfInventory Auto
Armor Property zadx_HR_BridleHalfRendered Auto
Armor Property zadx_HR_BridleFullInventory Auto
Armor Property zadx_HR_BridleFullRendered Auto
Armor Property zadx_HR_RustyBridleBaseInventory Auto
Armor Property zadx_HR_RustyBridleBaseRendered Auto
Armor Property zadx_HR_RustyBridleHalfInventory Auto
Armor Property zadx_HR_RustyBridleHalfRendered Auto
Armor Property zadx_HR_RustyBridleFullInventory Auto
Armor Property zadx_HR_RustyBridleFullRendered Auto
Armor Property zadx_HR_ChainHarnessArmsInventory Auto
Armor Property zadx_HR_ChainHarnessArmsRendered Auto
Armor Property zadx_HR_ChainHarnessBodyInventory Auto
Armor Property zadx_HR_ChainHarnessBodyRendered Auto
Armor Property zadx_HR_ChainHarnessBraInventory Auto
Armor Property zadx_HR_ChainHarnessBraRendered Auto
Armor Property zadx_HR_ChainHarnessBootsInventory Auto
Armor Property zadx_HR_ChainHarnessBootsRendered Auto
Armor Property zadx_HR_ChainHarnessFullInventory Auto
Armor Property zadx_HR_ChainHarnessFullRendered Auto
Armor Property zadx_HR_ChainHarnessGlovesInventory Auto
Armor Property zadx_HR_ChainHarnessGlovesRendered Auto
Armor Property zadx_HR_ChainHarnessLegsInventory Auto
Armor Property zadx_HR_ChainHarnessLegsRendered Auto
Armor Property zadx_HR_ChainHarnessNippleInventory Auto
Armor Property zadx_HR_ChainHarnessNippleRendered Auto
Armor Property zadx_HR_RustyChainHarnessArmsInventory Auto
Armor Property zadx_HR_RustyChainHarnessArmsRendered Auto
Armor Property zadx_HR_RustyChainHarnessBodyInventory Auto
Armor Property zadx_HR_RustyChainHarnessBodyRendered Auto
Armor Property zadx_HR_RustyChainHarnessBraInventory Auto
Armor Property zadx_HR_RustyChainHarnessBraRendered Auto
Armor Property zadx_HR_RustyChainHarnessBootsInventory Auto
Armor Property zadx_HR_RustyChainHarnessBootsRendered Auto
Armor Property zadx_HR_RustyChainHarnessFullInventory Auto
Armor Property zadx_HR_RustyChainHarnessFullRendered Auto
Armor Property zadx_HR_RustyChainHarnessGlovesInventory Auto
Armor Property zadx_HR_RustyChainHarnessGlovesRendered Auto
Armor Property zadx_HR_RustyChainHarnessLegsInventory Auto
Armor Property zadx_HR_RustyChainHarnessLegsRendered Auto
Armor Property zadx_HR_RustyChainHarnessNippleInventory Auto
Armor Property zadx_HR_RustyChainHarnessNippleRendered Auto
Armor Property zadx_HR_IronPearAnalBellBlackInventory Auto
Armor Property zadx_HR_IronPearAnalBellBlackRendered Auto
Armor Property zadx_HR_IronPearAnalBlackInventory Auto
Armor Property zadx_HR_IronPearAnalBlackRendered Auto
Armor Property zadx_HR_IronPearAnalChainBlackInventory Auto
Armor Property zadx_HR_IronPearAnalChainBlackRendered Auto
Armor Property zadx_HR_IronPearAnalSignBlackInventory Auto
Armor Property zadx_HR_IronPearAnalSignBlackRendered Auto
Armor Property zadx_HR_IronPearVaginalBellBlackInventory Auto
Armor Property zadx_HR_IronPearVaginalBellBlackRendered Auto
Armor Property zadx_HR_IronPearVaginalBlackInventory Auto
Armor Property zadx_HR_IronPearVaginalBlackRendered Auto
Armor Property zadx_HR_IronPearVaginalChainBlackInventory Auto
Armor Property zadx_HR_IronPearVaginalChainBlackRendered Auto
Armor Property zadx_HR_RustyIronPearAnalInventory Auto
Armor Property zadx_HR_RustyIronPearAnalRendered Auto
Armor Property zadx_HR_RustyIronPearAnalBellInventory Auto
Armor Property zadx_HR_RustyIronPearAnalBellRendered Auto
Armor Property zadx_HR_RustyIronPearAnalSignInventory Auto
Armor Property zadx_HR_RustyIronPearAnalSignRendered Auto
Armor Property zadx_HR_RustyIronPearAnalChainInventory Auto
Armor Property zadx_HR_RustyIronPearAnalChainRendered Auto
Armor Property zadx_HR_RustyIronPearVaginalInventory Auto
Armor Property zadx_HR_RustyIronPearVaginalRendered Auto
Armor Property zadx_HR_RustyIronPearVaginalBellInventory Auto
Armor Property zadx_HR_RustyIronPearVaginalBellRendered Auto
Armor Property zadx_HR_RustyIronPearVaginalChainInventory Auto
Armor Property zadx_HR_RustyIronPearVaginalChainRendered Auto
Armor Property zadx_HR_NippleClampsInventory Auto
Armor Property zadx_HR_NippleClampsRendered Auto
Armor Property zadx_HR_RustyNippleClampsInventory Auto
Armor Property zadx_HR_RustyNippleClampsRendered Auto
Armor Property zadx_HR_NipplePiercingsInventory Auto
Armor Property zadx_HR_NipplePiercingsRendered Auto
Armor Property zadx_HR_RustyNipplePiercingsInventory Auto
Armor Property zadx_HR_RustyNipplePiercingsRendered Auto
Armor Property zadx_HR_PearGagInventory Auto
Armor Property zadx_HR_PearGagRendered Auto
Armor Property zadx_HR_RustyPearGagInventory Auto
Armor Property zadx_HR_RustyPearGagRendered Auto
Armor Property zadx_HR_NippleChainCollarInventory Auto
Armor Property zadx_HR_NippleChainCollarRendered Auto
Armor Property zadx_HR_RustyNippleChainCollarInventory Auto
Armor Property zadx_HR_RustyNippleChainCollarRendered Auto
Armor Property zadx_HR_IronCollarInventory Auto
Armor Property zadx_HR_IronCollarRendered Auto
Armor Property zadx_HR_RustyIronCollarInventory Auto
Armor Property zadx_HR_RustyIronCollarRendered Auto
Armor Property zadx_HR_MaskofShameInventory Auto
Armor Property zadx_HR_MaskofShameRendered Auto
Armor Property zadx_HR_WristShacklesInventory Auto
Armor Property zadx_HR_WristShacklesRendered Auto
Armor Property zadx_HR_RustyWristShacklesInventory Auto
Armor Property zadx_HR_RustyWristShacklesRendered Auto
Armor Property zadx_HR_IronBitGagInventory Auto
Armor Property zadx_HR_IronBitGagRendered Auto
Armor Property zadx_HR_IronBitGagWoodInventory Auto
Armor Property zadx_HR_IronBitGagWoodRendered Auto
Armor Property zadx_HR_IronRingGagInventory Auto
Armor Property zadx_HR_IronRingGagRendered Auto
Armor Property zadx_HR_RustyIronBitGagInventory Auto
Armor Property zadx_HR_RustyIronBitGagRendered Auto
Armor Property zadx_HR_RustyIronBitGagWoodInventory Auto
Armor Property zadx_HR_RustyIronBitGagWoodRendered Auto
Armor Property zadx_HR_RustyIronRingGagInventory Auto
Armor Property zadx_HR_RustyIronRingGagRendered Auto
Armor Property zadx_HR_IronBalletBootsInventory Auto
Armor Property zadx_HR_IronBalletBootsRendered Auto
Armor Property zadx_HR_IronBalletBootsHeelInventory Auto
Armor Property zadx_HR_IronBalletBootsHeelRendered Auto
Armor Property zadx_HR_RustyIronBalletBootsInventory Auto
Armor Property zadx_HR_RustyIronBalletBootsRendered Auto
Armor Property zadx_HR_RustyIronBalletBootsHeelInventory Auto
Armor Property zadx_HR_RustyIronBalletBootsHeelRendered Auto

Armor Property zadx_HobbleSkirtInventory Auto
Armor Property zadx_HobbleSkirtRendered Auto
Armor Property zadx_SlaveHighHeelsInventory Auto
Armor Property zadx_SlaveHighHeelsRendered Auto

; Shorthand manipulation for expansion items. Falls back to Integration ManipulateDevice() if the item is not found here.
; Deprecated - will not add new items to this. Don't think the function is -that- useful.
Function ManipulateDevice(actor akActor, armor device, bool equipOrUnequip, bool skipEvents = false)
	Armor deviceRendered
	Keyword deviceKeyword
	If device == blindfoldBlocking
		deviceRendered = blindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold	
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
	ElseIf device == EbblindfoldBlocking
		deviceRendered = EbblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == EbRestrictiveCorset
		deviceRendered = EbRestrictiveCorsetRendered
		deviceKeyword = libs.zad_DeviousCorset
     ElseIf device == EbRestrictiveCollar
		deviceRendered = EbRestrictiveCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
     ElseIf device == EbRestrictiveGloves
		deviceRendered = EbRestrictiveGlovesRendered
		deviceKeyword = libs.zad_DeviousGloves
     ElseIf device == EbRestrictiveBoots
		deviceRendered = EbRestrictiveBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	
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
	ElseIf device == WTEblindfoldBlocking
		deviceRendered = WTEblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == WTErestrictiveCorset
		deviceRendered = WTErestrictiveCorsetRendered
		deviceKeyword = libs.zad_DeviousCorset
     ElseIf device == WTErestrictiveCollar
		deviceRendered = WTErestrictiveCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
     ElseIf device == WTErestrictiveGloves
		deviceRendered = WTErestrictiveGlovesRendered
		deviceKeyword = libs.zad_DeviousGloves
     ElseIf device == WTErestrictiveBoots
		deviceRendered = WTErestrictiveBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
	
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
	ElseIf device == WTLblindfoldBlocking
		deviceRendered = WTLblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
	ElseIf device == WTLrestrictiveCorset
		deviceRendered = WTLrestrictiveCorsetRendered
		deviceKeyword = libs.zad_DeviousCorset
     ElseIf device == WTLrestrictiveCollar
		deviceRendered = WTLrestrictiveCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
     ElseIf device == WTLrestrictiveGloves
		deviceRendered = WTLrestrictiveGlovesRendered
		deviceKeyword = libs.zad_DeviousGloves
     ElseIf device == WTLrestrictiveBoots
		deviceRendered = WTLrestrictiveBootsRendered
		deviceKeyword = libs.zad_DeviousBoots

		
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
	ElseIf device == RDEblindfoldBlocking
		deviceRendered = RDEblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
     ElseIf device == RDErestrictiveCorset
		deviceRendered = RDErestrictiveCorsetRendered
		deviceKeyword = libs.zad_DeviousCorset
     ElseIf device == RDErestrictiveCollar
		deviceRendered = RDErestrictiveCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
     ElseIf device == RDErestrictiveGloves
		deviceRendered = RDErestrictiveGlovesRendered
		deviceKeyword = libs.zad_DeviousGloves
     ElseIf device == RDErestrictiveBoots
		deviceRendered = RDErestrictiveBootsRendered
		deviceKeyword = libs.zad_DeviousBoots

	
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
	ElseIf device == RDLblindfoldBlocking
		deviceRendered = RDLblindfoldBlockingRendered
		deviceKeyword = libs.zad_DeviousBlindfold
     ElseIf device == RDLrestrictiveCorset
		deviceRendered = RDLrestrictiveCorsetRendered
		deviceKeyword = libs.zad_DeviousCorset
     ElseIf device == RDLrestrictiveCollar
		deviceRendered = RDLrestrictiveCollarRendered
		deviceKeyword = libs.zad_DeviousCollar
     ElseIf device == RDLrestrictiveGloves
		deviceRendered = RDLrestrictiveGlovesRendered
		deviceKeyword = libs.zad_DeviousGloves
     ElseIf device == RDLrestrictiveBoots
		deviceRendered = RDLrestrictiveBootsRendered
		deviceKeyword = libs.zad_DeviousBoots
		
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
	
	libs.RegisterGenericDevice(bootsLocking				, "boots,ring,blocking,metal,ddx")	
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
    libs.RegisterGenericDevice(restrictiveBoots				, "boots,ballet,blocking,restrictive,leather,black,ddx")	
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
	libs.RegisterGenericDevice(EbRestrictiveCorset				, "restrictive,corset,ebonite,black,ddx")
	libs.RegisterGenericDevice(EbRestrictiveCollar				, "collar,restrictive,metal,ebonite,black,ddx")
	libs.RegisterGenericDevice(EbRestrictiveGloves				, "restrictive,gloves,ebonite,black,ddx")
	libs.RegisterGenericDevice(EbRestrictiveBoots				, "boots,ballet,blocking,restrictive,ebonite,black,ddx")

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
	libs.RegisterGenericDevice(WTErestrictiveCorset				, "restrictive,corset,ebonite,white,ddx")
	libs.RegisterGenericDevice(WTErestrictiveCollar				, "collar,restrictive,metal,ebonite,white,ddx")
	libs.RegisterGenericDevice(WTErestrictiveGloves				, "restrictive,gloves,ebonite,white,ddx")
	libs.RegisterGenericDevice(WTErestrictiveBoots				, "boots,ballet,blocking,restrictive,ebonite,white,ddx")

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
 	libs.RegisterGenericDevice(WTLrestrictiveCorset				, "restrictive,corset,leather,white,ddx")
	libs.RegisterGenericDevice(WTLrestrictiveCollar				, "collar,restrictive,metal,leather,white,ddx")
	libs.RegisterGenericDevice(WTLrestrictiveGloves				, "restrictive,gloves,leather,white,ddx")	
	libs.RegisterGenericDevice(WTLrestrictiveBoots				, "boots,ballet,blocking,restrictive,leather,white,ddx")
	
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
	libs.RegisterGenericDevice(RDErestrictiveCorset				, "restrictive,corset,ebonite,red,ddx")
	libs.RegisterGenericDevice(RDErestrictiveCollar				, "collar,restrictive,metal,ebonite,red,ddx")
	libs.RegisterGenericDevice(RDErestrictiveGloves				, "restrictive,gloves,ebonite,red,ddx")	
	libs.RegisterGenericDevice(RDErestrictiveBoots				, "boots,ballet,blocking,restrictive,ebonite,red,ddx")

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
 	libs.RegisterGenericDevice(RDLrestrictiveCorset				, "restrictive,corset,leather,red,ddx")
	libs.RegisterGenericDevice(RDLrestrictiveCollar				, "collar,restrictive,metal,leather,red,ddx")
	libs.RegisterGenericDevice(RDLrestrictiveGloves				, "restrictive,gloves,leather,red,ddx")	
	libs.RegisterGenericDevice(RDLrestrictiveBoots				, "boots,ballet,blocking,restrictive,leather,red,ddx")
	
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

