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
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/Bootstrap/main'].
				
		spec
			project: 'JQueryWidgetBox'
			with: [ 
				spec 
					className: 'ConfigurationOfJQueryWidgetBox';
					versionString: #stable;
					loads: #('JQWidgetBox-JEditable-Core');
					repository: 'http://smalltalkhub.com/mc/Seaside/JQueryWidgetBox/main'
				 ].
				
		spec
			package: 'Quizz-Model';
			package: 'Quizz-Application' with:[spec requires: #('Seaside3' 'Bootstrap' 'JQueryWidgetBox')].
			
		spec group:'default' with: #('Quizz-Model' 'Quizz-Application')
		
	]