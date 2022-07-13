<%@page import="ar.org.centro8.curso.java.enums.EstadoCivil"%>
<%
    for(EstadoCivil e: EstadoCivil.values()){
        out.println("<option value='"+e+"'>"+e+"</option>");
    }
%>