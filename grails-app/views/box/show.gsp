<html>
	<head>
		<meta name="layout" content="main" />
	</head>
	<body>
		Box: ${ boxInstance.name }

		<a class="btn btn-primary" href="">Add Friends</a>
 		<h5>Included Friends:</h5>
		<ul>
			<g:each var="friend" in="${boxInstance.friends}">
				<li>${friend.realName}</li>
			</g:each>
		</ul>
	</body>
</html>