Scriptname zadxPlayerScript extends ReferenceAlias

Event OnPlayerLoadGame()
	(GetOwningQuest() as zadxLibs).Maintenance()
EndEvent
