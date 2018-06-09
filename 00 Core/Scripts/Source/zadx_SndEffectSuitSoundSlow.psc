Scriptname zadx_SndEffectSuitSoundSlow extends ActiveMagicEffect
{attached to an enchantment which uses the IsMoving condition. when the wearer
is in motion it will make squeaky noises.}

Sound Property zadx_SndSoundSuitSlow Auto

;; Original Script and Idea: Milk Slave Experience Mod by darkconsole @ LoversLab
;; Butchered by ElDuderino to make a rubber suit squeaky instead of the original cowbell ring
;; Additional ideas and help from darkconsole -- thank you very much!
;; Script used with kind permission from the original author.

Event OnEffectStart(Actor who, Actor caster)
	self.OnUpdate()
	Return
EndEvent

Event OnUpdate()

	If(self == None)
		;; not sure of the edge cages that cause this. maybe has something
		;; to do with crossing load boundaries. also can be caused by
		;; removing the collar before the next ding.
		Return
	EndIf

	Actor who = self.GetTargetActor()

	if(who == None)
		;; i don't think this was a factor but i added it anyway. im pretty
		;; sure it is only the self causing issues.
		Return
	EndIf

	;; default walking sound pace.
	Float min = 0.75
	Float max = 1.6

	If(who.IsSneaking())
		;; you are a lot quieter while sneaking, with a chance to be completely
		;; silent based on your stealth skill.
		min = 1.0
		max = 2.5
		If((Utility.RandomFloat(15.0,100.0) * 0.95) < who.GetActorValue("Sneak"))
			;; congrats, your sneak skill saved you from making noise.
			self.RegisterForSingleUpdate(Utility.RandomFloat(min,max))
			Return
		EndIf
		;; right after sneaking you will still get this time delay before the
		;; next sound. in the event it chooses max time, consider this not a
		;; bug of the function but rather a feature - after sneaking you get
		;; a few steps in gracefully before you go all out being not-sneaky.
	EndIf
	
	zadx_SndSoundSuitSlow.Play(who)
	self.RegisterForSingleUpdate(Utility.RandomFloat(min,max))
	Return

EndEvent

