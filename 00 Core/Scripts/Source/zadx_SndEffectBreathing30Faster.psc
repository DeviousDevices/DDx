Scriptname zadx_SndEffectBreathing30Faster extends ActiveMagicEffect
{attached to an enchantment which uses the IsMoving condition. when the wearer
is in motion it will make breathing sounds.}

Sound Property zadx_SndSoundBreathing30Faster Auto

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
	Float min = 1.9
	Float max = 2.05

	zadx_SndSoundBreathing30Faster.Play(who)
	self.RegisterForSingleUpdate(Utility.RandomFloat(min,max))
	Return
EndEvent


