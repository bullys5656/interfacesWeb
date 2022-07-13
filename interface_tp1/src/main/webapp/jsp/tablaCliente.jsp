<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.ClienteRepository"%>
<%@page import="ar.org.centro8.curso.java.entities.Cliente"%>
<%@page import="ar.com.eduit.curso.java.utils.html.HtmlTable"%>
<%
  out.println(
    "<div class='tablaListado'>"+
          new HtmlTable<Cliente>().getTable(
                  new ClienteRepository(Connector.getConnection())
                    .getLikeApellido(request.getParameter("buscarApellido"))                
          )+
    "</div>"
  );
%>