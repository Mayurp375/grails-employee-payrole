<%--
  Created by IntelliJ IDEA.
  User: poloj
  Date: 8/5/2023
  Time: 1:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Employee List</title>
</head>

<body>
<h1>Employee List</h1>
<ul>
    <g:each in="${employee}" var="employess">
        <li>${employess.firstName} ${employess.lastName}</li>
    </g:each>
</ul>
<a href="${createLink(controller: 'employee',action: 'create')}">Add Emp
</a>
</body>
</html>