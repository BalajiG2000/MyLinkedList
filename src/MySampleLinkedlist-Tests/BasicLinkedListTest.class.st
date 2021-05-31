"
A BasicLinkedListTest is a test class for testing the behavior of BasicLinkedList
"
Class {
	#name : #BasicLinkedListTest,
	#superclass : #TestCase,
	#category : #'MySampleLinkedlist-Tests'
}

{ #category : #tests }
BasicLinkedListTest >> testNewList [
| emptyList |
emptyList := BasicLinkedList new.
]
