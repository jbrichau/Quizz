rendering
renderAddNewOn: html

	| newName |
	self isLocked ifFalse:[
		html tbsForm beInline; with: [
			html tbsFormGroup: [ 
				html label for: 'addone'; class: 'sr-only'; with: 'Naam'.
				html textInput tbsFormControl; id: 'addone'; autofocus; callback:[:value | newName := value]; placeholder: 'Tik nieuwe naam in'.
				html space.
			html tbsButton 
				bePrimary;
				beSubmit;
				callback:[ self add:(self createNew: newName) ];
				with: 'Aanmaken' ] ] ]