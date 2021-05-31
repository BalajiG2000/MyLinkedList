Class {
	#name : #BasicLinkedList,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail'
	],
	#category : #MySampleLinkedlist
}

{ #category : #adding }
BasicLinkedList >> addLast: aLink [
   "Adding new node to the end of linkedlist"
   | link |
    link := aLink.
    tail ifNotNil: [ tail nextlink: link ]. "If list is preoccupied"
    head ifNil: [ head := link ].           "if list empty"
    tail := link.                           "update last node"
    ^ link
]
