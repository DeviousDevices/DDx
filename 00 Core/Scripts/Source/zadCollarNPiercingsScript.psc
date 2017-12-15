Scriptname zadCollarNPiercingsScript extends zadRestraintScript  

Keyword Property zad_DeviousCollar Auto
Keyword Property zad_DeviousPiercingsNipple Auto
Keyword Property zad_BraNoBlockPiercings Auto

string strFailEquip =  "The bra you are wearing prevents you from locking on the nipple chain."

Function OnEquippedPre(actor akActor, bool silent=false)
	if !akActor.HasPerk(libs.PiercedNipples)
		akActor.AddSpell(libs.PiercedNipplesSpell, true)
	Endif
	if !silent
		libs.NotifyActor("You carefully slip the piercings into "+GetMessageName(akActor)+" nipples. A quiet 'Click' is heard as the band clicks together, now seemingly seamless. ", akActor, true)
	EndIf
	Parent.OnEquippedPre(akActor, silent)
EndFunction


int Function OnEquippedFilter(actor akActor, bool silent=false)
	return EquipDeviceFilter(akActor, silent)
EndFunction

int Function EquipDeviceFilter(actor akActor = none, bool silent=false)
	if akActor == none
		akActor == libs.PlayerRef
	EndIf
	if ! akActor.IsEquipped(deviceRendered)
		if akActor!=libs.PlayerRef && ShouldEquipSilently(akActor)
			libs.Log("Avoiding FTM duplication bug (Nipple Chain + Collar).")
			return 0
		EndIf
		if akActor.WornHasKeyword(zad_DeviousCollar)
			MultipleItemFailMessage("Collar")
			return 2
		elseif akActor.WornHasKeyword(zad_DeviousPiercingsNipple)
			MultipleItemFailMessage("Nipple Piercings")
			return 2
		Endif
	Endif
	return 0
EndFunction

Function OnEquippedPost(actor akActor)
	libs.Log("RestraintScript OnEquippedPost Full")
EndFunction

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice==0 ; put them in
		if !libs.playerRef.WornhasKeyword(libs.zad_DeviousBra) || libs.playerRef.WornhasKeyword(libs.zad_BraNoBlockPiercings)
			Debug.Notification("You choose to lock the nipple chain on.")
			libs.EquipDevice(libs.PlayerRef, deviceInventory, deviceRendered, zad_DeviousDevice)
		Else
			Debug.MessageBox(strFailEquip)
		Endif			
	elseif msgChoice==1 ; Unlock
		if !libs.playerRef.WornhasKeyword(libs.zad_DeviousBra) || libs.playerRef.WornhasKeyword(libs.zad_BraNoBlockPiercings)
			DeviceMenuRemoveWithKey()
		Else
			NoKeyFailMessage(libs.playerRef)
		EndIf
	elseif msgChoice== 2; Force them out
		if !libs.playerRef.WornhasKeyword(libs.zad_DeviousBra) || libs.playerRef.WornhasKeyword(libs.zad_BraNoBlockPiercings)
			DeviceMenuRemoveWithoutKey()
		Else
			NoKeyFailMessage(libs.PlayerRef)
		EndIf
	Endif
	DeviceMenuExt(msgChoice)
	SyncInventory()
EndFunction

Function NoKeyFailMessage(Actor akActor)
	if akActor == libs.PlayerRef
		libs.NotifyPlayer("Try as you might, the bra you are wearing prevents you from removing the nipple chain.", true)
	Else
		libs.NotifyNPC("The bra that "+akActor.GetLeveledActorBase().GetName() + " is wearing is securely locking the nipple chain in place. You must remove it prior to removing them.", true)
	EndIf
EndFunction
