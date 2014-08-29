private
teams
	^ teamsWithScores keys sorted:[:team1 :team2 | (self scoreForTeam: team1) >= (self scoreForTeam: team2) ]