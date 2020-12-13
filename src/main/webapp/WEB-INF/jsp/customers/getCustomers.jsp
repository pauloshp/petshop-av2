<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <title>Clientes cadastrados</title>
    </head>
    <body>
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        
        <div class="container" align="center">
            <h1>Clientes cadastrados</h1>
            <a class="btn btn-secondary" href="${path}/main/home"><i class="fas fa-arrow-left"></i> Voltar</a>
            <a class="btn btn-primary ml-2" href="${path}/customers/new"><i class="fas fa-user-plus"></i> Inserir um novo cliente</a>
            <table class="table table-bordered mt-3">
                <thead>
                  <tr>
                    <th scope="col">Nome</th>
                    <th scope="col">CPF</th>
                    <th scope="col">Email</th>
                    <th scope="col">Telefone</th>
                    <th scope="col">Ações</th>
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
                          <a class="btn btn-warning btn-sm float-left" href="${path}/customers/id/${customer.id}"><i class="fas fa-user-edit"></i></a>
                          <form action="${path}/customers/delete" method="post">
                                <input type="hidden" name="customer.id" value="${customer.id}"/>
                                <button class="btn btn-danger btn-sm ml-2"><i class="fas fa-trash-alt"></i></button>
                          </form>
                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
            </table>
        </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" data-auto-replace-svg="nest"></script>                               
    </body>
</html>
