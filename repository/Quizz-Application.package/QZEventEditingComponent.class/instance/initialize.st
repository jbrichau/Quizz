initialization
initialize
	| teamsC roundsC scoringC multipliersC |
	super initialize.
	teamsC := QZTeamsListingComponent new.
	roundsC := QZRoundsListingComponent new.
	multipliersC := QZMultiplierTable new.
	scoringC := QZScoringTable new.
	subComponents := OrderedCollection with: teamsC with: roundsC with: multipliersC with: scoringC.
	activeComponent := subComponents first.