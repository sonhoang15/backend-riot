'use strict';
const {
    Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class Markdown extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            Markdown.belongsTo(models.locationpage, { foreignKey: 'location_id', as: 'locationpage' })
        }
    }
    Markdown.init({
        contentHTML: DataTypes.TEXT('long'),
        contentMarkdown: DataTypes.TEXT('long'),
        PageId: DataTypes.STRING,
        location_id: DataTypes.STRING,
    }, {
        sequelize,
        modelName: 'Markdown',
        tableName: 'Markdown',
    });
    return Markdown;
};