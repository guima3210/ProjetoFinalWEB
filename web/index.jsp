<%-- 
    Document   : index
    Created on : 05/10/2020, 08:51:34
    Author     : guima
--%>

<%@page contentType="text/html"  import="java.text.*"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Pessoa</title>
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
        <% 
            String rep = request.getParameter("ret");  
            String rep2 = request.getParameter("sai"); 
        if(rep != null){
            out.println("usuario ou senha incorretos");
        }
        if(rep2 != null){
            out.println("esse usuario não pertence a equipe");
        }
        %>
    </body>
</html>
