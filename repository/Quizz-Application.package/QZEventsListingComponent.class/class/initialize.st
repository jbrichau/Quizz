as yet unclassified
initialize
	| app |
	app := WAAdmin register: self asApplicationAt: 'quizz'.
	app 
    addLibrary: JQDeploymentLibrary;
    addLibrary: TBSDeploymentLibrary