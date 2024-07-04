const apiKey = (req, res, next) => {
  const apiKey = req.headers["x-api-key"] || req.body.apiKey;
  if (apiKey !== process.env.API_KEY) {
    return res.status(403).json({ error: "Access denied" });
  }
  next();
};

module.exports = apiKey;
