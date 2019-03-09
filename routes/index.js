var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.status(200).json([{ key:1, value:"log 1" }, { key: 2, value:"log 2"}, { key: 3, value: "log 3"}]);
});

module.exports = router;
