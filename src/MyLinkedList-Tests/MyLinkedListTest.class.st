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
	self assert: (list at: 2) equals: #second.
]

{ #category : #tests }
MyLinkedListTest >> testAtPut [
	| list  |
	list  := MyLinkedList  new.
	list add:  #first.
	list add: #second.
	list at: 2 put: #newsecond.
	self assert: (list at: 2) equals: #newsecond.
]

{ #category : #tests }
MyLinkedListTest >> testDo [
	|collection actual expected |
	collection := MyLinkedList new.
	collection add: 1.
	collection add: 2.
	collection add: 3.
	expected := OrderedCollection withAll: #(1 2 3).
	actual := OrderedCollection new.

	collection do: [ :each |
   		actual add: each ].

	self assert: actual equals: expected.
	
]

{ #category : #tests }
MyLinkedListTest >> testFirst [
	|list|
	list :=MyLinkedList new.
	list add: #first; add: #second.
	self assert: list first equals: #first.

]

{ #category : #tests }
MyLinkedListTest >> testIsEmpty [
	| list |
	list := MyLinkedList new.
	self assertEmpty: list 
]

{ #category : #tests }
MyLinkedListTest >> testRemove [
	| list  |
	list  := MyLinkedList  new.
	list add:  #first.
	list add: #second.
	list add: #third.
	self assert: list size equals: 3.
	list remove: 2.
	self assert: (list at: 2) equals: #third.
	self assert: list size equals: 2.
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
