<%@ page import="org.exampleproject.Box" %>

<div class="fieldcontain ${hasErrors(bean: boxInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="test.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${boxInstance?.name}"/>
</div>