rendering
renderScriptsFor: table on: html
	table 
		script: (html jQuery this 
						on: 'click' 
						do:((html jQuery ajax 
									callback:[:cells | self switchMultiplierForTeam: cells first key onRound: cells first value] 
									passengers: ((html jQuery expression: (JSStream on: 'event.target')) closest:'td');
									onComplete: (html javascript refresh))
								asFunction: #(event)))