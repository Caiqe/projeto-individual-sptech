var express = require("express");
var router = express.Router();

var viagemController = require("../controllers/viagemController");

router.post("/cadastrar", function (req, res) {
    // função a ser chamada quando acessar /carros/cadastrar
    viagemController.cadastrar(req, res);
});

router.get("/listar", function (req, res) {
    // função a ser chamada quando acessar /carros/listar
    viagemController.listar(req, res);
});

router.post("/buscar", function (req, res) {
    viagemController.buscarPorUsuario(req, res);
});
router.post("/buscarKPI", function (req, res) {
    viagemController.buscarKpis(req, res);
});
router.post("/buscarAtual", function (req, res) {
    viagemController.buscarViagemAtual(req, res);
});
router.put("/concluir", function (req, res) {
    viagemController.concluirViagem(req, res);
});

router.put("/atualizar", function (req, res) {
    viagemController.atualizarViagem(req, res);
});

router.get("/buscarGraficos", function (req, res) {
    // função a ser chamada quando acessar /carros/listar
    viagemController.buscarGraficos(req, res);
});


module.exports = router;