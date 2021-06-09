"
I represent a Node
I have data and a link to next node
"
Class {
	#name : #MyLinkedListNode,
	#superclass : #Object,
	#instVars : [
		'data',
		'nextNode'
	],
	#category : #MyLinkedList
}

{ #category : #accessing }
MyLinkedListNode >> data [
	^data
]

{ #category : #accessing }
MyLinkedListNode >> data: newValue [
	data:=  newValue 
]

{ #category : #accessing }
MyLinkedListNode >> nextNode [
    ^ nextNode
]

{ #category : #accessing }
MyLinkedListNode >> nextNode: aNode [
    nextNode := aNode 
]
