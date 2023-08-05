
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Employee</title>
</head>

<body>
<h1>Create Employee</h1>
<g:form action="save">
    <label>First Name </label>
    <g:textField name="firstName"/><br>

    <label>Last Name </label>
    <g:textField name="lastName"/><br>

    <label>Designation </label>
    <g:textField name="designation"/><br>

    <label>Age </label>
    <g:textField name="age"/><br>

    <g:submitButton name="Save"/>

</g:form>
<a href="${createLink(controller: 'employee',action: 'edit')}">Edit Employee</a>

</body>
</html>