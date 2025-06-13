import e from 'express';
import userServices from '../services/userServices';
let handleLogin = async (req, res) => {
    let email = req.body.email;
    let password = req.body.password;
    if (!email || !password) {
        return res.status(500).json({
            error: 1,
            message: 'Missing parameter'
        })
    }
    let userData = await userServices.handleuserLogin(email, password);
    return res.status(200).json({
        errCode: userData.errCode,
        message: userData.errMessage,
        user: userData.user ? userData.user : {}
    })
}
let handleGetAllUsers = async (req, res) => {
    let id = req.query.id; // all, id

    if (!id) {
        return res.status(200).json({
            errCode: 1,
            errMessage: 'missing required parameter',
            users: []
        })
    }
    let user = await userServices.GetAllUsers(id);
    return res.status(200).json({
        errCode: 0,
        errMessage: 'ok',
        users: user ? user : {}
    })
}
let handleCreateNewUser = async (req, res) => {
    let message = await userServices.CreateNewUser(req.body);
    return res.status(200).json(message)
}
let handleEditUser = async (req, res) => {
    let data = req.body;
    let message = await userServices.updateUserData(data);
    return res.status(200).json(message)
}
let handleDeleteUser = async (req, res) => {
    if (!req.body.id) {
        return res.status(200).json({
            errCode: 1,
            errMessage: 'missing required parameter',
        })
    }
    let message = await userServices.deleteUser(req.body.id);
    return res.status(200).json(message)
}
let getAllCode = async (req, res) => {
    try {
        let data = await userServices.getAllCodeService(req.query.type);
        return res.status(200).json(data);
    } catch (e) {
        console.log('getAllCode error: ', e);
        return res.status(200).json({
            errCode: -1,
            errMessage: 'Error from server'
        })
    }
}
module.exports = {
    handleLogin: handleLogin,
    handleGetAllUsers: handleGetAllUsers,
    handleCreateNewUser: handleCreateNewUser,
    handleEditUser: handleEditUser,
    handleDeleteUser: handleDeleteUser,
    getAllCode: getAllCode

}