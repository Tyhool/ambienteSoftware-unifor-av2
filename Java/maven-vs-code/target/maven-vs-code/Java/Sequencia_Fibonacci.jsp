<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../resources/css/styles.css" />
	<title>Sequencia de Fibonacci</title>
</head>
<body>
	<%

		// Obtém o número de termos da sequência
		String nStr = request.getParameter("n");

		int n = 0;
		
		if (nStr != null) 
			n = Integer.parseInt(nStr);


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
		
		<% 	%>
	<div class="container">
    	<div class="box">
			<div>
				<h1>Sequencia de Fibonacci</h1>
				<div>
					<form action="Sequencia_Fibonacci.jsp">
						<label for="n">Número de termos:</label>
						<input type="number" id="n" name="n" required>
						<button id="Calcular" type="submit">Calcular</button>
					</form>
					<br>
					<%= resultado %>
				</div>
				<div>
					<a href="../index.jsp"><input class="voltar" type="submit" value="Voltar" /></a>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>
