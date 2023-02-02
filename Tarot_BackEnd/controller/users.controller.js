const db = require("../model/db");
const bcrypt = require('bcrypt');
const saltRounds = 10;
let strongRegex = new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,})");

module.exports.getAll = (req, res) => {
    // let {page_size, page_index} = res.params
    // page_index = Number(page_index || 1)
    // page_size = Number(page_size || 5)
    // let total = 0;
    // db.execute("SELECT * FROM users_table")
    //     .then((data) => {
    //         let [rows, cols] = data;
    //         total = rows.length
    //         return db.execute(
    //             `SELECT * FROM users_table LIMIT ${page_zise} OFSET ${(page_index -1) * page_size
    //             }` 
    //         )
    //     })
    //     .then((data) => {
    //         let [rows, cols] = data;
    //         res.render("users", {
    //             data: rows,
    //             total,
    //             page_index,
    //             page_size,
    //         });
    //     })
    db.execute("SELECT * FROM users_table")
        .then((data) => res.status(200).json({
            data: data[0],
            message: "SUCCESSFULY"
        }))
        .catch((err) => res.status(400).json(err))
}

module.exports.getUser = (req, res) => {
    let { id } = req.params
    db.execute("SELECT * FROM users_table WHERE id=?", [id])
        .then((data) => res.status(200).json(data[0]))
        .catch((err) => res.status(400).json(err))
}

module.exports.createUser = (req, res) => {
    let { name, email, password } = req.body
    if (!email || !password) {
        return res.status(500).json({
            message: "Invalid email or password"
        })
    }
    if (!strongRegex.test(password)) {
        return res.status(500).json({
            message: "Password is not enough"
        })
    }
    password = bcrypt.hashSync(password, saltRounds);
    let id = Math.floor(Math.random() * 1000000)
    db.execute("SELECT * FROM users_table WHERE email=?", [email])
        .then((data) => {
            let [rows] = data
            console.log(data);
            if (rows.length > 0) {
                return Promise.reject("user already exist")
            } else {
                return db.execute("INSERT INTO users_table VALUES (?, ?, ?, ?, ?, ?, ?, ?)", [
                    id,
                    name,
                    email,
                    null,
                    password,
                    null,
                    null,
                    null,
                ])
            }
        })
        .then((data) => {
            res.status(200).json({
                message: "Create one successfully",
            })
        })
        .catch((err) =>
            res.status(404).json({
                err: err,
            }))

}

module.exports.updateUser = (req, res) => {

}