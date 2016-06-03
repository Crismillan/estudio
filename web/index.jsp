<%-- 
    Document   : index
    Created on : 31-05-2016, 09:12:42 PM
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
        <h1>Listar usuario  </h1>
        <br>
        <a href="Crear.jsp">Crear usario</a>
        <br>
        <form method="post" action="index.jsp" >
            
            Buscar por nombre:<input type="text"name="buscarNombre"><input type="submit" value="Buscar">
            
            
        </form>
        
        
        <table border="1">
            <thead>
            <th>Id</th>
            <th>nombre</th>
            <th>apepat</th>
            <th>telefono</th>

        </thead>
        <tbody>

            
            
            
            <%
                Coneccion con = new Coneccion();
                
                if(request.getParameter("buscarNombre")!=null){
                    if(request.getParameter("buscarNombre").isEmpty()){
                    con.setConsulta("select * from usuarios where estado='activo'");
                    
                    }else{
                  String nombre=request.getParameter("buscarNombre");
                con.setConsulta("select * from usuarios where estado='activo' and nombre like'%"+nombre+"%'");
                    } 
                }else{
                
                con.setConsulta("select * from usuarios where estado='activo'");
                } 
                
                

            %>
            <%while (con.getResultado().next()) {%>

            <tr>
                <%
                    out.println("<td>" + con.getResultado().getString("Usuario_id") + "</td>");
                    out.println("<td>" + con.getResultado().getString("nombre") + "</td>");
                    out.println("<td>" + con.getResultado().getString("apepat") + "</td>");
                    out.println("<td>" + con.getResultado().getString("telefono") + "</td>");
                    out.println("<td>" + "<a href='ServletUsuario?eliminar=" + con.getResultado().getString("usuario_id") + "'>Eliminar</a>" + "</td>");
                    out.println("<td>" + "<a href='Editar.jsp?usuario_id=" + con.getResultado().getString("usuario_id") + "'>Editar</a>" + "</td>");


                %>
            </tr>

            <% }%>
        </tbody>



    </table>


</body>
</html>
