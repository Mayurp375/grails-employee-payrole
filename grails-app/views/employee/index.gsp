<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Employee List</title>
</head>

<body>
<h1>Employee List</h1>
<table border="1">
    <thead>
    <tr>
        <th>Sr.No</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Designation</th>
        <th>Age</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${employee}" var="employess" status="i">
        <tr>
            <td>${i + 1}</td>
            <td>${employess.firstName}</td>
            <td>${employess.lastName}</td>
            <td>${employess.designation}</td>
            <td>${employess.age}</td>
        </tr>
    </g:each>
    </tbody>
</table>
<a href="${createLink(controller: 'employee',action: 'create')}">Add Employee</a>
%{--<g:link controller= "employee" action= "edit" params="id: ${employee.id}">Edit</g:link>--}%

</body>
</html>