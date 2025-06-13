require('dotenv').config();//auto impot khi đùng env
import express from "express";
import bodyParser from "body-parser";
import configviewengines from "./configs/viewengines"
import initWedRouter from "./routes/web"
import connection from "./configs/database"
import connectDB from "./configs/connectionDB";
// import cors from "cors";
let app = express()
// app.use(cors({ origin: 'http://localhost:3000', credentials: true }));
// import connection from "./configs/connectionDB"
app.use(function (req, res, next) {

    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', process.env.URL_API);

    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);

    // Pass to next layer of middleware
    next();
});
let port = process.env.PORT || 8888
// let hostname = process.env.HOST_NAME

console.log('check .evn', process.env)
app.use(bodyParser.json()) // for json
app.use(bodyParser.urlencoded({ extended: true })) // for form data


//config template engine
configviewengines(app);
initWedRouter(app);

connectDB();

// khai bao route
app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})