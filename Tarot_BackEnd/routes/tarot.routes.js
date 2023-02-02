const express = require("express");
const router = express.Router();
const tarotController = require("../controller/tarot.controller");
router.get("/", tarotController.getTenCards);
module.exports = router;