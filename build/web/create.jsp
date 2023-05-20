<%-- 
    Document   : create
    Created on : May 21, 2023, 2:34:33 AM
    Author     : Hassan Mahfuj
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
    </head>
    <body>
        <c:if test="${empty param.fullname or empty param.email or empty param.password}">
            <c:redirect url="signup.jsp">
                <c:param name="errmsg" value="Fullname or Username or Password is empty!"/>
            </c:redirect>
        </c:if>
        <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/sample_data" user="root" password="admin123"/>
        <sql:update dataSource="${ds}" var="res">
            INSERT INTO users (fullname, email, password) VALUES ('${param.fullname}', '${param.email}', '${param.password}')
        </sql:update>
        <c:choose>
            <c:when test="${res >= 1}">
                <c:redirect url="index.jsp"/>
            </c:when>
            <c:otherwise>
                <c:redirect url="signup.jsp">
                    <c:param name="errmsg" value="Something went wrong!"/>
                </c:redirect>
            </c:otherwise>
        </c:choose>
    </body>
</html>
