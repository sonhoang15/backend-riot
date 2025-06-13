"use strict";

var _express = _interopRequireDefault(require("express"));
var _bodyParser = _interopRequireDefault(require("body-parser"));
var _viewengines = _interopRequireDefault(require("./configs/viewengines"));
var _web = _interopRequireDefault(require("./routes/web"));
var _database = _interopRequireDefault(require("./configs/database"));
var _connectionDB = _interopRequireDefault(require("./configs/connectionDB"));
function _interopRequireDefault(e) { return e && e.__esModule ? e : { "default": e }; }
require('dotenv').config(); //auto impot khi đùng env

// import cors from "cors";
var app = (0, _express["default"])();
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
var port = process.env.PORT || 8888;
// let hostname = process.env.HOST_NAME

console.log('check .evn', process.env);
app.use(_bodyParser["default"].json()); // for json
app.use(_bodyParser["default"].urlencoded({
  extended: true
})); // for form data

//config template engine
(0, _viewengines["default"])(app);
(0, _web["default"])(app);
(0, _connectionDB["default"])();

// khai bao route
app.listen(port, function () {
  console.log("Example app listening on port ".concat(port));
});