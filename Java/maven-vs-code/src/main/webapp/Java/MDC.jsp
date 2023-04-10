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

    String numeroAStr = request.getParameter("numeroA");
    String numeroBStr = request.getParameter("numeroB");
    
    int a = 0;
    int b = 0;
    int resto = 0;

    String resultado = request.getParameter("resultado");
    if (numeroAStr != null) 
        a = Integer.parseInt(numeroAStr);
    if (numeroBStr != null)
        b = Integer.parseInt(numeroBStr);  
        
        while (b != 0) {
            resto = a % b;
            a = b;
            b = resto;
            resultado = String.valueOf(a);
        }

    %>

    <div class="container">
        <div class="box">
            <main>
                <h1>MDC</h1>
                <div class="input">
                    <form action="MDC.jsp" method="get">
                            <label for="numeroA">Número A:</label>
                            <input type="number" id="numeroA" name="numeroA"><br>

                            <label for="numeroB">Número B:</label>
                            <input type="number" id="numeroB" name="numeroB"><br>

                            <button type="submit">Encontrar MDC</button>
                            <input type="hidden" id="resul" name="resul" value="<%= resultado %>">
                        <br>
                            <p>O MDC é :<span id="resultado"> <%= resultado %> </span> </p>
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