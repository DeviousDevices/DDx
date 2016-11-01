Scriptname zadx_HobbleSkirtScript extends zadequipscript  

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You step in the dress and pull it up on you. The extremely tight leather skirt forces your legs together and will not allow you to take any but the smallest steps. The dress will also leave nothing about your curves to imagination. You feel both restrained and sexy as you close the zipper and click the lock shut. You are now stuck in the tightest dress you have ever worn."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction