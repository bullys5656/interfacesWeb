<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.ArticuloRepository"%>
<%@page import="ar.org.centro8.curso.java.entities.Articulo"%>
<%@page import="ar.com.eduit.curso.java.utils.html.HtmlTable"%>
<%
  out.println(
    "<div class='tablaListado'>"+
          new HtmlTable<Articulo>().getTable(
                  new ArticuloRepository(Connector.getConnection())
                    .getLikeDescripcion(request.getParameter("buscarDescripcion"))                
          )+
    "</div>"
  );
%>