<html>
	<head>
		<meta name="layout" content="main" />
	</head>
	<body>
		${ userInstance.username }
		${ boxes }
		
		<g:form controller="box" action="create" name="createBoxForm">
            <g:textField name="name" value=""/>
            <g:submitButton name="Create Box" id="create_box_form_button"/>
        </g:form>
		
	</body>
</html>