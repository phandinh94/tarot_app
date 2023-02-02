const express = require("express");
const bodyParser = require("body-parser");
const morgan = require("morgan");
const cors = require("cors");
const app = express();
const cookieParser = require("cookie-parser")

app.use(morgan("dev"));
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser("back"));

const authRoutes = require("./routes/auth.routes")
const hometarotRoutes = require("./routes/hometarot.routes")
const cardsRoutes = require("./routes/78cards.routes")
const cardDetailRoutes = require("./routes/cardDetail.routes")
const tarotRoutes = require("./routes/tarot.routes")
const meaningNumerologyRoutes = require("./routes/meaningNumerology.routes")

const numberOlogyPage = require("./routes/numberology.routes")
const famous = require("./routes/famous.routes")
const resultnumber = require("./routes/resultnumber.routes");
const users = require("./routes/users.routes")

app.get("/", (req, res) => {
    res.status(200).json({ message: "Hello!" });
});

// app.use("/api/v1/card", cardRoutes);

app.use('/numberology/number', resultnumber)
app.use('/numberology', numberOlogyPage)
app.use('/famous', famous)
app.use('/users', users)
app.use("/auth", authRoutes);
app.use("/hometarot", hometarotRoutes)
app.use("/78cards", cardsRoutes);
app.use("/cardDetail", cardDetailRoutes)
app.use("/tarot", tarotRoutes)
app.use("/meaningNumerology", meaningNumerologyRoutes)


app.listen(3000, () => {
    console.log("Server is running on http://127.0.0.1:3000");
});