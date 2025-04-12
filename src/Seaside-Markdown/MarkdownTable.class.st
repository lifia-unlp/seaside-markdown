Class {
	#name : #MarkdownTable,
	#superclass : #MarkdownElement,
	#instVars : [
		'bordered'
	],
	#category : #'Seaside-Markdown'
}

{ #category : #accessing }
MarkdownTable >> beBordered [
	bordered := true
]

{ #category : #ignored }
MarkdownTable >> beHover [
	
]
