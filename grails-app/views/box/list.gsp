<html>
	<head>
		<meta name="layout" content="main" />
	</head>
	<body>
		<a class="btn btn-primary" href="${createLink(controller:'box', action:'create')}">Add Box</a>
		<h4>Boxes:</h4>
		<ul>
			<g:each var="box" in="${boxes}">
				<li>${box.name}</li>
			</g:each>
		</ul>
	</body>
</html>