Class {
	#name : #MarkdownListItem,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownListItem >> printOn: aStream [
	aStream nextPutAll: '* '.
	super printOn: aStream.
	aStream cr
]
