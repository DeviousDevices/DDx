Scriptname zadSlaveBootsScript extends zadEquipScript  

Spell Property highHeelSpell Auto

Event OnEquipped(Actor akActor)
	if !zad_DeviousDevice
		; Fix duplicate keyword baked in to savegames
		zad_DeviousDevice = (Game.GetFormFromFile(0x00027f29, "Devious Devices - Assets.esm") as Keyword)
	EndIf
	Parent.OnEquipped(akActor)
EndEvent

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		libs.NotifyActor("You place the "+deviceName+" onto "+GetMessageName(akActor)+" feet, and they lock in place with a soft click.", akActor, true)
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction


int Function OnEquippedFilter(actor akActor, bool silent=false)
	if SKSE.GetPluginVersion("NiOverride") < 5 || NiOverride.GetScriptVersion() < 5
    		libs.NotifyPlayer("This device ("+deviceName+") requires NetImmerse Override, which you do not have installed.", true)
		return 2
	EndIf
	return 0
EndFunction


Function OnEquippedPost(actor akActor)
	libs.Log("RestraintScript OnEquippedPost Boots")
	akActor.AddSpell(highHeelSpell, false)
EndFunction
