Scriptname zadx_BondageMittensEffectScript extends activemagiceffect  

zadlibs Property libs  Auto  

Armor Property zad_DeviceHider Auto

bool function hasAnyWeaponEquipped(actor a)
	if !a.GetEquippedWeapon(true) && !a.GetEquippedWeapon(false) && !a.getEquippedSpell(1) && !a.getEquippedSpell(0) 
		return false
	endif
	return true
EndFunction

function stripweapons(actor a, bool unequiponly = true)		
	int i = 2	
	Spell spl
	Weapon weap
	Armor sh
	While i > 0
		i -= 1
		if i == 0
			Utility.Wait(1.0) 
		EndIf	
		spl = a.getEquippedSpell(1)
		if spl
			a.unequipSpell(spl, 1)			
		endIf			
		weap = a.GetEquippedWeapon(true)
		if weap 
			a.unequipItem(weap, false, true)									
		endIf			
		sh = a.GetEquippedShield()
		if sh 
			a.unequipItem(sh, false, true)									
		endIf				
		spl = a.getEquippedSpell(0)
		if spl 
			a.unequipSpell(spl, 0)			
		endIf
		weap = a.GetEquippedWeapon(false)
		if weap 			
			a.unequipItem(weap, false, true)									
		endIf		
	EndWhile
endfunction

bool Function isDeviousDevice(Form device)
	if device.HasKeyword(libs.zad_InventoryDevice) || device.HasKeyword(libs.zad_Lockable) 
		return true
	endif
	return false
EndFunction

bool Function isValidItem(Form item)	
	; the device hider is not tagged with a DD keyword, so we need to explicitly rule it out.
	If item.GetType() == 41 || (item.GetType() == 26 && !isDeviousDevice(Item) && item != zad_DeviceHider) || item.GetType() == 45
		return true
	EndIf
	return false
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	if akTarget != libs.playerRef
		return
	EndIf
	while hasAnyWeaponEquipped(akTarget)
		stripweapons(akTarget)
	EndWhile	
EndEvent

Event OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
	if GetTargetActor() != libs.playerRef
		return
	Endif
	If akBaseObject.GetType() == 22 || akBaseObject.GetType() == 41 || ((akBaseObject.GetType() == 26 && !isDeviousDevice(akBaseObject) && akBaseObject != zad_DeviceHider))	
		If UI.IsMenuOpen("InventoryMenu")
			libs.notify("You can't equip this while locked in bondage mittens!")	
		Endif		
		while hasAnyWeaponEquipped(libs.playerRef)
			stripweapons(libs.playerRef)
		EndWhile				
	Endif
EndEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	If !libs.Config.mittensDropToggle || !akBaseItem || GetTargetActor() != libs.playerRef
		return
	Endif	
	If UI.IsMenuOpen("BarterMenu") || !isValidItem(akBaseItem)
		return
	Endif
	If Utility.RandomFloat(0.0, 99.9) < 80.0 ;&& !akBaseItem.GetType() == 45 ; key
		libs.notify("Locked in bondage mittens, you cannot hold on to the " + akBaseItem.GetName())				
		GetTargetActor().DropObject(akBaseItem, aiItemCount)
	Else
		libs.notify("Despite wearing bondage mittens, you manage to pick up the " + akBaseItem.GetName())		
	Endif
EndEvent