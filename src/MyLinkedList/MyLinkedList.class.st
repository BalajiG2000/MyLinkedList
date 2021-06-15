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

{ #category : #accessing }
MyLinkedList >> at: anInteger [ 
	| current count |
	anInteger < 1 ifTrue:
		 [self errorSubscriptBounds: anInteger].
	current:=head.
	count:=1. 
	[ anInteger = count ] whileFalse: [ 
		count:=count+1.
		current := current nextNode.].
	^ current value. 
	
	
]

{ #category : #accessing }
MyLinkedList >> at: anInteger put: anObject [
	| current count |
	anInteger < 1 ifTrue:
		 [self errorSubscriptBounds: anInteger].
	current:=head.
	count:=1. 
	[ anInteger = count ] whileFalse: [ 
		count:=count+1.
		current := current nextNode.].
	current value: anObject. 
	^current value.
	
	
]

{ #category : #enumerating }
MyLinkedList >> do: aBlock [
	| current |
	current:=head.
	[ current isNil ] whileFalse: [ 
	aBlock value: (current value).
	current := current nextNode.].
	 
]

{ #category : #accessing }
MyLinkedList >> first [

	| current |
	current:=head.
	[ current isNil ] whileFalse: [ 
	^ current value.]
]

{ #category : #accessing }
MyLinkedList >> last [

	| current |
	current:=tail.
	[ current isNil ] whileFalse: [ 
	^ current value.]
]

{ #category : #enumerating }
MyLinkedList >> reject: aBlock [
	| current collection temp |
	current:=head.
	collection:= OrderedCollection new.
	[ current isNil ] whileFalse: [ 
		(aBlock value: (temp:= current value))
		ifFalse: [collection addLast: temp.].
		current := current nextNode].
	^collection


]

{ #category : #accessing }
MyLinkedList >> remove: anInteger [ 
	| current count |
	anInteger < 1 ifTrue:
		 [self errorSubscriptBounds: anInteger].
	current:=head.
	count:=1. 
	[ anInteger-1 = count ] whileFalse: [ 
		count:=count+1.
		current := current nextNode.].
		current nextNode: (current nextNode) nextNode.
		^current nextNode.
	
	
	
]

{ #category : #accessing }
MyLinkedList >> removeAll [
"removes all the nodes in the list but doesnot delete the nodes and memory"
	head:=nil.
	tail:=nil. 
]

{ #category : #enumerating }
MyLinkedList >> select: aBlock [
	| current collection temp |
	current:=head.
	collection:= OrderedCollection new.
	[ current isNil ] whileFalse: [ 
		(aBlock value: (temp:= current value))
		ifTrue: [collection addLast: temp.].
		current := current nextNode] .
	^collection


]

{ #category : #accessing }
MyLinkedList >> size [ 

	| current count |
	current:=head.
	count:=0.
	[ current isNil ] whileFalse: [ 
	count:=count+1.
	current := current nextNode.] .
	^ count. 
]
