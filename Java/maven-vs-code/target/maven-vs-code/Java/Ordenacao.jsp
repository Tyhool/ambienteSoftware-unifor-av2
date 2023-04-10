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

    

    <div class="container">
        <div class="box">
            <main>
                <h1>Ordenação</h1>
                <div class="input">
                           
                    <form>
                        <label for="lista">Insira uma lista separada por vírgulas:</label>
                        <input type="text" id="lista" name="lista"><br><br>
                        <input type="button" value="Ordenar" onclick="ordenarLista()">
                    </form>
                    <div id="resultado"></div>

                </div>
           </main>
            <div>
                <a href="../index.jsp"><input class="voltar" type="submit" value="Voltar" /></a>
            </div>
        </div>
    </div>

</body>
</html>