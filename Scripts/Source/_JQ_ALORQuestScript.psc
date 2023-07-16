Scriptname _JQ_ALORQuestScript extends Quest  

Function TriggerStart()
		; This function is called when the quest starts running
		Debug.Trace("Quest started")
		Start()
		SetStage(10)
EndFunction
