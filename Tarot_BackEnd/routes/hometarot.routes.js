const express = require("express");
const router = express.Router();
const hometarotController = require("../controller/hometarot.controller")

router.get("/", hometarotController.getAll)

module.exports = router