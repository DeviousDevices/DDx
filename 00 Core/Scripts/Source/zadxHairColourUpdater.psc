Scriptname zadxHairColourUpdater extends activemagiceffect  

;This script re-applies player's current hair colour on equip, also updating all items that inherit it. 

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Utility.Wait(0.1)
	Game.UpdateHairColor()
endEvent