rendering
keepAliveScriptOn: html
	"Keep the session every 120 seconds alive"
	^ ((html jQuery ajax
				cache: false;
				callback:[ ];
				timeout: 60000) 
			interval: 120000). 
