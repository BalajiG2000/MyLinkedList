"
I represent a collection of Node
I can add, traverse, delete nodes
"
Class {
	#name : #BasicLinkedList,
	#superclass : #OrderedCollection,
	#instVars : [
		'head',
		'tail'
	],
	#category : #MySampleLinkedlist
}

{ #category : #adding }
BasicLinkedList >> add: anobject [
   "Adding new node to the end of linkedlist"
   ^self addLast: anobject 
]

{ #category : #adding }
BasicLinkedList >> addLast: anObject [
"Adding new node to the end of linkedlist"
   | link |
	link := anObject.
	tail ifNotNil: [ tail nextlink: link ].
	head ifNil: [ head := link ].
	tail := link.
	^ link
]

{ #category : #adding }
BasicLinkedList >> isEmpty [ 
   "Check for an empty list"
  
    ^ true ifNil: head .    "if list empty"
    
]
