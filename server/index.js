const express = require('express')
const app = express()
app.get('/', (req, res)=>{
    res.send("Hello node.js!")
})
app.listen(3001, (req, res)=>{
    console.log("Node started on port 3001")
});
