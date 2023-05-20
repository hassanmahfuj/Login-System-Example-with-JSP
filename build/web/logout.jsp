<%-- 
    Document   : logout
    Created on : May 21, 2023, 2:27:23 AM
    Author     : Hassan Mahfuj
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <c:remove scope="session" var="fullname"/>
        <c:redirect url="index.jsp"/>
    </body>
</html>
