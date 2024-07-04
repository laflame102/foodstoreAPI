const express = require("express");

const productsController = require("../../controllers/products");
const { apiKey } = require("../../decorators");

const router = express.Router();

router.get("/product/:id", productsController.getProductById);

router.get("/products/:categoryId", productsController.getProductsByCategory);

router.get("/categories", productsController.getAllCategories);

router.post("/product", apiKey, productsController.addProduct);

router.put("/product/:id", apiKey, productsController.updateProduct);

router.delete("/product/:id", apiKey, productsController.deleteProduct);

module.exports = router;
