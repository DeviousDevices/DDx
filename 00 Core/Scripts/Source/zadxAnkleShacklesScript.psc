Scriptname zadxAnkleShacklesScript extends zadRestraintScript  

Function OnEquippedPre(actor akActor, bool silent=false)
	string msg = ""
	if akActor == libs.PlayerRef						
		msg = "You snap the heavy metal cuffs around your ankles and press the lock shut."		
	Else
		msg = "You snap the shackles around "+GetMessageName(akActor)+" ankles and lock them shut."
	EndIf
	if !silent
		libs.NotifyActor(msg, akActor, true)
	EndIf	
	Parent.OnEquippedPre(akActor, silent)
EndFunction
