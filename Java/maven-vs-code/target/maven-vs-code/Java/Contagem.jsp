<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.utils.teste" %>

<html>
<head>
	<meta charset="UTF-8">
	<title>Sequencia de Fibonacci</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
	<h1>dddddddd</h1>

    <%
    /*
        // Recupera a lista de números da sessão (se não existir, cria uma nova)
        String numeroStr = request.getParameter("numero");

        
        // Recupera o número enviado pelo formulário
        Double novoNumero = null;
        try {
            // novoNumero = Double.parseDouble(numeroStr);
        } catch (NumberFormatException e) {
            out.println("Insira um número válido.");
            return;
        }
        
        // Adiciona o número à lista e atualiza o resumo      
        numeros.add(novoNumero);
        int qtdInteiros = 0;
        int qtdFloats = 0;
        for (Double numero : numeros) {
            if (numero % 1 == 0) {
                qtdInteiros++;
            } else {
                qtdFloats++;
            }
        }
        session.setAttribute("qtdInteiros", qtdInteiros);
        session.setAttribute("qtdFloats", qtdFloats);

        // Redireciona de volta para a página principal
        response.sendRedirect("Sequencia_Contagem.jsp");
        */


        TesteClass c = new TesteClass();
        out.println(c.teste());


        String numeroStr = request.getParameter("numero");

        teste();
        %>

    </body>
    </html>