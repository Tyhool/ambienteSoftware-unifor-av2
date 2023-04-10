<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../resources/css/styles.css" />
    <title>Numero Primo</title>
</head>
<body>


<%
    

    String numeroStr = request.getParameter("numero");

    int numero = 0;

    String resultado = request.getParameter("resultado");
    
    if (numeroStr != null) 
        numero = Integer.parseInt(numeroStr);

    boolean primo = true;
    for (int i = 2; i < numero; i++) {
        if (numero % i == 0) {
            primo = false;
            break;
        }
    }


    if (primo==true) {
       resultado = "é primo";
    } else {
        resultado = "não é primo" ;
    }
%>

    <div class="container">
        <div class="box">
            <main>
                <h1>Número Primo</h1>
                <div class="input">
                    <form action="NumeroPrimo.jsp" method="get">
                        <main>
                            <div class="input">
                                <label>Número:</label>
                                <input type="number" id='numero' name="numero">
                
                                <button type="submit">É primo?</button>

                                <input type="hidden" id="resul" name="resul" value="<%= resultado %>">
                                <p>O resultado é :<span id="resultado"> <%= resultado %> </span> </p>
                
                            </div>
                           </main>
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