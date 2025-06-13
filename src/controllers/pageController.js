import pageService from '../services/pageService'

let getInforPageHome = async (req, res) => {
    let limit = req.query.limit;
    if (!limit) limit = 10
    try {
        let response = await pageService.getInforPageHome(+limit);
        return res.status(200).json(response)

    } catch (error) {
        console.log(error);
        return res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from server...'
        })
    }
}


let getAllpages = async (req, res) => {
    try {
        let pages = await pageService.getAllpages();
        return res.status(200).json(pages)

    } catch (error) {
        console.log(error)
        return res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
        })
    }
}
let getAllLocation = async (req, res) => {
    try {
        const pageId = req.query.pageId || req.params.pageId;
        // console.log(' Received pageId:', pageId);
        if (!pageId) {
            return res.status(400).json({
                errcode: 1,
                errMessage: 'Missing pageId parameter'
            });
        }
        let pages = await pageService.getAllLocation(pageId);
        return res.status(200).json(pages);
    } catch (error) {
        console.log(error)
        return res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
        })
    }
}

let postPage = async (req, res) => {
    try {
        let response = await pageService.saveInforPage(req.body);
        return res.status(200).json(response)
    } catch (error) {
        console.log(error)
        return res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
        })
    }
}
let getInforPageById = async (req, res) => {
    try {
        let infor = await pageService.getInforPageById(req.query.location_id);
        return res.status(200).json(infor)
    } catch (error) {
        console.log(error)
        return res.status(200).json({
            errcode: -1,
            errMessage: 'Erorr from the server'
        })
    }
}
module.exports = {
    getInforPageHome: getInforPageHome,
    getAllpages: getAllpages,
    postPage: postPage,
    getAllLocation: getAllLocation,
    getInforPageById: getInforPageById
}