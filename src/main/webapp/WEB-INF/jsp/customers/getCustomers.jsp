<%-- 
    Document   : getCustomers
    Created on : 12/12/2020, 16:29:01
    Author     : kaio max
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes Cadastrados</title>
    </head>
    <body>
 
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <div>
            <h1>Clientes cadastrados</h1>
            <a href="${path}/customers/new">Inserir um novo cliente</a>
            <a href="${path}/main/home">Home</a>
        </div>

        <div>
            <table>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customersList}">
                        <tr>
                            <td>${customer.nome}</td>
                            <td>${customer.cpf}</td>
                            <td>${customer.email}</td>
                            <td>${customer.telefone}</td>
                            <td>
                                <a href="${path}/customers/id/${customer.id}">Editar</a>
                                <form action="${path}/customers/delete" method="post">
                                    <input type="hidden" name="customer.id" value="${customer.id}"/>
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
