rendering
renderAddNewOn: html

	| newName maxScore errorValue |
	errorValue := false.
	self canAdd ifTrue:[
	html tbsForm beInline; with: [
			html tbsFormGroup: [ 
				html label for: 'addone'; class: 'control-label'; with: 'Naam'.
				html html: ' '.
				html textInput tbsFormControl; id: 'addone'; autofocus; callback:[:value | newName := value]; placeholder: 'Tik nieuwe naam in'.
				html html: ' '.
				html label for: 'addone'; class: 'control-label'; with: 'Maximum score'.
				html html: ' '.
				html textInput tbsFormControl; id: 'addone'; autofocus; callback:[:value | [maxScore := (Integer readFromString: value). errorValue := false ] on: Error do:[:e | errorValue := true ] ]; placeholder: 'Voer getal in'.
				html tbsButton bePrimary; beSubmit; callback:[ errorValue ifFalse:[self add: ((self createNew: newName) maxScore: maxScore; yourself) ] ]; with: 'Aanmaken' ] ] ]