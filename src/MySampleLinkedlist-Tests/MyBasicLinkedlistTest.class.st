"
A MyBasicLinkedlistTest is a test class for testing the behavior of MyBasicLinkedlist
"
Class {
	#name : #MyBasicLinkedlistTest,
	#superclass : #TestCase,
	#category : #'MySampleLinkedlist-Tests'
}

{ #category : #tests }
MyBasicLinkedlistTest >> testNewNode [
| EmptyNode |
EmptyNode := MyBasicLinkedlist new.
]
