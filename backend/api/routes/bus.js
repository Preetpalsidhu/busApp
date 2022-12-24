const express = require('express');
const router = express.Router();

router.get('/', (req, res, next) =>{
    res.status(200).json({
        message: 'handling'
    });
});

router.post('/', (req, res, next) =>{
    res.status(200).json({
        message: 'handle'
    });
});

module.exports = router;