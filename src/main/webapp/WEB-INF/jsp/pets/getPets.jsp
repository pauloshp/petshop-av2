<%-- 
    Document   : getPets
    Created on : 12/12/2020, 16:30:48
    Author     : kaio max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pets Cadastrados</title>
    </head>
    <body>
        
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <div>
            <h1>Pets cadastrados</h1>
            <a href="${path}/pets/new">Inserir um novo pet</a>
            <a href="${path}/main/home">Home</a>
        </div>

        <div>
            <table>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>CPF do Dono</th>
                        <th>Especie</th>
                        <th>Raça</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pet" items="${petList}">
                        <tr>
                            <td>${pet.nome}</td>
                            <td>${pet.cpf_cliente}</td>
                            <td>${pet.especie}</td>
                            <td>${pet.raca}</td>
                            <td>
                                <a href="${path}/pets/id/${pet.id}">Editar</a>
                                <form action="${path}/pets/delete" method="post">
                                    <input type="hidden" name="pet.id" value="${pet.id}"/>
                                    <button>Excluir</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
