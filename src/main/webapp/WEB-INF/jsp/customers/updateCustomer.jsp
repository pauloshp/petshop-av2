<%-- 
    Document   : updateCustomer
    Created on : 12/12/2020, 16:28:05
    Author     : kaio max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar cliente</title>
    </head>
    <body>
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <h1>Atualizando cliente: ${customer.nome}</h1>
        <div>
            <form action="${path}/customers/update" method="post">
                <input type="hidden" name="customer.id" value="${customer.id}"/>
                <label>Nome:</label>
                <input type="text" name="customer.nome" placeholder="Nome" value="${customer.nome}"/>
                <label>Cpf:</label>
                <input type="text" name="customer.cpf" placeholder="CPF" value="${customer.cpf}"/>
                <label>Email:</label>
                <input type="text" name="customer.email" placeholder="E-mail" value="${customer.email}"/>
                <label>Telefone</label>
                <input type="text" name="customer.telefone" placeholder="Telefone" value="${customer.telefone}"/>
                <button type="submit">Atualizar</button>
            </form>
        </div>
    </body>
    </body
</html>
