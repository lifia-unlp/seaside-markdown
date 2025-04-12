Class {
	#name : #MarkdownEmphasis,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownEmphasis >> printOn: aStream [
	aStream nextPutAll: '__'.
	super printOn: aStream.
	aStream nextPutAll: '__'
]
