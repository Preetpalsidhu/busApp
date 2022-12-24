const express = require('express');
const app = express();
const morgan = require('morgan');
const bodyparser =require('body-parser');
const mongoose = require('mongoose');

const busRoutes = require('./api/routes/bus');
const userRoutes = require('./api/routes/user');

mongoose.connect('mongodb+srv://Preetpal:' + process.env.MONGO_ATLAS_PW +'@busapp.1exfsuj.mongodb.net/test');
app.use(morgan('dev'));
app.use(bodyparser.urlencoded({extended: false}));
app.use(bodyparser.json());

app.use((req, res, next) =>{
    res.header("Acces-Control-Allow-Origin");
    res.header("Access-Control-Allow-Origin", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
    if(req.method === 'OPTIONS'){
        res.header("Acces-Control-Allow-Origin", 'PUT, POST, GET, DELETE');
        return res.status(200).json({});
    }
})

//Routes
app.use('/bus', busRoutes);
app.use('/user', userRoutes)

//Error Handling
app.use((req, res, next) => {
    const error = new Error('Not found');
    error.status= 404;
    next(error);
})

app.use((error, req, res, next) => {
    res.status(error.status || 500);
    res.json({
        error: {
            message: error.message
        }
    });
});

module.exports = app;