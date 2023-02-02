const db = require("../model/db")

module.exports.getResultNumberOlogy = (req, res) => {
    console.log(req.query);
    if (req.query) {
        db.execute("SELECT * FROM tbl_numberology WHERE realNumber= ?", [
            Number(req.query.number),
        ]).then((data) => {
            res.status(200).json({
                data: data[0],
                name: req.query.name,
                date: req.query.date,
            });
            console.log(data);
        });
    }
};

module.exports.getResultNumberById = (req, res) => {
    console.log(req.query);
    if (req.query) {
        db.execute("SELECT * FROM tbl_numberology WHERE realNumber= ?", [
            Number(req.query.number),
        ]).then((data) => {
            res.status(200).json({
                data: data[0],
                name: req.query.name,
                date: req.query.date,
            });
            console.log(data);
        });
    }
};
module.exports.createResultNumberOlogy = (req, res) => {
    let { fullname, commons, date, numberology, phone } = req.body;
    const data1 = { fullname, commons, date, phone, numberology };
    let id = Math.floor(Math.random() * 1000000);
    db.execute("INSERT INTO tbl_calculate VALUES(?, ?, ?, ?, ?, ?)", [
        id,
        fullname,
        commons,
        date,
        numberology,
        phone,
    ])
        .then((data) => {
            // console.log(toString(data));
            res.status(200).json({
                data: data1,
                status: "CREATE SUCCESSFULY",
            });
        })
        .catch((err) => console.log(err));
};

module.exports.postResultNumberOlogy = (req, res) => {
    // let id = 1
    // let numberid = 2
    // let realNumber = 2
    let {
        name_numberology,
        general_features,
        strength,
        weakness,
        famous,
        job,
        orientation,
        mean,
        relationship,
        img,
        // numberid,
        // realNumber
    } = req.body;
    console.log(req.body);
    db.execute("INSERT INTO tbl_numberology VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        [
            // id,
            name_numberology,
            general_features,
            strength,
            weakness,
            famous,
            job,
            orientation,
            mean,
            relationship,
            img,
            // numberid,
            // realNumber,
        ])
        .then((data) => {
            res.status(200).json({
                data: data,
                message: "CREATE SUCCESSFULY"
            })
        })
        .catch((err) => { res.status(400).json({ error: err }) })

}

module.exports.updateResultNumberOlogy = (req, res) => {
    let id = req.params.id;
    let {
        name_numberology,
        general_features,
        strength,
        weakness,
        famous,
        job,
        orientation,
        mean,
        relationship,
        img,
        // numberid,
        // realNumber
    } = req.body;
    db.execute(
        "UPDATE tbl_numberology SET name_numberology=?, general_features=?, strength=?, weakness=?, famous=?, job=?, orientation=?, mean=?, relationship=?, img=?  WHERE id=?",
        [
            name_numberology,
            general_features,
            strength,
            weakness,
            famous,
            job,
            orientation,
            mean,
            relationship,
            img,
            id
        ]
    ).then((data) => {
        res.status(200).json({
            data: data,
            message: "UPDATE SUCCESSFULY",
        });
    }).catch((err) => { res.status(400).json({ error: err }) })
};

module.exports.deleteResultNumberOlogy = (req, res) => {
    console.log(req.params.id);
    let id = req.params.id
    db.execute("DELETE FROM tbl_numberology WHERE id=?", [id])
        .then((data) => {
            res.status(200).json({
                data: data,
                message: "DELETE SUCCESSFULY",
            })
                .catch((err) => { res.status(400).json({ error: err }) })
        })
}