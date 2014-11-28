Scriptname zadBlockingBlindfoldScript extends zadRestraintScript

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		libs.NotifyActor("You slip the blindfold around "+GetMessageName(akActor)+" head, and it locks in place with a soft click.", akActor, true)
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction

Function OnEquippedPost(actor akActor)
	libs.Log("RestraintScript OnEquippedPost Blindfold")
EndFunction

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if akActor.WornHasKeyword(zad_deviousHood)
		libs.NotifyPlayer(GetMessageName(akActor) + " cannot equip this device due to the hood already in place.")
		return 2
	Endif
	if akActor.WornHasKeyword(libs.zad_DeviousBlindfold)
		libs.NotifyPlayer(GetMessageName(akActor) + " cannot equip this device due to the blindfold already in place.")
		return 2
	Endif
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Blindfold).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousBlindfold)
			MultipleItemFailMessage("Blindfold")
			return 2
		Endif
	Endif
	return 0
EndFunction

Keyword Property zad_DeviousHood Auto