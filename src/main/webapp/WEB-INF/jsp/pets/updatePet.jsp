<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <title>Editar Pet</title>
    </head>
    <body>
        <c:set var="path" value="${pageContext.request.contextPath}"/>
        <div class="container" align="center">
            <h1>Editar Pet</h1>
            <h6>Atualizando pet: ${pet.nome}</h6>
            <form action="${path}/pets/update" method="post">
            <div class="form-group" align="center">
              <input type="hidden" name="pet.id" value="${pet.id}"/>
              <input type="text" class="form-control col-3 mt-2" name="pet.nome" placeholder="Nome" value="${pet.nome}">
              <input type="text" class="form-control col-3 mt-2" name="pet.cpf_cliente" placeholder="CPF" value="${pet.cpf_cliente}">
              <input type="text" class="form-control col-3 mt-2" name="pet.especie" placeholder="Telefone" value="${pet.especie}">
              <input type="text" class="form-control col-3 mt-2" name="pet.raca" placeholder="E-mail" value="${pet.raca}">
              <button type="submit" class="btn btn-primary mt-3"><i class="fas fa-edit"></i> Editar</button>
            </div>
        </form>
        </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" data-auto-replace-svg="nest"></script>            
    </body>
</html>



