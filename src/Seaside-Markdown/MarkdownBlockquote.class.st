Class {
	#name : #MarkdownBlockquote,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownBlockquote >> printOn: aStream [
	aStream nextPutAll: '>'.
	super printOn: aStream.
]
