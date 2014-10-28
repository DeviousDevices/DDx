ScriptName zadSlaveBootsUnlockedScript extends zadSlaveBootsScript

Function OnEquippedPre(actor akActor, bool silent=false)
	if !silent
		libs.NotifyActor("You place the "+deviceName+" onto "+GetMessageName(akActor)+" feet, and they close with a soft click.", akActor, true)
	EndIf
	Parent.OnEquippedPre(akActor, silent=true)
EndFunction


Function DeviceMenu(Int msgChoice = 0)
        msgChoice = zad_DeviceMsg.Show() ; display menu
	if msgChoice == 0 ; Equip Device voluntarily
		DeviceMenuEquip()
	elseif msgChoice == 1	; Remove device, does not require key.
		RemoveDevice(libs.PlayerRef)
	endif
	DeviceMenuExt(msgChoice)
	SyncInventory()
EndFunction
