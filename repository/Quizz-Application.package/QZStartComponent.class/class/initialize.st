class initialization
initialize
	| app |
	app := WAAdmin register: self asApplicationAt: 'quizz'.
	app preferenceAt: #sessionClass put: QZSession.
	app 
    addLibrary: JQDeploymentLibrary;
    addLibrary: TBSDeploymentLibrary