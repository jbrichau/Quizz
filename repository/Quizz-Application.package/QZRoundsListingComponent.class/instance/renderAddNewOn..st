rendering
renderAddNewOn: html

	| newName maxScore errorValue |
	errorValue := false.
	html tbsForm beInline; with: [
			html tbsFormGroup: [ 
				html label for: 'addone'; class: 'control-label'; with: 'Naam'.
				html textInput tbsFormControl; id: 'addone'; autofocus; callback:[:value | newName := value]; placeholder: 'Tik nieuwe naam in'.
				html space.
				html label for: 'addone'; class: 'control-label'; with: 'Maximum score'.
				html textInput tbsFormControl; id: 'addone'; autofocus; callback:[:value | [maxScore := (Integer readFromString: value). errorValue := false ] on: Error do:[:e | errorValue := true ] ]; placeholder: 'Voer getal in'.
				html tbsButton bePrimary; beSubmit; callback:[ errorValue ifFalse:[self add: ((self createNew: newName) maxScore: maxScore; yourself) ] ]; with: 'Aanmaken' ] ]