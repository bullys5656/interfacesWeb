<%@page import="ar.org.centro8.curso.java.enums.Rubro"%>
<%
    for(Rubro e: Rubro.values()){
        out.println("<option value='"+e+"'>"+e+"</option>");
    }
%>