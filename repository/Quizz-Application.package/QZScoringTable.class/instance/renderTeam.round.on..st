rendering
renderTeam: aTeam round: aRound on: html
	| errorState id |
	errorState := false.
	html tableData: [  
		(self isOpenRound: aRound)
			ifTrue:[  html tbsFormGroup
							id: (id := html nextId);
							with: [ 
								html textInput 
									tbsFormControl;
									class:'input-sm';
									placeholder: '0';
									callback:[:value | [ self scoreTeam: aTeam forRound: aRound to: value. errorState := false ] on: Error do:[:e | errorState := true ] ];
									onChange: (html jQuery ajax 
														serializeThis;
														script:[:s | errorState 
																			ifTrue:[s << ((((s jQuery id: id) addClass: 'has-error') find:'input') value: (aRound scoreForTeam: aTeam withMultiplier: false ifAbsent:[''])) ]
																			ifFalse:[s << ((((s jQuery id: id) removeClass: 'has-error') find:'input') value: (aRound scoreForTeam: aTeam withMultiplier: false ifAbsent:[''])) ] ]);
									with: (aRound scoreForTeam: aTeam withMultiplier: false ifAbsent:['']).
								"html tbsGlyphIcon iconRemove class: 'form-control-feedback'"] ]
			ifFalse:[ html text: (aRound scoreForTeam: aTeam withMultiplier: false ifAbsent:['']) ] ]
		
