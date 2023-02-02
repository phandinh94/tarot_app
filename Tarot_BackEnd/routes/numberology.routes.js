const express = require("express")
const router = express.Router()
const { getNumberOlogyPage, createNumberOlogyPage, getResultNumberOlogy, createResultNumberOlogy } = require("../controller/numberology.controller")


router.get('/', getNumberOlogyPage)

router.post('/:id', createNumberOlogyPage)

module.exports = router;