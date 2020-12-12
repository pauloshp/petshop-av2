<%-- 
    Document   : homePage
    Created on : 11/12/2020, 19:54:43
    Author     : henri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <h1>Home - PetShop!</h1>
        
        <div>
            <a href="${path}/customers">Lista de Clientes</a>
        </div>
        <div>
            <a href="${path}/pets">Lista de Pets</a>
        </div>
        
        <form action="${path}/logout" method="get">
            <button type="submit">Sair</button>
        </form>
        
    </body>
</html>
