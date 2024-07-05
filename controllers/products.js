const Product = require("../models/Product");
const { ctrlWrapper } = require("../decorators");
const { HttpError } = require("../helpers");

const addProduct = async (req, res) => {
  const result = await Product.create({ ...req.body });
  res.status(201).json(result);
};

const getProductById = async (req, res) => {
  const { id } = req.params;
  const result = await Product.findByPk(id);

  if (!result) {
    throw HttpError(404, `Product with id ${id} not found`);
  }

  res.json(result);
};

const getProductsByCategory = async (req, res) => {
  const { categoryId } = req.params;
  const result = await Product.findAll({
    where: { categoryId },
    attributes: ["name", "price", "imageUrl"],
  });

  if (!result) {
    throw HttpError(404, `No products found for category ${categoryId}`);
  }

  res.json(result);
};

const getAllCategories = async (req, res) => {
  const result = await Product.findAll({
    attributes: ["id", "categoryId"],
  });

  if (!result) {
    throw HttpError(404, "No categories found");
  }

  res.json(result);
};

const updateProduct = async (req, res) => {
  const { id } = req.params;
  const result = await Product.findByPk(id);

  if (!result) {
    throw HttpError(404, `Product with id ${id} not found`);
  }

  await result.update(req.body);
  res.json(result);
};

const deleteProduct = async (req, res) => {
  const { id } = req.params;
  const result = await Product.findByPk(id);

  if (!result) {
    throw HttpError(404, `Product with id ${id} not found`);
  }

  await result.destroy();
  res.json({ message: `Product with id ${id} deleted successfully` });
};

module.exports = {
  addProduct: ctrlWrapper(addProduct),
  getProductById: ctrlWrapper(getProductById),
  getProductsByCategory: ctrlWrapper(getProductsByCategory),
  getAllCategories: ctrlWrapper(getAllCategories),
  updateProduct: ctrlWrapper(updateProduct),
  deleteProduct: ctrlWrapper(deleteProduct),
};
