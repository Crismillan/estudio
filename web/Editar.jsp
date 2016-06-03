<%-- 
    Document   : Crear
    Created on : 02-06-2016, 09:00:52 PM
    Author     : Administrador
--%>

<%@page import="accesodato.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Editar Usuario</h1>
        <br>
        <%  String usuario_id =request.getParameter("usuario_id"); %>
        
        
        <form method="post" action="ServletUsuario">
            
            
            
            <table border="1">
               
                 <tr>
                    <td>Usuarios_id</td><td><input type="text"name="usuario_id" readonly value="<% out.println(""+usuario_id); %>"</td>                               
                </tr>               
                
                
                
                
                <tr>
                    <% Coneccion con = new Coneccion();
                    con.setConsulta("select * from usuarios where usuario_id='"+usuario_id+"'");
                    

                       while(con.getResultado().next()){
                    
                    %>
                    
                    <td>nombre</td><td><input type="text"name="nombre" value="<% out.println(""+con.getResultado().getString("nombre") );%> " </td>                               
                </tr>
                <tr>
                    <td>apepat</td><td><input type="text"name="apepat"value="<% out.println(""+con.getResultado().getString("apepat") );%> " </td>               

                </tr>
                <tr>
                    <td>telefono</td><td><input type="text"name="telefono" value="<% out.println(""+con.getResultado().getString("telefono") );%> " </td>               

                </tr>
                <tr>
                    <td><input type="submit"name="editar" value="actualizar" </td>               

                </tr>

                   <% } %>
            </table>


        </form>

    </body>
</html>
