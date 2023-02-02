const db = require("../model/db")

module.exports.getAllMeaningNumerology = (req, res) => {
    db.execute(`SELECT * FROM numerology_table `)
        .then((data) => {
            res.status(200).json({
                data: data[0]
            })

        })
        .catch((err) => console.log(err))
}