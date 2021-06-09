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
   ^self addLast: anobject 
]

{ #category : #adding }
MyLinkedList >> addLast: anObject [

   | node |
	node := MyLinkedListNode new.
	node value: anObject.
	tail ifNotNil: [ tail nextNode: node ].
	head ifNil: [ head := node ].
	tail := node.
	^ node
]

{ #category : #adding }
MyLinkedList >> removeAll [
"removes all the nodes in the list but doesnot delete the nodes and memory"
	head:=nil.
	tail:=nil. 
]

{ #category : #adding }
MyLinkedList >> size [ 

	| current count |
	current:=head.
	count:=0.
	[ current isNil ] whileFalse: [ 
	count:=count+1.
	current := current nextNode.] .
	^ count. 
]
