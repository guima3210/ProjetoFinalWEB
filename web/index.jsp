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
        <div id="wrap">
        <header class="header"><a href="index.jsp"><img src="https://cdn.discordapp.com/attachments/695407830660022286/708101674442555472/f2da5279-05f2-4a9a-8f5c-68788051317b.png" width=150></a>
            <nav>
                <ul class="menu">                
                    <li><a href="">Menu1</a></li>
                    <li><a href="">Menu2</a></li>
                </ul>
            </nav>
        </header>
            
          <section class="grid2">
              <div class="content">
                  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGoZ-D0VTsSaXsIgkAHrBsZFwaCL6RlUcoXw&usqp=CAU" class="img">
                  <p id="paragrafo">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>
                            
                </div>
            <div class="sidebar">
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
        </form></div>
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
    </div>
        </body>
</html>
