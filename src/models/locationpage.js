'use strict';
const {
    Model,
    INTEGER
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class locationpage extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            locationpage.belongsTo(models.inforpages, { foreignKey: 'PageId', as: 'page' }),
                locationpage.hasOne(models.Markdown, { foreignKey: 'location_id', as: 'markdown' })

        }
    }
    locationpage.init({
        PageId: DataTypes.STRING,
        location_id: DataTypes.STRING,
        type: DataTypes.STRING,
        value_En: DataTypes.STRING,
        value_Vi: DataTypes.STRING,

    }, {
        sequelize,
        modelName: 'locationpage',
        tableName: 'locationpage',
    });
    return locationpage;
};