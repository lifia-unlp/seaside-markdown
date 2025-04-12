"
I am polymorphic to WAHtmlCanvas, buy generating Markdown ...
"
Class {
	#name : #MarkdownCanvas,
	#superclass : #MarkdownElement,
	#instVars : [
		'current'
	],
	#category : #'Seaside-Markdown'
}

{ #category : #elements }
MarkdownCanvas >> anchor [
	^ current addElement: MarkdownText new
]

{ #category : #elements }
MarkdownCanvas >> blockquote: aBlockOrString [
	^ current addElement: (MarkdownBlockquote with: aBlockOrString)
]

{ #category : #elements }
MarkdownCanvas >> break [
	^ current addElement: MarkdownLineBreak new
]

{ #category : #accessing }
MarkdownCanvas >> current [
	^ current
]

{ #category : #accessing }
MarkdownCanvas >> current: anObject [
	current := anObject
]

{ #category : #elements }
MarkdownCanvas >> emphasis: aBlockOrString [ 
		^ current addElement: (MarkdownEmphasis with: aBlockOrString)
]

{ #category : #expanding }
MarkdownCanvas >> expand [
	elements do: [:each | each expandWith: self]
]

{ #category : #elements }
MarkdownCanvas >> heading [
	^ current addElement: MarkdownHeading new
]

{ #category : #initialize }
MarkdownCanvas >> initialize [
	super initialize.
	current := self
]

{ #category : #elements }
MarkdownCanvas >> listItem: aBlockOrString [ 
		^ current addElement: (MarkdownListItem with: aBlockOrString)
]

{ #category : #elements }
MarkdownCanvas >> paragraph: aBlockOrString [
	^ current addElement: (MarkdownParagraph with: aBlockOrString)
]

{ #category : #rendering }
MarkdownCanvas >> renderContent [
	self shouldBeImplemented.
]

{ #category : #elements }
MarkdownCanvas >> space [
	^ current addElement: (MarkdownText with: '')
]

{ #category : #elements }
MarkdownCanvas >> strong: aBlockOrString [
	^ current addElement: (MarkdownStrong with: aBlockOrString)
]

{ #category : #tables }
MarkdownCanvas >> tableBody: aStringOrBlock [
	^ current addElement: (MarkdownElement with: aStringOrBlock)
]

{ #category : #tables }
MarkdownCanvas >> tableData: aStringOrBlock [
	^ current addElement: (MarkdownTableData with: aStringOrBlock)
]

{ #category : #tables }
MarkdownCanvas >> tableHead: aStringOrBlock [
	^ current addElement: (MarkdownTableHead with: aStringOrBlock)
]

{ #category : #tables }
MarkdownCanvas >> tableHeading [
	^ current addElement: MarkdownTableData new
]

{ #category : #tables }
MarkdownCanvas >> tableRow: aStringOrBlock [
	^ current addElement: (MarkdownTableRow with: aStringOrBlock)
]

{ #category : #elements }
MarkdownCanvas >> tbsButton [
	^ current addElement: MarkdownButton new
]

{ #category : #elements }
MarkdownCanvas >> tbsPanel [
	
]

{ #category : #tables }
MarkdownCanvas >> tbsTable [
	^current addElement: (MarkdownElement new)
]

{ #category : #elements }
MarkdownCanvas >> text: aBlockOrString [
	^ current addElement: (MarkdownText with: aBlockOrString)
]

{ #category : #elements }
MarkdownCanvas >> unorderedList: aBlockClosure [
	^ current addElement: (MarkdownUnorderedList with: aBlockClosure)
]
