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

{ #category : #tests }
BasicLinkedListTest >> testisEmpty [
| emptyList |
emptyList := BasicLinkedList new.
self assertEmpty: emptyList 
]

{ #category : #tests }
BasicLinkedListTest >> testremoveAll [
| emptylist  |
emptylist  := BasicLinkedList  new.
emptylist removeAll .
self assert: emptylist size equals: 0.
]
