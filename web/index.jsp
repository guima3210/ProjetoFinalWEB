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
        <title>CiaClinic</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>
    <body>
        <header class="header"><a href="index.jsp"><img src="https://cdn.discordapp.com/attachments/695407830660022286/708101674442555472/f2da5279-05f2-4a9a-8f5c-68788051317b.png" width=150></a>
            <nav>
                <ul class="menu">                
                    <li><a href="">Menu1</a></li>
                    <li><a href="">Menu2</a></li>
                </ul>
            </nav>
        </header>
        <div class="row">
            <div clas class="masi">
            <div class="main">
                
                  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGoZ-D0VTsSaXsIgkAHrBsZFwaCL6RlUcoXw&usqp=CAU" class="img">
                  <p id="paragrafo">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
            </div>                
                
            <div class="side">
        <form name="form1" method="post" action="Valida" align="center">
            
                <h2>login</h2>
                    <input type="text" name="login">
            
                <h2>senha</h2>
                <input type="text" name="senha">
            
            
            <input type="submit" value="Entrar">
           
        </form></div></div>
                    
            
            <div class="footer">
            <h5>SIX DESENVOLVIMENTO</h5>
            <iframe src="https://www.youtube.com/embed/kM0Ee0KnhlI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <ul>
                <li>Telefone:121322</li>
                <li>Email:guim@outlo</li>
                <li>Endereco: rua joao</li>
                
            </ul>
        
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
    
            </div></div>
        </body>
</html>
