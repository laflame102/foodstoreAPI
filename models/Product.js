const { DataTypes } = require("sequelize");
const { sequelizeJoi, Joi } = require("sequelize-joi");
const sequelize = require("../config/database");

sequelizeJoi(sequelize);

const Product = sequelize.define(
  "Product",
  {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      schema: Joi.string().required(),
    },
    description: {
      type: DataTypes.TEXT,
      allowNull: false,
      schema: Joi.string().required(),
    },
    price: {
      type: DataTypes.FLOAT,
      allowNull: false,
      schema: Joi.number().positive().required(),
    },
    imageUrl: {
      type: DataTypes.STRING,
      allowNull: false,
      schema: Joi.string().uri().required(),
    },
    categoryId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      schema: Joi.number().integer().positive().required(),
    },
    stock: {
      type: DataTypes.INTEGER,
      allowNull: false,
      schema: Joi.number().integer().min(0).required(),
    },
  },
  { timestamps: false }
);

module.exports = Product;
