const express = require("express");
const { getAll, getUser, createUser, updateUser } = require("../controller/users.controller");
const router = express.Router()

router.get('/', getAll)

router.get('/:id', getUser)

router.post('/:id', createUser)

router.put('/:id', updateUser)

module.exports = router;