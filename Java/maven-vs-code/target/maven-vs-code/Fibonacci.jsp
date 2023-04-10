<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sequência de Fibonacci</title>
</head>
<body>
	<h1>Sequência de Fibonacci</h1>
	<%

        // Obtém o número de termos da sequência
        int n = Integer.parseInt(request.getParameter("n"));

        // Calcula a sequência de Fibonacci
        int primeiroTermo = 0;
        int segundoTermo = 1;
        int proximoTermo;
        String resultado = "Sequência de Fibonacci até " + n + ": " + primeiroTermo + ", " + segundoTermo;

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
</body>
</html>