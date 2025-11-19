
var database = require("../database/config")

function listar() {
    var instrucao = `
        SELECT * FROM viagem;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function buscarGraficos() {
    var instrucao = `select * from vw_dados_graficos_geral;`;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function cadastrar(fk_usuario,fk_destino,dtIda,dtVolta, meta_orcamento, orcamento_arrecadado, anotacao) {
    var instrucao = `
        INSERT INTO viagem (id_viagem, fk_usuario,fk_destino,dtIda,dtVolta, meta_orcamento, orcamento_arrecadado, anotacao,fk_status) VALUES (default,${fk_usuario},${fk_destino},'${dtIda}','${dtVolta}',${meta_orcamento},${orcamento_arrecadado}, '${anotacao}', 1);
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function buscarPorUsuario(fk_usuario) {
  var instrucaoSql = `select v.id_viagem, v.dtIda, v.dtVolta, d.nome, d.uf, d.imagem_destino, s.titulo from viagem v JOIN destino d on d.id_destino = v.fk_destino JOIN status s on s.id_status = v.fk_status WHERE v.fk_usuario = '${fk_usuario}';`;

  return database.executar(instrucaoSql);
}

function buscarKpis(fk_usuario) {
  var instrucaoSql = `SELECT v.dtIda, d.nome, (v.meta_orcamento-v.orcamento_arrecadado) as faltante FROM viagem v JOIN destino d ON d.id_destino = v.fk_destino WHERE v.fk_usuario = ${fk_usuario} AND v.fk_status = 1;`;

  return database.executar(instrucaoSql);
}

function concluirViagem(id_viagem) {
  var instrucaoSql = `UPDATE viagem SET fk_status = 2 WHERE id_viagem = ${id_viagem}`;

  return database.executar(instrucaoSql);
}

function atualizarViagem(id_viagem,dtIda,dtVolta,meta_orcamento,orcamento_arrecadado, anotacao) {
  var instrucaoSql = `UPDATE viagem SET dtIda = '${dtIda}', dtVolta = '${dtVolta}', meta_orcamento = ${meta_orcamento}, orcamento_arrecadado = ${orcamento_arrecadado}, anotacao = '${anotacao}' WHERE id_viagem = ${id_viagem};`;

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
    buscarViagemAtual,
    concluirViagem,
    buscarKpis,
    buscarGraficos,
    atualizarViagem
};