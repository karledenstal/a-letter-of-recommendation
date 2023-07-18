Scriptname _JQ_ALORQuestScript extends Quest 

Actor Property PlayerRef Auto
ReferenceAlias Property FarengarLetter Auto
ReferenceAlias Property CalcelmoLetter Auto
ReferenceAlias Property MadenaLetter Auto
ReferenceAlias Property SybilleLetter Auto
ReferenceAlias Property WuunferthLetter Auto
ReferenceAlias Property WylandriahLetter Auto

GlobalVariable Property GameDaysPassed Auto
GlobalVariable Property DelayTime Auto
MiscObject Property Gold001 Auto
FormList Property LettersCollected Auto

Function TriggerStart()
		; This function is called when the quest starts running
		Debug.Trace("ALOR: Quest started")
		self.Start()
		self.SetStage(10)
EndFunction

Function NelacarCheatDelay(Int ShouldPay = 0)
		If(ShouldPay)
			PlayerRef.RemoveItem(Gold001, 5000)
		EndIf

		Debug.Trace("ALOR: Nelacar cheat delay")
		Float fDelay = GameDaysPassed.GetValue() + 0.50
		DelayTime.SetValue(fDelay)
		self.SetObjectiveCompleted(10)
		self.SetStage(15)
EndFunction

Function GiveAllLetters()
		Debug.Trace("ALOR: All letters given")
		PlayerRef.AddItem(FarengarLetter.GetReference(), 1)
		PlayerRef.AddItem(CalcelmoLetter.GetReference(), 1)
		PlayerRef.AddItem(MadenaLetter.GetReference(), 1)
		PlayerRef.AddItem(SybilleLetter.GetReference(), 1)
		PlayerRef.AddItem(WuunferthLetter.GetReference(), 1)
		PlayerRef.AddItem(WylandriahLetter.GetReference(), 1)

		self.SetStage(20)
EndFunction

Function GiveLetter(Actor akSpeaker, ReferenceAlias akLetter)
		ObjectReference LetterObj = akLetter.GetReference()

		akSpeaker.RemoveItem(LetterObj, 1)
		PlayerRef.AddItem(LetterObj, 1)

		LettersCollected.AddForm(LetterObj)

		If (LettersCollected.GetSize() == 6)
			self.SetStage(20)
		EndIf
EndFunction