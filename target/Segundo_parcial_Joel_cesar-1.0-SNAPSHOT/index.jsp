<%@page import="java.util.ArrayList"%>
<%@page import="com.emergente.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
    

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#F39C12 ">
       <center><table border = " 1 " >
             <tr>
                 <th>
                    
                        <h2> SEGUNDO PARCIAL TEM - 742 </h2>
                       <h3> Nombre : JOEL CESAR TICONIPA HUALLPA </h3>
                        <h3> Carnet : 9973585 LP </h3> 
                 </th>
             </tr>
        </table></center>
    <center> 
    <center> 
        <h1>Listado de Productos</h1> </center>
        
        <a href="MainController?op=nuevo" color="white"> <h3>Nuevo</h3></a>
        
        <table border="1"  bordercolor="black" cellspacing="0">
            
            <tr>
                <th height="50" width="150"  bgcolor="#F39C13 ">Id</th>
                <th height="50" width="150"  bgcolor="#F39C13 ">Descripción</th>
                <th height="50" width="150"  bgcolor="#F39C13 ">Cantidad</th>
                <th height="50" width="150"  bgcolor="#F39C12 ">Precio</th>
                 <th height="50" width="150"  bgcolor="#F39C13 ">Categoria</th>
                <th height="50" width="150"  bgcolor="#F39C13 "></th>
                <th height="50" width="150"  bgcolor="#F39C13"></th>
            </tr>
            <%
                if (lista != null) {
                        
                    for (Producto item : lista) {
                            
                        
                %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                 <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de Eliminar?')">Eliminar</a></td>
            </tr>
            
            <%
                }
             }
                %>
        </table>
    </body>
</html>
