accessing
baseline: spec
	<baseline>
	
	spec for: #common do:[
	
		spec 
			project: 'Seaside3'
			with: [ 
				spec
					className: 'ConfigurationOfSeaside3';
					versionString: #'release3.1';
					loads: #('CI');
					repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main'].
				
		spec 
			project: 'Bootstrap'
			with: [ 
				spec
					className: 'ConfigurationOfBootstrap';
					versionString: #stable;
					repository: 'hhttp://smalltalkhub.com/mc/TorstenBergmann/Bootstrap/main'].
				
		spec
			package: 'Quizz-Model';
			package: 'Quizz-Application' with:[spec requires: #('Seaside3' 'Bootstrap')].
			
		spec group:'default' with: #('Quizz-Model' 'Quizz-Application')
		
	]