
const sequelize = require('../models').sequelize;  // hoặc đường dẫn tới file khởi tạo sequelize
const { Op, Sequelize } = require('sequelize');
import { raw } from "body-parser";
import db from "../models";

let getInforPageHome = (limitInput) => {
    return new Promise(async (resolve, reject) => {
        try {
            let pages = await db.inforpages.findAll({
                limit: limitInput,
                where: Sequelize.where(
                    Sequelize.cast(Sequelize.col("inforpages.PageId"), 'VARCHAR'),
                    {
                        [Op.in]: ['A1', 'A2', 'A3', 'A4']
                    }
                ),
                order: [['PageId', 'DESC']],
                include: [
                    { model: db.Allcodes, as: 'PageData', attributes: ['value_En', 'value_Vi'] }
                ],
                raw: true,
                nest: true
            })
            resolve({
                errCode: 0,
                data: pages
            })
        } catch (error) {
            reject(error)
        }
    })
}

let getAllpages = () => {
    return new Promise(async (resolve, reject) => {
        try {
            let pages = await db.inforpages.findAll({
                where: sequelize.where(
                    sequelize.cast(sequelize.col("inforpages.PageId"), 'VARCHAR'),
                    {
                        [Op.in]: ['A1', 'A2', 'A3', 'A4']
                    }
                ),
                attributes: {
                    exclude: ['createdAt', 'updatedAt']
                }, include: [
                    {
                        model: db.locationpage,
                        as: 'locations',
                        attributes: {
                            exclude: ['createdAt', 'updatedAt']
                        },
                        on: Sequelize.literal(`CAST("inforpages"."id" AS TEXT) = "locations"."PageId"`)
                    }
                ],
                raw: true

            })
            resolve({
                errCode: 0,
                data: pages
            })
        } catch (error) {
            reject(error)
        }
    })
}
let getAllLocation = (pageId) => {
    return new Promise(async (resolve, reject) => {
        // console.log("pageId received:", pageId);
        if (!pageId) {
            throw new Error('Missing pageId'); // Chống lỗi ngay từ đầu
        }
        try {
            let locations = await db.locationpage.findAll({
                where: {
                    PageId: pageId,
                },
                attributes: {
                    exclude: ['createdAt', 'updatedAt']
                },
                raw: true

            });

            resolve({
                errCode: 0,
                data: locations
            });
        } catch (error) {
            reject(error);
        }
    });
}

let saveInforPage = (inputData) => {
    return new Promise(async (resolve, reject) => {
        try {
            if (!inputData.PageId || !inputData.contentHTML || !inputData.contentMarkdown || !inputData.action) {
                resolve({
                    errCode: 1,
                    errMessage: "missing parameter",
                })
            } else {
                if (inputData.action === "CREATE") {
                    await db.Markdown.create({
                        contentHTML: inputData.contentHTML,
                        contentMarkdown: inputData.contentMarkdown,
                        PageId: inputData.PageId,
                        location_id: inputData.location_id
                    })

                } else if (inputData.action === "EDIT") {
                    let pageMarkdown = await db.Markdown.findOne({
                        where: { PageId: inputData.PageId },
                    })

                    if (pageMarkdown) {
                        await db.Markdown.update(
                            {
                                contentHTML: inputData.contentHTML,
                                contentMarkdown: inputData.contentMarkdown,
                                PageId: inputData.PageId,
                                location_id: inputData.location_id
                            },
                            {
                                where: { location_id: inputData.location_id }
                            }
                        );
                    }
                }


                resolve({
                    errCode: 0,
                    errMessage: "save infor succseded!"
                })
            }
        } catch (error) {
            reject(error)
        }
    })
}
let getInforPageById = (inputId) => {
    return new Promise(async (resolve, reject) => {
        try {
            if (!inputId) {
                resolve({
                    errCode: 1,
                    errMessage: "missing parameter!"
                })                                        // Chống lỗi ngay từ đầu
            } else {
                let page = await db.locationpage.findOne({
                    where: { location_id: inputId },
                    attributes: { exclude: ['createdAt', 'updatedAt'] }
                });
                if (!page) {
                    // Trường hợp không tìm thấy trang
                    return;
                }

                let markdown = await db.Markdown.findOne({
                    where: { location_id: page.location_id },
                    attributes: { exclude: ['createdAt', 'updatedAt'] }
                });

                resolve({
                    errCode: 0,
                    data: {
                        ...page, // dùng trực tiếp
                        markdown: markdown || null
                    }
                });
            }

        } catch (error) {
            reject(error)
        }
    })
}
module.exports = {
    getInforPageHome: getInforPageHome,
    getAllpages: getAllpages,
    saveInforPage: saveInforPage,
    getAllLocation: getAllLocation,
    getInforPageById: getInforPageById
}