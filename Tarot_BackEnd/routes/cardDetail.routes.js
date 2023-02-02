const express = require("express");
const router = express.Router();
const cardDetailController = require("../controller/cardDetail.controller")

router.get("/:id", cardDetailController.getCardById)

module.exports = router