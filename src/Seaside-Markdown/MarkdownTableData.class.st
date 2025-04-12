Class {
	#name : #MarkdownTableData,
	#superclass : #MarkdownElement,
	#category : #'Seaside-Markdown'
}

{ #category : #ignored }
MarkdownTableData >> class: aString [ 
	
]

{ #category : #printing }
MarkdownTableData >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' | '
]
