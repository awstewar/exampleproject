<html>
<head>
	<meta name="layout" content="main" />
</head>
<body>

	<g:form class="form-search" action="findUsers" controller="user" name="search" method="GET">
		<g:textField name="q" value="${params.q}" size="50"/> 
		<button type="submit" class="btn">Submit</button>
	</g:form>

	<ul>
		<g:each var="user" in="${searchResults?.results}">
			<li>
				${user.realName}
			</li>
		</g:each>
	</ul>
</body>
</html>