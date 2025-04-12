Class {
	#name : #MarkdownHeading,
	#superclass : #MarkdownElement,
	#instVars : [
		'level'
	],
	#category : #'Seaside-Markdown'
}

{ #category : #accessing }
MarkdownHeading >> level: anInteger [
	level := anInteger
]

{ #category : #printing }
MarkdownHeading >> printOn: aStream [
	aStream
		nextPutAll: ('#' repeat: level);
		nextPutAll: ' '.
	super printOn: aStream.
	aStream
		cr;
		cr
]
