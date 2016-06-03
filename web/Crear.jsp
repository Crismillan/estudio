<%-- 
    Document   : Crear
    Created on : 02-06-2016, 09:00:52 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Crear Nuevo Usuario</h1>
        <form method="post" action="ServletUsuario">
        <table border="1">
            
                        <tr>
                <td>nombre</td><td><input type="text"name="nombre" </td>                               
            </tr>
            <tr>
                <td>apepat</td><td><input type="text"name="apepat" </td>               
                
            </tr>
            <tr>
                <td>telefono</td><td><input type="text"name="telefono" </td>               
                
            </tr>
            <tr>
                <td><input type="submit"name="guardar" value="guardar" </td>               
                
            </tr>
            
        </table>
        
        
        </form>
        
    </body>
</html>
