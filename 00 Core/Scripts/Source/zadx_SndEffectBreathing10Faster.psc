Scriptname zadx_SndEffectBreathing10Faster extends ActiveMagicEffect
{attached to an enchantment which uses the IsMoving condition. when the wearer
is in motion it will make breathing sounds.}

Sound Property zadx_SndSoundBreathing10Faster Auto

;; Original Script and Idea: darkconsole @ LoversLab
;; Butchered by ElDuderino to simulate breathing sounds through a gasmask
;; Used with kind permission by darkconsole. Thank you!

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

        ;Variables adjusted to audio clip length
	Float min = 2.6
	Float max = 3.0

	If(who.IsSneaking())
		;; bigger silent gaps though to simulate the tension you're in lol
		;; silent based on your stealth skill -- left that on in for fun, why not hold a breath every now and then while trying to sneak around an enemy?
		min = 3.0
		max = 3.6
		If((Utility.RandomFloat(15.0,100.0) * 0.95) < who.GetActorValue("Sneak"))
			self.RegisterForSingleUpdate(Utility.RandomFloat(min,max))
			Return
		EndIf
		;; right after sneaking you will still get this time delay before the
		;; next sound. in the event it chooses max time, consider this not a
		;; bug of the function but rather a feature - after sneaking you get
		;; a few steps in gracefully before you go all out being not-sneaky.
	EndIf

	zadx_SndSoundBreathing10Faster.Play(who)
	self.RegisterForSingleUpdate(Utility.RandomFloat(min,max))
	Return
EndEvent


