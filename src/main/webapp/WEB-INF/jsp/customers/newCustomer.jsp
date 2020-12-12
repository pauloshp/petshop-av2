<%-- 
    Document   : newCustomer
    Created on : 12/12/2020, 16:28:46
    Author     : kaio max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Cliente</title>
    </head>
    <body>
        
        <main>
            <h1>Novo cliente</h1>
            <div class="container">
                <form action="${path}/customers/save" method="post">
                    <input type="text" name="customer.nome" placeholder="Nome" value="${customer.nome}"/>
                    <input type="text" name="customer.cpf" placeholder="CPF" value="${customer.cpf}"/>
                    <input type="text" name="customer.telefone" placeholder="Telefone" value="${customer.telefone}"/>
                    <input type="text" name="customer.email" placeholder="E-mail" value="${customer.email}"/>
                    <button type="submit">Cadastrar</button>
                </form>
            </div>
        </main>
                    
    </body>
</html>
