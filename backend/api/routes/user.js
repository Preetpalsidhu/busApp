const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');

const User = require('../models/user');

router.get('/' ,(req,res, next) => {
    res.status(200).json({
        message: "user get",
        id: id
    });
});

router.get('/:userId' ,(req,res, next) => {
    const id = req.params.userId;
    if(id === '1'){
    res.status(200).json({
        message: "user get",
        id: id
    });}
});

router.post('/' ,(req, res, next) => {
    const user = new User({
        _id: new mongoose.Types.ObjectId(),
        name: req.body.name,
        pwd: req.body.pwd 
    })
    user.save().then(result => {
        console.log(result);
    });
    res.status(200).json({
        message: "user created",
        createdUser: user
    });
});

module.exports = router;