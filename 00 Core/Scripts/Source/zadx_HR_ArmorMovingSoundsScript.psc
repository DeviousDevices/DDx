Scriptname zadx_HR_ArmorMovingSoundsScript extends ActiveMagicEffect

Actor Property Wearer Auto
float property delay Auto



Event OnEffectStart(Actor akTarget, Actor akCaster)
 	Wearer = akTarget
	RegisterForAnimationEvent(Wearer,"FootRight")
	RegisterForAnimationEvent(Wearer,"FootLeft")
	RegisterForAnimationEvent(Wearer,"FootScuffRight")
	RegisterForAnimationEvent(Wearer,"FootScuffLeft")
	RegisterForAnimationEvent(Wearer,"JumpUp")
	RegisterForAnimationEvent(Wearer,"JumpDown")
	RegisterForAnimationEvent(Wearer,"moveStart")
	RegisterForAnimationEvent(Wearer,"moveSlow")
	RegisterForAnimationEvent(Wearer,"moveStop")
	RegisterForAnimationEvent(Wearer,"SneakStart")
	RegisterForAnimationEvent(Wearer,"SneakStop")
	RegisterForAnimationEvent(Wearer,"EquipStart")
	RegisterForAnimationEvent(Wearer,"EquipStop")
	
endEvent
Event OnAnimationEvent(ObjectReference akSource, string asEventName)
	If akSource == Wearer


		If asEventName == "FootLeft" || asEventName == "FootRight"
		PlaySoundEffects()	
		ElseIf asEventName == "JumpUp"
		PlaySoundEffects()	
		Else
		PlaySoundEffects()	
		PlayDelayedSoundEffects()
		EndIf
	EndIf
EndEvent
Function PlayDelayedSoundEffects()
		float waittime = Utility.RandomFloat(0.5, 1.0)
		Utility.Wait(waittime)
		PlaySoundEffects()	
		waittime = Utility.RandomFloat(0.5, 1.0)
		Utility.Wait(waittime)
		PlaySoundEffects()	
		waittime = Utility.RandomFloat(0.5, 1.0)
		Utility.Wait(waittime)

EndFunction
Function PlaySoundEffects()

		float waittime = Utility.RandomFloat(0.0, delay)
		Utility.Wait(waittime)

	int c = soundEffectsMoving.Length
	int i = 0

	while i < c
			
			Int instanceID = soundEffectsMoving[i].play(Wearer as ObjectReference)

		i += 1
	endwhile
EndFunction

Sound[] Property soundEffectsMoving  Auto  

