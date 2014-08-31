rendering
renderContentOn: html

	eventsListing renderOn: html.

	self session event ifNotNil: [ 
		html anchor
			class: 'btn btn-primary btn-large';
			url:'#myModal';
			attributeAt: 'data-toggle' put: 'modal';
			with: 'Toon ranking'.	

		html tbsModal id: 'myModal'; with: [  
			html tbsModalDialog: [
				html tbsModalContent: [ 
					html tbsModalHeader: [ 
						html tbsModalCloseIcon.
						html tbsModalTitle level: 4; with: 'Open rankings'				
				 	].
				html tbsModalBody: [ 
					self session event rounds do:[:aRound |
						html div class:'checkbox'; with:[ html label:[
							html checkbox 
							onTrue:[ aRound showInRanking ] onFalse: [ aRound hideInRanking ];
							value: (aRound isVisibleInRanking);
							onClick: (html jQuery ajax serializeThisWithHidden).
						html text: aRound name]]].
					
					html div class:'checkbox'; with:[ html label:[
							html checkbox 
							onTrue:[ self session applymultipliers: true ] onFalse: [ self session applymultipliers:  false ];
							value: self session applymultipliers;
							onClick: (html jQuery ajax serializeThisWithHidden).
						html text: 'Met jokers']].
					
					html anchor target:'_blank'; callback: [ self call: QZRankingsTable new ]; with: 'rankings'.
				].
				html tbsModalFooter: [ 
					html tbsButton: 'Close'.
					html tbsButton bePrimary; with: 'Save Changes' 	
				 ]
			]
		]	
	] ].	
	 