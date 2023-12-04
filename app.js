const dotenv = require("dotenv").config();
const express = require("express");
const mysql = require("mysql2");

const bodyParser = require("body-parser");

const app = express();
const port = process.env.PORT || 3000;

// const dbHost = process.env.DB_HOST;
// const dbUser = process.env.DB_USER;
// const dbPassword = process.env.DB_PASSWORD;
// const dbName = process.env.DB_NAME;

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
  const aadharNumber = req.body.aadharNumber;
  const gender = req.body.gender || "Not specified";
  const licenceNumber = req.body.licenceNumber;
  const panNumber = req.body.panNumber;
  const email = req.body.email;

  // MySQL query to insert data
  pool1.query(
    "INSERT INTO registration (firstName,middleName, lastname, dob,gender, phoneNumber,aadharNumber,licenceNumber,panNumber, email) VALUES (?, ?, ?, ?, ?, ?,?, ?, ?, ?)",
    [
      firstName,
      middleName,
      lastName,
      dob,
      gender,
      phoneNumber,
      aadharNumber,
      licenceNumber,
      panNumber,
      email,
    ],
    (error, results) => {
      if (error) throw error;
      res.send(`Your added details are \n ${firstName}`);
    }
  );
});

// Start the server
// const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
