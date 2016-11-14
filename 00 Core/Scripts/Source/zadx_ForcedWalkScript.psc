Scriptname zadx_ForcedWalkScript extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Input.tapkey(Input.GetMappedKey("Toggle Always Run"))
EndEvent