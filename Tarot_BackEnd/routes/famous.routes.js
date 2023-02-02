const express = require("express");
const { getFamous } = require("../controller/famous.controller");
const router = express.Router()

router.get('/', getFamous)

module.exports = router;