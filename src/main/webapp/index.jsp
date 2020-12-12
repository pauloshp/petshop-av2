<%-- 
    Document   : index
    Created on : 12/12/2020, 15:19:38
    Author     : henri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PetShop</title>
    </head>
    <body>
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <h1>Bem-Vindo - PetShop!</h1>
        
        <div>
            <a href="${path}/login">Login</a>
        </div>
        
    </body>
</html>
