<%-- 
    Document   : MarcaConsulta
    Created on : 19/03/2021, 14:29:13
    Author     : guima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="form1" method="post" action="Valida" align="center">
            <table border="1">
                <tr><td><h1>login</h1></td>
                    <td><input type="text" name="login"></td>
            </tr> 
            <tr><td><h1>senha</h1></td>
                <td><input type="text" name="senha"></td>
            
            </tr>
            <tr><td colspan="2" align="center"><input type="submit" value="Entrar"></td></tr>
           
           </table>
        </form>
    </body>
</html>
