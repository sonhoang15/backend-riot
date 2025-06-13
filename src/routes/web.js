import express from "express";
import homeController from "../controllers/homeController";
import userController from "../controllers/userController";
import pageController from "../controllers/pageController";
// const { gethomepage,
//     gethello,
//     postcreateUser,
//     getcreatenewspage,
//     getupdate,
//     postupdateUser,
//     postdeleteUser,
//     postformdeleteUser } = require('../controllers/homeController')
let route = express.Router();

let initWedRouter = (app) => {
    route.get('/', homeController.gethomepage);
    route.get('/create.ejs', homeController.getcreatenewspage);
    route.get('/readCRUD', homeController.readCRUD);
    route.post('/create-user-message', homeController.postcreateUser);
    route.get('/update', homeController.getupdate);
    route.post('/update-user', homeController.postupdateUser);

    route.get('/delete-crud', homeController.postdeleteUser);

    route.post('/api/login', userController.handleLogin);
    route.get('/api/get-all-users', userController.handleGetAllUsers);
    route.post('/api/create-new-user', userController.handleCreateNewUser);
    route.put('/api/edit-user', userController.handleEditUser);
    route.delete('/api/delete-user', userController.handleDeleteUser);
    route.get('/api/allcode', userController.getAllCode);

    route.get('/api/infor-page-home', pageController.getInforPageHome);
    route.get('/api/all-pages', pageController.getAllpages);
    route.get('/api/all-location', pageController.getAllLocation);
    route.post('/api/save-infor-pages', pageController.postPage);
    route.get('/api/get-infor-page-by-location', pageController.getInforPageById)

    return app.use("/", route);
}

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
