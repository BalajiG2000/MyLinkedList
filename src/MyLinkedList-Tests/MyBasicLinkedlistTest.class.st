"
A MyBasicLinkedlistTest is a test class for testing the behavior of MyBasicLinkedlist
"
Class {
	#name : #MyBasicLinkedlistTest,
	#superclass : #TestCase,
	#category : #'MyLinkedList-Tests'
}

{ #category : #tests }
MyBasicLinkedlistTest >> testNewNode [
"Test for a new node creation"
| EmptyNode |
EmptyNode := MyBasicLinkedlist new.
]
