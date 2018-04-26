Scriptname zadx_SndEffectDressSoundMedium extends ActiveMagicEffect
{attached to an enchantment which uses the IsMoving condition. when the wearer
is in motion it will make squeaky noises.}

Sound Property zadx_SndSoundDressMedium Auto

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

	;; default running sound pace.
	Float min = 0.45
	Float max = 0.85

	zadx_SndSoundDressMedium.Play(who)
	self.RegisterForSingleUpdate(Utility.RandomFloat(min,max))
	Return

EndEvent

