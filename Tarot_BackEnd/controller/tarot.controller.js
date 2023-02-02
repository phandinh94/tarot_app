const db = require("../model/db");
module.exports.getTenCards = (req, res) => {
    db.execute("SELECT * FROM tarot_cards").then((data) => {
        res.status(200).json({
            data: data[0],
        });
    });
};