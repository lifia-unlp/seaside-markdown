Class {
	#name : #BaselineOfSeasideMarkdown,
	#superclass : #Object,
	#category : #BaselineOfSeasideMarkdown
}

{ #category : #baselines }
BaselineOfSeasideMarkdown >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec repository: 'github//lifia-unlp/seaside-markdown'.
		self seaside: spec.
		spec
			package: 'Seaside-Markdown';
			with: [ spec requires: #( 'Seaside3' ) ] ]
]

{ #category : #baselines }
BaselineOfSeasideMarkdown >> seaside: spec [

	spec
		baseline: 'Seaside3'
		with: [ 
		spec repository: 'github://SeasideSt/Seaside:master/repository' ].
	spec
		package: 'Seaside-REST-Core'
		with: [ 
		spec repository: 'github://SeasideSt/Seaside:master/repository' ]
]
