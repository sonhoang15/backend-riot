import { raw } from "body-parser";
import db from "../models/index.js";
import bcryptjs from "bcryptjs";
const saltRounds = 10;


let handleuserLogin = async (email, password) => {
    return new Promise(async (resolve, reject) => {
        try {
            let userData = {};
            let isexist = await checkUserEmail(email);
            if (isexist) {
                let user = await db.User.findOne({
                    attributes: ['firstname', 'lastname', 'email', 'roleid', 'password'],
                    where: { email: email },
                    raw: true // raw: true to get plain object
                });
                if (user) {
                    let check = await bcryptjs.compareSync(password, user.password);
                    if (check) {
                        userData.errCode = 0;
                        delete user.password; // delete password from user data
                        userData.user = user;
                    } else {
                        userData.errCode = 3;
                        userData.errMessage = 'wrong password';
                    }
                } else {
                    userData.errCode = 2;
                    userData.errMessage = 'user n ot found';
                }

            } else {
                userData.errCode = 1;
                userData.errMessage = 'Email not exist';

            }
            resolve(userData)
        } catch (error) {
            reject(error)
        }
    })
}


let checkUserEmail = async (email) => {
    return new Promise(async (resolve, reject) => {
        try {
            let user = await db.User.findOne({
                where: { email: email }
            })
            if (user) {
                resolve(true)
            } else {
                resolve(false)
            }
        } catch (error) {
            reject(error)
        }
    })
}

let GetAllUsers = async (userid) => {
    return new Promise(async (resolve, reject) => {
        try {
            let users = '';
            if (userid === 'ALL') {
                users = await db.User.findAll({
                    attributes: {
                        exclude: ['password']
                    },
                })
            }
            if (userid && userid !== 'ALL') {
                users = await db.User.findOne({
                    where: { id: userid },
                    attributes: {
                        exclude: ['password']
                    },
                })
            }
            resolve(users)
        } catch (error) {
            reject(error)
        }
    })

}
let hashUserPassword = (password) => {
    return new Promise(async (resolve, reject) => {
        try {
            let hashPassword = await bcryptjs.hash(password, saltRounds);
            resolve(hashPassword);
        } catch (e) {
            reject(e);
        }
    })
}
let CreateNewUser = async (data) => {
    return new Promise(async (resolve, reject) => {
        try {
            let check = await checkUserEmail(data.email);
            if (check === true) {
                resolve({
                    errCode: 1,
                    message: 'email is already exist, đã tồn tại'
                })
            } else {
                let hashPasswordfrombcryptjs = await hashUserPassword(data.password);
                await db.User.create({
                    email: data.email,
                    firstname: data.firstname,
                    lastname: data.lastname,
                    password: hashPasswordfrombcryptjs,
                    address: data.address,
                    gender: data.gender,
                    roleid: data.roleid,
                    phone: data.phone,

                });
            }
            resolve({
                errCode: 0,
                message: 'oke! create user '
            });
        } catch (error) {
            console.error("Error in CreateNewUser:", error);
            reject(error)
        }
    })
}
let deleteUser = (userid) => {
    return new Promise(async (resolve, reject) => {
        let foundUser = await db.User.findOne({
            where: { id: userid }
        })
        if (!foundUser) {
            resolve({
                errCode: 2,
                errMessage: 'User not found'
            })
        }
        // if (foundUser) {
        //     await foundUser.destroy();
        // }
        await db.User.destroy({
            where: { id: userid }
        })

        resolve({
            errCode: 0,
            message: 'Delete user succeed'
        })
    })
}
let updateUserData = (data) => {
    return new Promise(async (resolve, reject) => {
        try {
            if (!data.id || !data.roleid || !data.gender) {
                resolve({
                    errCode: 2,
                    message: 'Missing required parameter'
                })
            }
            let user = await db.User.findOne({
                where: { id: data.id },
                raw: false
            });
            if (user) {
                user.firstname = data.firstname;
                user.lastname = data.lastname;
                user.address = data.address;
                user.phone = data.phone;
                user.roleid = data.roleid;
                user.gender = data.gender;
                await user.save();
                resolve({
                    errCode: 0,
                    message: 'Update user succeed'
                })
            } else {
                reject({
                    errCode: 1,
                    message: 'User not found'
                });
            }
        } catch (error) {
            reject(error)
        }
    })
}
let getAllCodeService = (typeInput) => {
    return new Promise(async (resolve, reject) => {
        try {
            if (!typeInput) {
                resolve({
                    errCode: 1,
                    errMessage: 'Missing required parameter'
                })
            } else {
                let res = {};
                let allcode = await db.Allcodes.findAll({
                    where: { type: typeInput }
                });
                res.errCode = 0;
                res.data = allcode;
                resolve(res);
            }
        } catch (error) {
            reject(error)
        }
    })
}
module.exports = {
    handleuserLogin: handleuserLogin,
    checkUserEmail: checkUserEmail,
    GetAllUsers: GetAllUsers,
    CreateNewUser: CreateNewUser,
    deleteUser: deleteUser,
    updateUserData: updateUserData,
    getAllCodeService: getAllCodeService
}