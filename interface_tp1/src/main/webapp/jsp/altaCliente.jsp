<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_ClienteRepository"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.ClienteRepository"%>
<%@page import="ar.org.centro8.curso.java.entities.Cliente"%>
<%@page import="ar.org.centro8.curso.java.enums.EstadoCivil"%>
<%
    try {
        String nombre=request.getParameter("nombre");
        String apellido=request.getParameter("apellido");
        EstadoCivil estadoCivil=EstadoCivil.valueOf(request.getParameter("estadoCivil"));
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
        out.println("<div class='error'>Falta ingresar parámetros!</div>");
    }
%>
