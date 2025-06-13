// import connection from '../configs/database'
import CRUD from '../services/CRUD'
import db from '../models/index'
let gethomepage = async (req, res) => {
    //process data
    //call model
    try {
        let results = await db.User.findAll();
        return res.render('home.ejs', { listUsers: results })

    } catch (e) {
        console.log(e);
    }
}
let postcreateUser = async (req, res) => {
    let message = await CRUD.createnewUser(req.body)
    console.log(message)
    return res.redirect('/readCRUD')
}

let readCRUD = async (req, res) => {
    let data = await CRUD.getAlluser()
    return res.render('read-CRUD.ejs', {
        datatable: data
    })
}

let postupdateUser = async (req, res) => {
    let data = req.body;
    await CRUD.updatebyid(data);
    return res.redirect('/readCRUD')
}

let getcreatenewspage = (req, res) => {
    //process data
    //call model
    res.render('create.ejs')
}
let getupdate = async (req, res) => {
    let userid = req.query.id;
    if (userid) {
        let user = await CRUD.getuserbyid(userid);
        res.render('edit.ejs', { useredit: user }) //x <- y
    }
    else {
        return res.send('user not found')
    }
}
let postdeleteUser = async (req, res) => {
    try {
        let id = req.query.id;
        if (id) {
            await CRUD.deletebyid(id);
            return res.redirect('/readCRUD')
        }
        else {
            return res.send('user not found')
        }
    }
    catch (e) {
        console.log(e);
        return res.status(500).send('Internal Server Error');
    }
}

module.exports = {
    getcreatenewspage: getcreatenewspage,
    gethomepage: gethomepage,
    postcreateUser: postcreateUser,
    postupdateUser: postupdateUser,
    getupdate: getupdate,
    postdeleteUser: postdeleteUser,
    readCRUD: readCRUD,
}

