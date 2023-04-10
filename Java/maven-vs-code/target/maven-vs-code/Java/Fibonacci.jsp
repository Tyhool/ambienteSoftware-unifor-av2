<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sequencia de Fibonacci</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/styles.css" />
</head>
<body>
    <div class="container">
    	<div class="box">
            <h1>Sequencia de Fibonacci</h1>
            <%

                // Obtém o número de termos da sequência
                int n = Integer.parseInt(request.getParameter("n"));

                // Calcula a sequência de Fibonacci
                int primeiroTermo = 0;
                int segundoTermo = 1;
                int proximoTermo;
                String resultado = "Sequencia de Fibonacci ate " + n + ": " + primeiroTermo + ", " + segundoTermo;

                for (int i = 3; i <= n; i++) {
                    proximoTermo = primeiroTermo + segundoTermo;
                    resultado += ", " + proximoTermo;
                    primeiroTermo = segundoTermo;
                    segundoTermo = proximoTermo;
                }

                // Imprime o resultado no corpo da página
                %>
                <%= resultado %>
                <% 
            %>
            <div>
                <a href="Sequencia_Fibonacci.jsp"><input class="voltar" type="submit" value="Voltar" /></a>
            </div>
        </div>
    </div>
</body>
</html>