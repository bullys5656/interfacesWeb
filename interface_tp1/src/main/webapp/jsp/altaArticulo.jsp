<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_ArticuloRepository"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.ArticuloRepository"%>
<%@page import="ar.org.centro8.curso.java.entities.Articulo"%>
<%@page import="ar.org.centro8.curso.java.enums.Rubro"%>
<%
    try {
        String descripcion=request.getParameter("descripcion");
        Rubro rubro= Rubro.valueOf(request.getParameter("rubro"));
        Double costo= Double.parseDouble(request.getParameter("costo"));
        Double precio= Double.parseDouble(request.getParameter("precio"));
        int stock= Integer.parseInt(request.getParameter("stock"));
        int stock_minimo= Integer.parseInt(request.getParameter("stock_minimo"));
        int stock_maximo= Integer.parseInt(request.getParameter("stock_maximo"));
        
        I_ArticuloRepository ar=new ArticuloRepository(Connector.getConnection());

        Articulo articulo = new Articulo(descripcion, rubro, costo, precio, stock, stock_minimo, stock_maximo);
        ar.save(articulo);
        
        out.println("<div class='info'>Se ingreso un articulo id: "+articulo.getId()+"</div>");
    } catch (Exception e) {
        out.println("<div class='error'>Falta ingresar parametros!</div>");
    }
%>
