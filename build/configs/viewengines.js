"use strict";

var _express = _interopRequireDefault(require("express"));
function _interopRequireDefault(e) { return e && e.__esModule ? e : { "default": e }; }
var configviewengines = function configviewengines(app) {
  app.set('views', './src/views');
  app.set('view engine', 'ejs');
  //config stactic files
  app.use(_express["default"]["static"]("./src/public"));
};
module.exports = configviewengines;