Class {
	#name : #MarkdownUnorderedList,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownUnorderedList >> printOn: aStream [
	elements do: [ :each | each printOn: aStream ].
	aStream cr
]
