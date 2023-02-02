const db = require("../model/db");

module.exports.getAll = (req, res) => {
    db.execute("SELECT * FROM hometarot_table")
        .then((data) => {
            res.status(200).json({
                data: data[0]
            })
        })
        .catch((err) => console.log(err))

}