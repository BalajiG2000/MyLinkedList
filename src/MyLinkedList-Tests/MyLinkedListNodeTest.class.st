"
A MyBasicLinkedlistTest is a test class for testing the behavior of MyBasicLinkedlist
"
Class {
	#name : #MyLinkedListNodeTest,
	#superclass : #TestCase,
	#category : #'MyLinkedList-Tests'
}

{ #category : #tests }
MyLinkedListNodeTest >> testNewNode [
"Test for a new node creation"
| EmptyNode |
EmptyNode := MyLinkedListNode new.
]
