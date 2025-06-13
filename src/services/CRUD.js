// let connection = require("../configs/database");
import { raw } from 'body-parser';
import db from '../models/index'
import bcryptjs from 'bcryptjs';
import { where } from 'sequelize';
const saltRounds = 10;

let createnewUser = (data) => {
    return new Promise(async (resolve, reject) => {
        try {
            let hashPasswordfrombcryptjs = await hashUserPassword(data.password);
            await db.User.create({
                email: data.email,
                firstname: data.firstname,
                lastname: data.lastname,
                password: hashPasswordfrombcryptjs,
                address: data.address,
                gender: data.gender == '1' ? true : false,
                roleid: data.roleid,
                phone: data.phone,

            })

            resolve('oke! create user ');
        } catch (e) {
            reject(e)
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
let readCRUD = async (userid) => {

    let [results, fields] = await connection.query(`select * from User where id = ?`, [userid]);

    let user = results && results.length > 0 ? results[0] : {};
    return user
}
let getAlluser = () => {
    return new Promise(async (resolve, reject) => {
        try {
            let users = db.User.findAll({
                raw: true,
            });
            resolve(users)
        } catch (e) {
            reject(e)
        }
    })
}
let getuserbyid = (userid) => {
    return new Promise(async (resolve, reject) => {
        try {
            let user = await db.User.findOne({
                where: { id: userid },
                raw: true,
            })
            if (user) {
                resolve(user)
            } else {
            }
        } catch (e) {
            reject(e);
        }
    })
}
let updatebyid = (data) => {
    return new Promise(async (resolve, reject) => {
        try {
            let user = await db.User.findOne({ where: { id: data.id } });
            if (user) {
                user.firstname = data.firstname;
                user.lastname = data.lastname;
                user.email = data.email;
                user.address = data.address;
                await user.save();
                resolve()
            } else {
                reject();
            }
        } catch (e) {
            console.log(e)
        }
    })
}
let deletebyid = async (userid) => {
    return new Promise(async (resolve, reject) => {
        try {
            let user = await db.User.findOne({
                where: { id: userid }
            })
            if (user) {
                await db.User.destroy({ where: { id: userid } });
            }
            resolve()
        } catch (e) {
            reject(e)
        }
    });
}
module.exports = {
    createnewUser: createnewUser,
    readCRUD: readCRUD,
    updatebyid: updatebyid,
    deletebyid: deletebyid,
    hashUserPassword: hashUserPassword,
    getAlluser: getAlluser,
    getuserbyid: getuserbyid,
}