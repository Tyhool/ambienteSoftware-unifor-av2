<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../resources/css/styles.css" />
    <title>Contagem</title>
</head>
<body>

    <%

    String numeroStr = request.getParameter("numero");
    String resultadoStr = request.getParameter("resultado");

    int numero = 0;
    int resultado = 0;

    
    if (numeroStr != null) 
        numero = Integer.parseInt(numeroStr);
    if (resultadoStr != null) 
        resultado = Integer.parseInt(resultadoStr);

    resultado = resultado + numero;


    %>

    <div class="container">
        <div class="box">
            <main>
                <h1>Soma de Conjunto</h1>
                <div class="input">
                    <form action="SomaDeConjunto.jsp" method="get">
                        <div class="input">
                            <label for="numero">Insira um número:</label>
                            <input type="number" id="numero" name="numero">
                            <button type="submit">Adicionar</button>   
                        </div>
                        <input type="hidden" id="resultado" name="resultado" value="<%= resultado %>">
                        <p>Quantidade de Numeros: <%= resultado %> </span></p>

                    </form>
                </div>
           </main>
            <div>
                <a href="../index.jsp"><input class="voltar" type="submit" value="Voltar" /></a>
            </div>
        </div>
    </div>

</body>
</html>