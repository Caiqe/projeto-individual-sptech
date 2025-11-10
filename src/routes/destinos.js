var express = require("express");
var router = express.Router();

var destinoController = require("../controllers/destinoController");

router.get("/listar", function (req, res) {
    // função a ser chamada quando acessar /destinos/listar
    destinoController.listar(req, res);
});

module.exports = router;