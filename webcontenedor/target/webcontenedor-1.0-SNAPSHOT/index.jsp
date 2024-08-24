<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Formulario" %>
</h1>
<br/>
    <div class="container">
        <h1>Formulario de ejemplo</h1>
        <form action="processForm" method="post" class="action">
            <label class="fondo" for="nombre">Nombre</label>
            <input class="campo" type="text" id="nombre" name="nombre" required><br><br>
            <input class="boton" type="submit" value="enviar">
        </form>
        <%-- mostrar mensaje si existe--%>
        <%
            if(request.getAttribute("mensaje")!=null);{
        %>
        <p>
            <%= request.getAttribute("mensaje")%>
        </p>
        <%}%>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>