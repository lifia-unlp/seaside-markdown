Class {
	#name : #MarkdownTableRow,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownTableRow >> printOn: aStream [
	super printOn: aStream.
	aStream cr
]
