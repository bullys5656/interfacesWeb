<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_ArticuloRepository"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.ArticuloRepository"%>
<%@page import="ar.org.centro8.curso.java.entities.Articulo"%>
<%@page import="ar.org.centro8.curso.java.enums.Rubro"%>
<%
    try {
        String descripcion=request.getParameter("descripcion");
        String apellido=request.getParameter("apellido");
        Rubro rubro=Rubro.valueOf(request.getParameter("rubro"));
        String cuit=request.getParameter("cuit");
        String direccion=request.getParameter("direccion");
        String telefono=request.getParameter("telefono");
        String email=request.getParameter("email");
        String comentarios=request.getParameter("comentarios");
        Cliente cliente=new Cliente(nombre, apellido, estadoCivil, cuit, direccion, telefono, email, comentarios);
        I_ClienteRepository cr=new ClienteRepository(Connector.getConnection());
        cr.save(cliente);
        out.println("<div class='info'>Se ingreso un cliente id: "+cliente.getId()+"</div>");
    } catch (Exception e) {
        out.println("<div class='error'>Falta ingresar par�metros!</div>");
    }
%>