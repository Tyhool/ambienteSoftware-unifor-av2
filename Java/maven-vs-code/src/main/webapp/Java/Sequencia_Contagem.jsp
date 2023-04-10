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

    String strQtdInteiros = request.getParameter("intQtdInteiros");
    String strQtdFloats = request.getParameter("intQtdFloats");

    int intQtdInteiros = 0;
    int intQtdFloats = 0;

    if (strQtdInteiros != null) 
        intQtdInteiros = Integer.parseInt(strQtdInteiros);
    if (strQtdFloats != null)
        intQtdFloats = Integer.parseInt(strQtdFloats);  

    String numeroStr = request.getParameter("numero");
    boolean ehInteiro = false;

    try {
        Integer.parseInt(numeroStr);
        intQtdInteiros++;
        ehInteiro = true;
    } 
    catch (Exception e){
    }
    
    try {
        Double.parseDouble(numeroStr);
        if (!ehInteiro)
            intQtdFloats++;
    } 
    catch(Exception e){ }

    %>
    <div class="container">
        <div class="box">
            <div>
                <form action="Sequencia_Contagem.jsp" method="get">
                    <label for="numero">Número:</label>
                    <input type="text" id="numero" name="numero" required>
                    <button type="submit">Adicionar</button>
                    <input type="hidden" id="intQtdInteiros" name="intQtdInteiros" value="<%= intQtdInteiros %>">
                    <input type="hidden" id="intQtdFloats" name="intQtdFloats" value="<%= intQtdFloats %>">
                </form>
            </div>
            <div>
                <p>Quantidade de inteiros: <span id="qtdInteiros"> <%= intQtdInteiros %></span></p>
                <p>Quantidade de floats: <span id="qtdFloats"> <%= intQtdFloats %> </span></p>
            </div>
            <div>
                <a href="../index.jsp"><input class="voltar" type="submit" value="Voltar" /></a>
            </div>
        </div>
    </div>

</body>
</html>
