<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <p style="border-style: dotted; border-color: violet; border-width: 5px 5px 5px 5px;">
                SEGUNDO PARCIAL TEM-742 <br>
                Nombre: Sayda Villca Apaza<br>
                Carnet: 12572762LP <br>
            </p>
        <h1>Gestion de Almacenes</h1>
        <a href="Inicio?action=add">Nuevo Producto</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}"onclick="return(confirm('Estas seguro de Eliminar?'))">Eliminar</a></td>
                </tr>
            </c:forEach>

        </table>
</center>
    </body>
</html>
