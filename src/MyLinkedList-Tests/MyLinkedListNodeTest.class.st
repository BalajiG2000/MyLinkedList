"
A MyBasicLinkedlistTest is a test class for testing the behavior of MyBasicLinkedlist
"
Class {
	#name : #MyLinkedListNodeTest,
	#superclass : #TestCase,
	#category : #'MyLinkedList-Tests'
}

{ #category : #tests }
MyLinkedListNodeTest >> testValue [
	| node |
	node := MyLinkedListNode new.
	node value: #first.
	self assert: node value equals: #first.
]

{ #category : #tests }
MyLinkedListNodeTest >> testnextNode [
	| node1 node2 |
	node1 := MyLinkedListNode new.
	node2 := MyLinkedListNode new.
	node1 nextNode: node2.
	self assert: node1 nextNode equals: node2.
]
