const db = require("../model/db")

module.exports.getNumberOlogyPage = (req, res) => {
    db.execute("SELECT * FROM numberology_table")
        .then((data) => res.status(200).json({ data: data }))
        .catch((err) => console.log(err))
}

module.exports.createNumberOlogyPage = (req, res) => {

}