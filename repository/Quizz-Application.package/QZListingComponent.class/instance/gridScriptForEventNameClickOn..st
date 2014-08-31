scripts
gridScriptForEventNameClickOn: html 
	| theItem | 

	html document addLoadScript: ((((html jQuery expression: (JSStream on: 'target')) editable
				type: 'text';
				height: 'none';
				width: 'none';
				select: true;
				event: 'dblclick';
				onblur: 'submit';
				submit: 'ok';
				cancel: 'cancel';
				"optionAt: 'data' put: (JSStream on: 'cleanFromHtmlCharacters');"
				tooltip: 'Dubbelklik om te veranderen';
				callback: [ :val | self changeNameOf: theItem to: val ];
				secondCallback: (html jQuery ajax 
							callback:[:items | theItem := items first ]
							passengers: ((html jQuery expression: (JSStream on: 'target')) closest: 'a'));
				yourself) asFunction: #(target)) assignTo: 'editName').

	^ html jQuery this on: 'click' selector: '.item-name' do: ((JSStream on: 'editName(event.target)') asFunction: #(event))