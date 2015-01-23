Scriptname zadBlockingHarnessScript extends zadBodyHarnessScript

int Function OnEquippedFilter(actor akActor, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if akActor.WornHasKeyword(zad_deviousSuit)
		libs.NotifyPlayer(GetMessageName(akActor) + " cannot equip this device due to the suit already in place.")
		return 2
	Endif
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Harness + Collar).")
			return 0
		EndIf
		if akActor.WornHasKeyword(libs.zad_DeviousCollar)
			MultipleItemFailMessage("Collar")
			return 2
		Endif
		if akActor.WornHasKeyword(libs.zad_DeviousCorset)
			MultipleItemFailMessage("Corset")
			return 2
		Endif
	Endif
	return 0
EndFunction

Keyword Property zad_DeviousSuit Auto
