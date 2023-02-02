const mysql = require("mysql2");

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "Nonghang301294",
    database: "training_schema"
});

module.exports = pool.promise();