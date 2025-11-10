var viagemModel = require("../models/viagemModel");


function buscarPorUsuario(req, res) {
  var fk_usuario = req.body.fk_usuario;

  viagemModel.buscarPorUsuario(fk_usuario).then((resultado) => {
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

function cadastrar(req, res) {
  var fk_usuario = req.body.fk_usuario;
  var fk_destino = req.body.fk_destino;
  var dtIda = req.body.dtIda;
  var dtVolta = req.body.dtVolta;
      viagemModel.cadastrar(fk_usuario, fk_destino, dtIda, dtVolta).then((resultado) => {
        res.status(201).json(resultado);
      }); 
}


module.exports = {
    listar,
    cadastrar,
    buscarPorUsuario,
    buscarViagemAtual
}