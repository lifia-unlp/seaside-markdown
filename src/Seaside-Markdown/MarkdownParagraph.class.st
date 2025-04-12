"
A markdown paragraph  brush
"
Class {
	#name : #MarkdownParagraph,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #printing }
MarkdownParagraph >> printOn: aStream [
	super printOn: aStream.
	aStream
		cr;
		cr
]
