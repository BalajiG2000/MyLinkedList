"
I represent a Node
I have data and a link to next node
"
Class {
	#name : #MyLinkedListNode,
	#superclass : #Object,
	#instVars : [
		'data',
		'nextlink'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
MyLinkedListNode >> data [
	^data "Returns the data in the node"
]

{ #category : #accessing }
MyLinkedListNode >> data: newValue [
	data:=  newValue "Assign the data for each node"
]

{ #category : #accessing }
MyLinkedListNode >> nextlink [
    ^ nextlink "Returns the next linked node"
]

{ #category : #accessing }
MyLinkedListNode >> nextlink: newlink [
    nextlink := newlink "Points the next link"
]
