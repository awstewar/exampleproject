<%@ page import="org.exampleproject.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="test.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'boo', 'error')} ">
	<label for="boo">
		<g:message code="test.boo.label" default="Boo" />
		
	</label>
	<g:textField name="boo" value="${testInstance?.boo}"/>
</div>

