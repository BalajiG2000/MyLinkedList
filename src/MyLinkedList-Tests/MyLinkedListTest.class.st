"
A BasicLinkedListTest is a test class for testing the behavior of BasicLinkedList
"
Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#category : #'MyLinkedList-Tests'
}

{ #category : #tests }
MyLinkedListTest >> testNewList [
| emptyList |
emptyList := MyLinkedList new.
]

{ #category : #tests }
MyLinkedListTest >> testisEmpty [
| emptyList |
emptyList := MyLinkedList new.
self assertEmpty: emptyList 
]

{ #category : #tests }
MyLinkedListTest >> testremoveAll [
| emptylist  |
emptylist  := MyLinkedList  new.
emptylist removeAll .
self assert: emptylist size equals: 0.
]

{ #category : #tests }
MyLinkedListTest >> testsize [ 
|emptylist|
emptylist :=MyLinkedList new.
self assert: emptylist size equals: 0.

]
