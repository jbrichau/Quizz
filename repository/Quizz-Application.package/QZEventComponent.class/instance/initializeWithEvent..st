initialization
initializeWithEvent: anEvent
	| teamsC roundsC scoringC |
	
	event := anEvent.
	teamsC := QZTeamsListingComponent new list: self event teams.
	roundsC := QZRoundsListingComponent new list: self event rounds.
	scoringC := QZScoringTableComponent onEvent: self event.
	subComponents := OrderedCollection with: teamsC with: roundsC with: scoringC.
	activeComponent := subComponents first.