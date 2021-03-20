<%-- 
    Document   : Entradasaida
    Created on : 20/03/2021, 03:36:34
    Author     : guima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        
        <script>
            $(function() {
                $("#remedio").keyup(function() {
                    var pesq = $("#remedio").val();

                    $.ajax({
                        url: "Remedios",
                        type: "GET",
                        data: "pesq=" + pesq,
                        success: function(data) {
                            $("#listamedicamentos").html(data);
                        },
                        error: function(xhr) {
                            $("#listamedicamentos").html(xhr.responseText);
                        }
                    });
                });
            });            
        </script>
    </head>
    <body>
         <header class="header"><a href="index.jsp"><img src="https://cdn.discordapp.com/attachments/695407830660022286/708101674442555472/f2da5279-05f2-4a9a-8f5c-68788051317b.png" width=150></a>
             
        </header>
        
        
        <footer class="grid3">
            <h5>SIX DESENVOLVIMENTO</h5>
            <ul>
                <li>Telefone:121322</li>
                <li>Email:guim@outlo</li>
                <li>Endereco: rua joao</li>
                
            </ul>
        </footer>
    </body>
</html>
