<%-- 
    Document   : updateCustomer
    Created on : 12/12/2020, 16:29:32
    Author     : kaio max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Atualizar Pet</title>
    </head>
    <body>
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <h1>Atualizando Pet: ${pet.nome}</h1>
        <div>
            <form action="${path}/pets/update" method="post">
                <input type="hidden" name="pet.id" value="${pet.id}"/>
                <label>Nome:</label>
                <input type="text" name="pet.nome" placeholder="Nome" value="${pet.nome}"/>
                <label>Cpf do Cliente:</label>
                <input type="text" name="pet.cpf_cliente" placeholder="CPF" value="${pet.cpf_cliente}"/>
                <label>Especie:</label>
                <input type="text" name="pet.especie" placeholder="Especie" value="${pet.especie}"/>
                <label>Raça:</label>
                <input type="text" name="pet.raca" placeholder="Raça" value="${pet.raca}"/>
                <button type="submit">Atualizar</button>
            </form>
        </div>
                
    </body>
</html>
