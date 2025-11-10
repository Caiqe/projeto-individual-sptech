
var database = require("../database/config")

function listar() {
    var instrucao = `
        SELECT * FROM viagem;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function cadastrar(fk_usuario,fk_destino,dtIda,dtVolta) {
    var instrucao = `
        INSERT INTO viagem (fk_usuario,fk_destino,dtIda,dtVolta,fkStatus) VALUES (${fk_usuario},${fk_destino},'${dtIda}','${dtVolta}', 1);
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function buscarPorUsuario(fk_usuario) {
  var instrucaoSql = `SELECT * FROM viagem WHERE fk_usuario = '${fk_usuario}'`;

  return database.executar(instrucaoSql);
}

function buscarViagemAtual(fk_usuario) {
  var instrucaoSql = `SELECT * FROM viagem WHERE fk_usuario = ${fk_usuario} AND fk_status = 1`;

  return database.executar(instrucaoSql);
}

module.exports = {
    cadastrar,
    listar, 
    buscarPorUsuario,
    buscarViagemAtual
};