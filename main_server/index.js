const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth.js");
const AboutRouter = require("./routes/about.js");

const PORT = process.env.PORT || 3000;
const app = express();

app.use(express.json());
app.use(authRouter);
app.use(AboutRouter);


const DB = "mongodb+srv://blairdeveloper17:ftai@cluster0.25qd4op.mongodb.net/ftai_ecommerce?retryWrites=true&w=majority&appName=Cluster0"

mongoose.connect(DB).then(() => {
        console.log("MongoDB Connected");
        app.listen(PORT, "0.0.0.0", () => {
            console.log(`Server is running on port ${PORT}`);
        });
    })
    .catch(err => {
        console.error("MongoDB connection error:", err);
    });
