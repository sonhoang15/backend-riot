import express from "express";

let configviewengines = (app) => {
    app.set('views', './src/views')
    app.set('view engine', 'ejs')
    //config stactic files
    app.use(express.static("./src/public"))

}

module.exports = configviewengines;