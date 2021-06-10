Class {
	#name : #BaselineOfMyLinkedList,
	#superclass : #BaselineOf,
	#category : #BaselineOfMyLinkedList
}

{ #category : #baselines }
BaselineOfMyLinkedList >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ 
		"Packages"
		spec 
			package: 'MyLinkedList';
			package: 'MyLinkedList-Tests' with: [ spec requires: #('MyLinkedList') ]].
]
