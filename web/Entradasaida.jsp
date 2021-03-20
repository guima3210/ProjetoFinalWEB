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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        
        <script>
            $(function() {
                $("#remedio").keyup(function() {
                    var pesq = $("#remedio").val();

                    $.ajax({
                        url: "Funcionarios",
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
            <nav>
                <ul class="menu">                
                    <li><a href="telagerente.jsp">Voltar</a></li>
                    <li><a href="BatePonto.jsp">Bate Ponto Saida</a></li>
                    
                </ul>
            </nav>
        </header>
        <div class="row">
            <div class="mainn">
                <<div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="form-group">
                        <label for="remedio">Funcionarios:</label>
                        <input type="text" class="form-control" id="remedio">
                    </div>                  
                </div>
                <div class="col-sm-4"></div>
            </div>
            
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div id="listamedicamentos"></div>
                </div>
                <div class="col-sm-2"></div>
            </div>
                
            </div>
        
        <div class="footer">
            <h5>SIX DESENVOLVIMENTO</h5>
            <iframe src="https://www.youtube.com/embed/kM0Ee0KnhlI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <ul>
                <li>Telefone:121322</li>
                <li>Email:guim@outlo</li>
                <li>Endereco: rua joao</li>
                
            </ul></div></div>
    </body>
</html>
