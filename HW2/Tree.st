Object subclass: #Node
	instanceVariableNames: 'data left right'
	classVariableNames:''
	poolDictionaries: ''!

!Node class methodsFor: 'instance creation'!
data: anObject
	^self new initialize: anObject
!!

!Node methodsFor: 'access'!
data
	^data
!

left
	^left
!

right
	^right
!

initialize: anObject
	data := anObject
!

member: anObject
	anObject < data
		ifTrue:[left isNil
			ifTrue: [^false]
			ifFalse: [^left member: anObject]
		].
	anObject > data
		ifTrue:[right isNil
			ifTrue: [^false]
			ifFalse: [^right member: anObject]
		].
	^true.
!

insert: anObject
	anObject < data
		ifTrue: [left isNil
			ifTrue:[left := Node new initialize: anObject]
			ifFalse: [left insert: anObject]
		].
	anObject > data
		ifTrue: [right isNil
			ifTrue:[right := Node new initialize: anObject]
			ifFalse:[right insert: anObject]
		].
!!

Object subclass: #Tree
	instanceVariableNames: 'root'
	classVariableNames: ''
	poolDictionaries: ''

!Tree methodsFor: 'initialization'!

member: anObject
	root isNil
		ifTrue:[^false]
		ifFalse:[^root member: anObject].
!

insert: anObject
	root isNil
		ifTrue:[root := Node new initialize: anObject]
		ifFalse:[root insert: anObject].
!!

