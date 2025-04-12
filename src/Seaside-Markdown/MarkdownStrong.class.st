Class {
	#name : #MarkdownStrong,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownStrong >> printOn: aStream [
	aStream nextPutAll: '**'.
	super printOn: aStream.
	aStream nextPutAll: '**'
]
