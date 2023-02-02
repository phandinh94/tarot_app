const db = require("../model/db")

module.exports.getCardById = (req, res) => {
    const cardID = req.params.id
    console.log(cardID);
    db.execute(`SELECT * FROM tarot_cards WHERE id=?`, [cardID])
        .then((data) => {
            res.status(200).json({
                data: data[0]
            })

        })
        .catch((err) => console.log(err))
}