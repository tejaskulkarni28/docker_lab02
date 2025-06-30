#!/bin/bash

echo "Hello! users,viewers,interviewers"
echo "I am Tejas Kulkarni! I am creating this shell script to ease the setting up reactjs and nodejs project structure with docker files and docker-compose.yml."
echo "Even though setting up react and node and dockerising there initial setup is easy but making those steps more easier will may help the students, developers starting there own."

# Setting react.js
echo "Creating 2 directories: 1)client 2)server"
mkdir client server

cd client/
current_dir=$(pwd)
echo "Now in client directory: $current_dir"

npx create-react-app .
echo "Listing the current client directory"
list_current_dir=$(ls)
echo "$list_current_dir"

# Now let's setup the nodejs in server directory
cd ../server
current_dir=$(pwd)
echo "Now in the server directory: $current_dir"
npm init -y
npm install express
touch index.js
cat >> index.js <<EOF
const express = require('express')
const app = express()
app.get('/', (req, res)=>{
    res.send("Hello node.js!")
})
app.listen(3001, (req, res)=>{
    console.log("Node started on port 3001")
});
EOF
node index.js

