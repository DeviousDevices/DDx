Scriptname zadxUpdaterAlias extends ReferenceAlias  

Event OnPlayerLoadGame()
	(GetOwningQuest() as zadxUpdater).Maintenance()
EndEvent