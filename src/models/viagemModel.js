
var database = require("../database/config")

function listar() {
    var instrucao = `
        SELECT * FROM viagem;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function cadastrar(fk_usuario,fk_destino,dtIda,dtVolta, meta_orcamento, orcamento_arrecadado, anotacao) {
    var instrucao = `
        INSERT INTO viagem (fk_usuario,fk_destino,dtIda,dtVolta, meta_orcamento, orcamento_arrecadado, anotacao,fk_status) VALUES (${fk_usuario},${fk_destino},'${dtIda}','${dtVolta}',${meta_orcamento},${orcamento_arrecadado}, '${anotacao}', 1);
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function buscarPorUsuario(fk_usuario) {
  var instrucaoSql = `select v.id_viagem, v.dtIda, v.dtVolta, d.nome, d.uf, d.imagem_destino, s.titulo from viagem v JOIN destino d on d.id_destino = v.fk_destino JOIN status s on s.id_status = v.fk_status WHERE v.fk_usuario = '${fk_usuario}';`;

  return database.executar(instrucaoSql);
}

function buscarViagemAtual(fk_usuario) {
  var instrucaoSql = `SELECT v.*, d.imagem_destino, d.nome, d.descricao, d.uf, d.regiao FROM viagem v JOIN destino d ON d.id_destino = v.fk_destino WHERE v.fk_usuario = ${fk_usuario} AND v.fk_status = 1;`;

  return database.executar(instrucaoSql);
}

module.exports = {
    cadastrar,
    listar, 
    buscarPorUsuario,
    buscarViagemAtual
};