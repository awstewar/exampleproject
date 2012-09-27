<html>
	<head>
		<meta name="layout" content="main" />
	</head>
	<body>
		<ul>
			<g:each var="user" in="${friends}">
				<li>${user.realName}  <a class="" href="${createLink(action: 'addUser', id: boxInstance.id, params:[userId:user.id])}">Add User</a></li>
			</g:each>
		</ul>		
	</body>
</html>