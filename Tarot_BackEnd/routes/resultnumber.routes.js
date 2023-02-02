const express = require("express");
const { getResultNumberOlogy, createResultNumberOlogy, updateResultNumberOlogy, deleteResultNumberOlogy, postResultNumberOlogy, getResultNumberById } = require("../controller/resultnumber.controller");
const router = express.Router()

router.get('/', getResultNumberOlogy)

router.get('/:id', getResultNumberById)

router.post('/', createResultNumberOlogy)

router.post('/:id', postResultNumberOlogy)

router.put('/:id', updateResultNumberOlogy)

router.delete('/:id', deleteResultNumberOlogy)

module.exports = router;