Scriptname zadx_BondageMittensScript extends zadRestraintScript   

Function DeviceMenu(Int msgChoice = 0)
    msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, with key			
		if Utility.RandomFloat(0.0, 99.9) < 20.0
			libs.Notify("With a lot of patience and a little luck you manage to insert the key into the lock and turn it. The bondage mittens fall off your hands.", messagebox = true)										
			DeviceMenuRemoveWithKey()			
		else
			if Utility.RandomFloat(0.0, 99.9) < 20.0
				libs.Notify("You try to insert the key into the lock, but it slips away and falls to the ground. You can't find it anywhere.", messagebox = true)										
				libs.playerref.RemoveItem(devicekey, 1)
			Else
				libs.Notify("You try to insert the key into the lock, but it slips away and falls to the ground.", messagebox = true)										
				libs.playerref.DropObject(devicekey, 1)
			Endif
			return
		endif	
	elseif msgChoice == 2 ; Remove device, without key
		DeviceMenuRemoveWithoutKey()
	endif
	DeviceMenuExt(msgChoice)	
	SyncInventory()
EndFunction

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You slip your hands into the bondage mittens and press the locks shut. You won't be able to use your hands while locked in them."		
	Else
		msg = "You slip "+GetMessageName(akActor)+"'s hands into the bondage mittens and press the locks shut."		
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction