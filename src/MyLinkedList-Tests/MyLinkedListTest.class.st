"
A BasicLinkedListTest is a test class for testing the behavior of BasicLinkedList
"
Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#category : #'MyLinkedList-Tests'
}

{ #category : #tests }
MyLinkedListTest >> testAdd [

	|list|
	list:= MyLinkedList new.
	list add: #first.
	self assert: list size equals: 1.
]

{ #category : #tests }
MyLinkedListTest >> testAt [
	| list  |
	list  := MyLinkedList  new.
	list add:  #first.
	list add: #second.
	self assert: (list at: 1) equals: #first.
]

{ #category : #tests }
MyLinkedListTest >> testIsEmpty [
	| list |
	list := MyLinkedList new.
	self assertEmpty: list 
]

{ #category : #tests }
MyLinkedListTest >> testRemoveAll [
	| list  |
	list  := MyLinkedList  new.
	list add:  #first.
	list add: #second.
	list removeAll .
	self assert: list size equals: 0.
]

{ #category : #tests }
MyLinkedListTest >> testsize [ 
	|list|
	list :=MyLinkedList new.
	list add: #first; add: #second.
	self assert: list size equals: 2.

]
