rendering
updateRoot: aRoot
	super updateRoot: aRoot.
	aRoot title: 'Quizz'.
	aRoot javascript url: (JQWidgetBoxDeploymentLibrary / #jeditableJs).
	aRoot stylesheet url: (QZFileLibrary / #bootstrapminCss)