"
I represent a collection of Node
I can add, traverse, delete nodes
"
Class {
	#name : #MyLinkedList,
	#superclass : #OrderedCollection,
	#instVars : [
		'head',
		'tail'
	],
	#category : #MyLinkedList
}

{ #category : #adding }
MyLinkedList >> add: anobject [
   "Adding new node to the end of linkedlist"
   ^self addLast: anobject 
]

{ #category : #adding }
MyLinkedList >> addLast: anObject [
"Adding new node to the end of linkedlist"
   | link |
	link := anObject.
	tail ifNotNil: [ tail nextlink: link ].
	head ifNil: [ head := link ].
	tail := link.
	^ link
]

{ #category : #adding }
MyLinkedList >> isEmpty [ 
   "Check for an empty list"
  
    ^ true ifNil: head .    "if list empty"
    
]

{ #category : #adding }
MyLinkedList >> removeAll [
"removes all the nodes in the list but doesnot delete the nodes and memory"
	head:=nil.
	tail:=nil. 
]
