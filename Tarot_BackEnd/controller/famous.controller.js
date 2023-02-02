const db = require("../model/db");

module.exports.getFamous = (req, res) => {
    db.execute("SELECT * FROM tbl_famous")
        .then((data) => res.status(200).json({ data: data }))
        .catch((err) => console.log(err))
}