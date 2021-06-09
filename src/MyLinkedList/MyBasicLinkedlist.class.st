"
I represent a Node
I have data and a link to next node
"
Class {
	#name : #MyBasicLinkedlist,
	#superclass : #Object,
	#instVars : [
		'data',
		'nextlink'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
MyBasicLinkedlist >> data [
	^data "Returns the data in the node"
]

{ #category : #accessing }
MyBasicLinkedlist >> data: newValue [
	data:=  newValue "Assign the data for each node"
]

{ #category : #accessing }
MyBasicLinkedlist >> nextlink [
    ^ nextlink "Returns the next linked node"
]

{ #category : #accessing }
MyBasicLinkedlist >> nextlink: newlink [
    nextlink := newlink "Points the next link"
]
