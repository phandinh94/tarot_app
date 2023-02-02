const express = require("express");
const router = express.Router();

// const userController = require("../controllers/users.controller");
const authController = require("../controller/auth.controller");

router.get("/register", authController.signUpNewUser);
router.post("/register", authController.signUpNewUser);

router.get("/login", authController.login);
router.post("/login", authController.login);

router.get("/logout", authController.logout);

module.exports = router;