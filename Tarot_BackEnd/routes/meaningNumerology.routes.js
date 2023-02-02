const express = require("express");
const router = express.Router();
const meaningNumerologyController = require("../controller/meaningNumerology");

router.get("/", meaningNumerologyController.getAllMeaningNumerology)

module.exports = router