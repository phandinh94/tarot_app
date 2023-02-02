const express = require("express");
const router = express.Router();
const allcards = require("../controller/78cards.controller")

router.get("/", allcards.get78cards)

module.exports = router