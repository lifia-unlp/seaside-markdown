"
I generate markdown... 
"
Class {
	#name : #MarkdownElement,
	#superclass : #Object,
	#instVars : [
		'blockOrString',
		'elements'
	],
	#category : #'Seaside-Markdown'
}

{ #category : #'instance creation' }
MarkdownElement class >> with: aBlockClosure [ 
	^self new with: aBlockClosure 
]

{ #category : #accessing }
MarkdownElement >> addElement: elem [
   ^elements add: elem
]

{ #category : #ignored }
MarkdownElement >> beBordered [
	
]

{ #category : #accessing }
MarkdownElement >> beDefault [
	
]

{ #category : #ignored }
MarkdownElement >> beHover [
	
]

{ #category : #expanding }
MarkdownElement >> expandWith: aMarkdownCanvas [
	aMarkdownCanvas current: self.
	blockOrString value.
	elements do: [ :each | each expandWith: aMarkdownCanvas ]
]

{ #category : #initialize }
MarkdownElement >> initialize [
   elements := OrderedCollection new.
]

{ #category : #printing }
MarkdownElement >> printOn: aStream [
	elements isEmpty
		ifTrue: [ blockOrString isString
				ifTrue: [ aStream nextPutAll: blockOrString ] ]
		ifFalse: [ elements do: [ :each | each printOn: aStream ] ]
]

{ #category : #accessing }
MarkdownElement >> with: aBlockClosure [ 
	blockOrString := aBlockClosure 
]
