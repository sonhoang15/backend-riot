'use strict';
const {
    Model,
    INTEGER
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
    class inforpages extends Model {
        /**
         * Helper method for defining associations.
         * This method is not a part of Sequelize lifecycle.
         * The `models/index` file will call this method automatically.
         */
        static associate(models) {
            inforpages.belongsTo(models.Allcodes, { foreignKey: 'PageId', targetKey: 'keyMap', as: 'PageData' });
            inforpages.hasMany(models.locationpage, { foreignKey: 'PageId', as: 'locations' });
        }
    }
    inforpages.init({
        PageId: DataTypes.STRING,
        key: DataTypes.STRING,
        type: DataTypes.STRING,
        value_En: DataTypes.STRING,
        value_Vi: DataTypes.STRING,

    }, {
        sequelize,
        modelName: 'inforpages',
    });
    return inforpages;
};