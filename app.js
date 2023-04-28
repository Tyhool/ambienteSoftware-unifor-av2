const express = require('express');
const app = express();

app.get("/", function(req, res){
    res.send("Bem vindo usuario");
})
app.get("/professor", function(req, res){
    res.send("<h1>Bem vindo professor</h1>");
})
// app.get("/professor/:parametro", function(req, res){
//     //req - request - dados enviados pelo cliente
//     //res - response - dados enviados do servidor para o cliente
//     res.send("<h1>Professor consulta</h1>" + req.params.parametro);
// })
app.get("/professor/nuvem/:nome?", function(req, res){
    var nome = req.params.nome;
    if(nome){
        res.send("<h1>Professor consulta</h1>" + nome + " para liberar.");
    }else{
        res.send("<h1>Professor libera!</h1>");
    }
})

app.listen(3000,function(erro){
    
    if(erro){
        console.log("erro ao iniciar.");
    }else{
        console.log('Servidor iniciado');
    }
})
