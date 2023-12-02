const dotenv = require("dotenv").config();
const express = require("express");
const mysql = require("mysql2");
const https = require("https");
const bodyParser = require("body-parser");

const app = express();
const port = process.env.PORT || 3000;

const dbConfig = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
};
// Set up body parser to handle form data
app.use(bodyParser.urlencoded({ extended: true }));

// MySQL database connection
const pool1 = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "Prasad@2854",
  database: "test",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});
const pool = mysql.createPool(dbConfig);
// Route to render the HTML form
app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

app.post("/process", (req, res) => {
  const firstName = req.body.firstName;
  const lastName = req.body.lastName;
  const middleName = req.body.middleName;
  const dob = req.body.dob;
  const phoneNumber = req.body.phoneNumber;

  const gender = req.body.gender || "Not specified";
  const aadharNumber = req.body.aadharNumber;

  // MySQL query to insert data
  pool1.query(
    "INSERT INTO registration (firstName,middleName, lastname, dob,gender, phoneNumber,aadharNumber) VALUES (?, ?, ?, ?, ?, ?,?)",
    [firstName, middleName, lastName, dob, gender, phoneNumber, aadharNumber],
    (error, results) => {
      if (error) throw error;
      res.send(`Your added details are \n ${firstName}`);
    }
  );
});
const httpsSever = https.createServer(app);
// Start the server
// const port = 3000;
httpsSever.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
