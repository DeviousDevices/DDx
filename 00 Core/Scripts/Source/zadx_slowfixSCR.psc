Scriptname zadx_slowfixSCR extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
;This pings skyrim to make it notice player's speed has changed!
	akTarget.DamageAv("CarryWeight", 0.02)
	akTarget.RestoreAv("CarryWeight", 0.02)
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
;This pings skyrim to make it notice player's speed has changed!
	akTarget.DamageAv("CarryWeight", 0.02)
	akTarget.RestoreAv("CarryWeight", 0.02)
EndEvent