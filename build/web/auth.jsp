<%-- 
    Document   : auth
    Created on : May 21, 2023, 1:42:11 AM
    Author     : Hassan Mahfuj
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Auth</title>
    </head>
    <body>
        <c:if test="${empty param.email or empty param.password}">
            <c:redirect url="index.jsp">
                <c:param name="errmsg" value="Username or Password is empty!"/>
            </c:redirect>
        </c:if>
        <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/sample_data" user="root" password="admin123"/>
        <sql:query dataSource="${ds}" var="data">
            SELECT fullname FROM users WHERE email = '${param.email}' AND password = '${param.password}'
        </sql:query>
        <c:forEach items="${data.rows}" var="row">
            <c:set scope="session" var="fullname" value="${row.fullname}"/>
            <c:redirect url="home.jsp"/>
        </c:forEach>
        <c:redirect url="index.jsp">
            <c:param name="errmsg" value="Username or Password is wrong!"/>
        </c:redirect>
    </body>
</html>
