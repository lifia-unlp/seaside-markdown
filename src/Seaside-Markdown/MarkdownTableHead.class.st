Class {
	#name : #MarkdownTableHead,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownTableHead >> printOn: aStream [
	super printOn: aStream.
	aStream
		cr;
		nextPutAll: ('___|' repeat: elements size);
		cr
]
