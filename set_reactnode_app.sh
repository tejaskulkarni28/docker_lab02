#!/bin/bash

echo "Hello! users,viewers,interviewers, recruiters.... :)"
echo "I am Tejas Kulkarni! I am creating this shell script to ease the setting up reactjs,nodejs project structure with there docker files and docker-compose.yml."
echo "Even though setting up react,node and containerisation there initial setup is easy but making those steps more easier will help the students, developers starting there project on there own."

# Setting react.js
echo "Creating 2 directories: 1)client 2)server"
mkdir client server

cd client/
current_dir=$(pwd)
echo "Now in the client directory: $current_dir"

npx create-react-app .
echo "Listing the current client directory"
list_current_dir=$(ls)
echo "$list_current_dir"

cat <<EOF >> Dockerfile
FROM node:20-alpine

WORKDIR client/

COPY ./ ./

RUN npm install

COPY ./ ./

EXPOSE 3000

CMD ["npm","start"]
EOF

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

<<<<<<< HEAD
=======





>>>>>>> f4ddcbb (Added dockerfile text in shell scripting file)

