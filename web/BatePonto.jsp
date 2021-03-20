<%-- 
    Document   : BatePonto
    Created on : 20/03/2021, 03:09:35
    Author     : guima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>
    <body>
        
        <header class="header"><a href="index.jsp"><img src="https://cdn.discordapp.com/attachments/695407830660022286/708101674442555472/f2da5279-05f2-4a9a-8f5c-68788051317b.png" width=150></a>
            
        </header>
            
                <section class="grid2">  
                    <form name="form1" method="post" action="Valida" align="center">
            
                <h2>login</h2>
                    <input type="text" name="login">
            
                <h2>senha</h2>
                <input type="text" name="senha">
            
                <br><br>
            <input type="submit" value="Entrar">
           
        </form>
                    </section>
            
            <footer class="grid3">
            <h5>SIX DESENVOLVIMENTO</h5>
            <ul>
                <li>Telefone:121322</li>
                <li>Email:guim@outlo</li>
                <li>Endereco: rua joao</li>
                
            </ul>
        </footer>
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
