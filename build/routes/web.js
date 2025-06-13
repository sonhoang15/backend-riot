"use strict";

var _express = _interopRequireDefault(require("express"));
var _homeController = _interopRequireDefault(require("../controllers/homeController"));
var _userController = _interopRequireDefault(require("../controllers/userController"));
var _pageController = _interopRequireDefault(require("../controllers/pageController"));
function _interopRequireDefault(e) { return e && e.__esModule ? e : { "default": e }; }
// const { gethomepage,
//     gethello,
//     postcreateUser,
//     getcreatenewspage,
//     getupdate,
//     postupdateUser,
//     postdeleteUser,
//     postformdeleteUser } = require('../controllers/homeController')
var route = _express["default"].Router();
var initWedRouter = function initWedRouter(app) {
  route.get('/', _homeController["default"].gethomepage);
  route.get('/create.ejs', _homeController["default"].getcreatenewspage);
  route.get('/readCRUD', _homeController["default"].readCRUD);
  route.post('/create-user-message', _homeController["default"].postcreateUser);
  route.get('/update', _homeController["default"].getupdate);
  route.post('/update-user', _homeController["default"].postupdateUser);
  route.get('/delete-crud', _homeController["default"].postdeleteUser);
  route.post('/api/login', _userController["default"].handleLogin);
  route.get('/api/get-all-users', _userController["default"].handleGetAllUsers);
  route.post('/api/create-new-user', _userController["default"].handleCreateNewUser);
  route.put('/api/edit-user', _userController["default"].handleEditUser);
  route["delete"]('/api/delete-user', _userController["default"].handleDeleteUser);
  route.get('/api/allcode', _userController["default"].getAllCode);
  route.get('/api/infor-page-home', _pageController["default"].getInforPageHome);
  route.get('/api/all-pages', _pageController["default"].getAllpages);
  route.get('/api/all-location', _pageController["default"].getAllLocation);
  route.post('/api/save-infor-pages', _pageController["default"].postPage);
  route.get('/api/get-infor-page-by-location', _pageController["default"].getInforPageById);
  return app.use("/", route);
};

//route.method('/route',handler)
// route.get('/', gethomepage);
// route.get('/hello', gethello)
// route.get('/create', getcreatenewspage)
// route.get('/update/:id', getupdate)
// route.post('/create-user', postcreateUser)
// route.post('/update-user', postupdateUser)
// route.post('/delete-user/:id', postdeleteUser)
// route.post('/delete-user', postformdeleteUser)
module.exports = initWedRouter;