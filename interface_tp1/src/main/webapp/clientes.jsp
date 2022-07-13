<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <%@ include file="jsp/head.jsp" %>
    </head>

    <body>
        <%@ include file="jsp/menu.jsp" %>
            <div id="principal">
                <h1 id="titulo">Mantenimiento de Clientes</h1>
                <form>
                    <table>
                        <tr>
                            <td><label class="label">Nombre: </label></td>
                            <td><input type="text" class="input" name="nombre" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Apellido: </label></td>
                            <td><input type="text" class="input" name="apellido" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Estado Civil: </label></td>
                            <td>
                                <select name="estadoCivil" class="input2" >
                                    <!--
                                    <option value="SOLTERO">SOLTERO</option>
                                    <option value="CASADO">CASADO</option>
                                    <option value="VIUDO">VIUDO</option>
                                    <option value="DIVORCIADO">DIVORCIADO</option>
                                    -->
                                    <%@ include file="jsp/estadoCivil.jsp" %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label class="label">Cuit: </label></td>
                            <td><input type="text" name="cuit" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Dirección: </label></td>
                            <td><input type="text" name="direccion" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Teléfono: </label></td>
                            <td><input type="text" name="telefono" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Email: </label></td>
                            <td><input type="email" name="email" class="input" /></td>
                        </tr>
                        <tr>
                            <td><label class="label">Comentarios: </label></td>
                            <td><input type="text" name="comentarios" class="input" /></td>
                        </tr>
                        <tr>
                            <td><input type="reset" value="Borrar" class="button" /></td>
                            <td><input type="submit" value="Aceptar" class="button" /></td>
                        </tr>
                    </table>
                </form>
            </div>
                           
            <%@ include file="jsp/altaCliente.jsp" %>
            <div id='principal'>
                <form>
                    <table>
                        <tr>
                            <td><label class="label">Buscar Apellido: </label></td>
                            <td><input type="text" name="buscarApellido" class="input"/></td>
                        </tr>
                    </table>
                </form>
                <div class="tabla">
                    <%@ include file="jsp/tablaCliente.jsp" %>
                </div>
            </div>
    </body>
    </html>