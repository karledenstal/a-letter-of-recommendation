;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname _JQ__TIF__05019D24 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
DialogueGeneric.Bribe(akSpeaker)
(GetOwningQuest() as _JQ_ALORQuestScript).GiveLetter(akSpeaker, LetterRef)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property LetterRef Auto
FavorDialogueScript Property DialogueGeneric Auto