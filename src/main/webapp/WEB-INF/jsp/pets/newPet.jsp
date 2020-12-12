<%-- 
    Document   : newPet
    Created on : 12/12/2020, 16:30:17
    Author     : kaio max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <c:set var="path" value="${pageContext.request.contextPath}"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Pet</title>
    </head>
    <body>
        
        <main>
            <h1>Novo Pet</h1>
            <div class="container">
                <form action="${path}/pets/save" method="post">
                    <input type="text" name="pet.nome" placeholder="Nome" value="${pet.nome}"/>
                    <input type="text" name="pet.cpf_cliente" placeholder="CPF do Dono" value="${pet.cpf_cliente}"/>
                    <input type="text" name="pet.especie" placeholder="Especie" value="${pet.especie}"/>
                    <input type="text" name="pet.raca" placeholder="Raça" value="${pet.raca}"/>
                    <button type="submit">Cadastrar</button>
                </form>
            </div>
        </main>
        
    </body>
</html>
