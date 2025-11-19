var viagemModel = require("../models/viagemModel");


function buscarPorUsuario(req, res) {
  var fk_usuario = req.body.id_usuario;

  viagemModel.buscarPorUsuario(fk_usuario).then((resultado) => {
    res.status(200).json(resultado);
  });
}

function buscarKpis(req, res) {
  var fk_usuario = req.body.id_usuario;

  viagemModel.buscarKpis(fk_usuario).then((resultado) => {
    res.status(200).json(resultado);
  });
}

function buscarViagemAtual(req, res) {
  var fk_usuario = req.body.fk_usuario;

  viagemModel.buscarViagemAtual(fk_usuario).then((resultado) => {
    res.status(200).json(resultado);
  });
}

function listar(req, res) {
  viagemModel.listar().then((resultado) => {
    res.status(200).json(resultado);
  });
}

function buscarGraficos(req, res) {
  viagemModel.buscarGraficos().then((resultado) => {
    res.status(200).json(resultado);
  });
}

function concluirViagem(req, res) {
  var id_viagem = req.body.id_viagem;

      viagemModel.concluirViagem(id_viagem).then((resultado) => {
        res.status(201).json(resultado);
      }); 
}

function atualizarViagem(req, res) {
  var id_viagem = req.body.id_viagem;
  var dtIda = req.body.dtIda;
  var dtVolta = req.body.dtVolta;
  var meta_orcamento = req.body.meta_orcamento;
  var orcamento_arrecadado = req.body.orcamento_arrecadado;
  var anotacao = req.body.anotacao;

      viagemModel.atualizarViagem(id_viagem,dtIda,dtVolta,meta_orcamento,orcamento_arrecadado,anotacao).then((resultado) => {
        res.status(201).json(resultado);
      }); 
}

function cadastrar(req, res) {
  var fk_usuario = req.body.fk_usuario;
  var fk_destino = req.body.fk_destino;
  var dtIda = req.body.dtIda;
  var dtVolta = req.body.dtVolta;
  var meta_orcamento = req.body.meta_orcamento;
  var orcamento_arrecadado = req.body.orcamento_arrecadado;
  var anotacao = req.body. anotacao;
      viagemModel.cadastrar(fk_usuario, fk_destino, dtIda, dtVolta, meta_orcamento, orcamento_arrecadado, anotacao).then((resultado) => {
        res.status(201).json(resultado);
      }); 
}


module.exports = {
    listar,
    cadastrar,
    buscarPorUsuario,
    buscarViagemAtual,
    concluirViagem,
    buscarKpis,
    buscarGraficos,
    atualizarViagem
}