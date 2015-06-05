<html>
<head>
	<title>ColdFusion Railo Test ENV : <cfoutput>#APPLICATION.NAME#</cfoutput></title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
</head>
<body>
	<h1>some test cases</h1>
	<p>need some components</p>
	<p>need some JAVA includes like ... MongoDB</p>
	<p>need Facebook API? Use Chat to agree</p>
	<p>need some other stuff</p>
	<i>well then do it</i>

	<cfset NewsHandler = new tv.cranktube.main.News() />
	<cfset latestNews = NewsHandler.getLatest() />
	<cfloop collection="#latestNews#" item="Entity">
		<article class="news main">
			<h2>#Entity.getTitle()#</h2>
			<p>#Entity.getMessage()#
		</article>
	</cfloop>

	<!-- Latest compiled and minified JQuery JavaScript -->
	<script src="https://http://code.jquery.com/jquery-2.1.4.min.js"></script>
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>