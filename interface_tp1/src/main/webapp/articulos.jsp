<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="jsp/head.jsp" %>
</head>

<body>
    <%@ include file="jsp/menu.jsp" %>
    <div id="principal">
        <h1 id="titulo">Mantenimiento de Articulos</h1>
        <form>
                    <table>
                        <tr>
                            <td><label class="label">Descripcion: </label></td>
                            <td><input type="text" class="input" name="descripcion" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Rubro: </label></td>
                            <td>
                                <select name="rubro" class="input2" >                           
                                    <%@ include file="jsp/rubro.jsp" %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="label">Costo: </label></td>
                            <td><input type="text" name="costo" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Precio: </label></td>
                            <td><input type="text" name="precio" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Stock: </label></td>
                            <td><input type="text" name="stock" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Stock_minimo: </label></td>
                            <td><input type="text" name="stock_minimo" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Stock_maximo: </label></td>
                            <td><input type="text" name="stock_maximo" class="input" /></td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Borrar" class="button" /></td>
                            <td><input type="submit" value="Aceptar" class="button" /></td>
                        </tr>
                    </table>
                </form>
            </div>
                           
            <%@ include file="jsp/altaArticulo.jsp" %>
            <div id='principal'>
                <form>
                    <table>
                        <tr>
                            <td><label class="label">Nombre del producto: </label></td>
                            <td><input type="text" name="buscarDescripcion" class="input"/></td>
                        </tr>
                    </table>
                </form>
                <div class="tabla">
                    <%@ include file="jsp/tablaArticulo.jsp" %>
                </div>
            </div>
    </div>
</body>

</html>