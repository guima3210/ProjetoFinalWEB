<%-- 
    Document   : Cadfunci
    Created on : 20/03/2021, 16:12:14
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
        <div class="row">
            <div class="mainn">
            
           <div class="grid-container2" >
               <form name="form1" method="post" action="Cadfuncionario" align="center">
            <div class="itemgrid2 ">
                RG:
                <input type="text" name="rg">
            
                    NOME:<input type="text" name="nome">
                
                Login:
                <input type="text" name="login">
                Senha:
                    <input type="text" name="senha">
                    </div>
                   <div class="itemgrid2 ">
                Salario:
                    <input type="text" name="salario">
            
                Email:<input type="text" name="email">
                
                Numero Fixo:
                <input type="text" name="numerof"><br>
                Numero Carteira de trabalho:
                    <input type="text" name="numeroct">
                    </div>
                   <div class="itemgrid2 ">
                Idade:
                    <input type="text" name="idade">
            
                    </div>
                    
            
                
                
                <input type="submit" value="Sair">
           
        </form>
            </div></div>
            
        <div class="footerr">
            <h5>SIX DESENVOLVIMENTO</h5>
            <iframe src="https://www.youtube.com/embed/kM0Ee0KnhlI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <ul>
                <li>Telefone:121322</li>
                <li>Email:guim@outlo</li>
                <li>Endereco: rua joao</li>
                
            </ul>
        </div></div>
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
