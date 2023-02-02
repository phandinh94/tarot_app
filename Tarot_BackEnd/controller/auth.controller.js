const db = require("../model/db");
const bcrypt = require("bcrypt");
const saltRounds = 10;
let strongRege = new RegExp(/((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/);

module.exports.getRegister = (req, res) => {
    // res.render("register")
    res.send("<h1>This is register page</h1>")
}

module.exports.signUpNewUser = (req, res) => {
    // console.log(req.body);
    let { name, email, password } = req.body;
    if (!email || !password) {
        return res.status(500).json({
            message: "Invalid email or password"
        })
    }
    if (!strongRege.test(password)) {
        return res.status(500).json({
            message: "Password is not enough"
        })
    }
    // console.log(name, email, password);

    let role = "user";
    password = bcrypt.hashSync(password, saltRounds)
    let id = Math.floor(Math.random() * 1000000);

    db.execute("SELECT * FROM users_table WHERE email = ?", [email]).then(
        (data) => {
            let [rows] = data;
            // console.log(data);
            if (rows.length > 0) {
                res.status(500).json({ message: "User already exists" });
            } else {
                db.execute(
                    "INSERT INTO users_table VALUES(?, ?, ?, ?, ?,?,?)",
                    [
                        id,
                        name,
                        email,
                        password,
                        role,
                        null,
                        null,
                    ]
                ).then((data) => {
                    console.log(data);
                    res.status(200).json({
                        message: "Create one successfully",
                        status: "success",
                    });
                })
                    .catch((error) => {
                        // console.log(error);
                        res.status(404).json({
                            error: error,
                        })
                        // ..
                    });
            }
        })
}

module.exports.getLogin = (req, res) => {
    // res.render("login")
    res.send("<h1>This is Login page</h1>")

}

module.exports.login = (req, res) => {
    let { email, password } = req.body;
    // console.log(email)
    // const auth = getAuth();

    if (!email || !password) {
        return res.status(500).json({
            message: "Invalid email or password"
        })
    }
    db.execute("SELECT * FROM users_table WHERE email = ?", [email])
        .then((data) => {
            let [rows] = data;
            // console.log(data);
            let find = rows[0];
            // console.log(find);
            if (!find) {
                res.status(404).json({
                    message: "User is not exist",
                })
            } else {
                let passValid = bcrypt.compareSync(password, find.password);
                if (!passValid) {
                    res.status(404).json({
                        message: "Wrong password",
                    });
                } else {
                    // res.cookie("userId", find.id, { signed: true });
                    // console.log(find.role);
                    // res.cookie("role", find.role, { signed: true });
                    res.status(200).json({
                        status: "success",
                        message: "Login successfully",
                        data: find
                    })
                }
            }
        })
        .catch((err) => console.log(err));
};

module.exports.logout = (req, res) => {
    res.clearCookie("userId", {
        domain: "http://127.0.0.1:3000",
        path: "/auth/logout",
    });
};