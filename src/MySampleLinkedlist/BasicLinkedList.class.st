Class {
	#name : #BasicLinkedList,
	#superclass : #OrderedCollection,
	#instVars : [
		'head'
	],
	#category : #MySampleLinkedlist
}

{ #category : #adding }
BasicLinkedList >> add: aLink [
   "Adding new node to the end of linkedlist"
   | link |
    link := aLink.
    head ifNil: [ head := link ].           "if list empty"
    ^ link
]

{ #category : #enumerating }
BasicLinkedList >> do: aBlock [
	"Evaluate aBlock with each of the receiver's elements as the argument."
	|samplelist|
samplelist do: aBlock


	
]
