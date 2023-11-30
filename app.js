const express = require("express");
const mysql = require("mysql2");
const bodyParser = require("body-parser");

const app = express();

// Set up body parser to handle form data
app.use(bodyParser.urlencoded({ extended: true }));

// MySQL database connection
const pool = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "Prasad@2854",
  database: "test",
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

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
  pool.query(
    "INSERT INTO registration (name,middleName, lastname, dob,gender, phoneNumber,aadharNumber) VALUES (?, ?, ?, ?, ?, ?,?)",
    [firstName, middleName, lastName, dob, gender, phoneNumber, aadharNumber],
    (error, results) => {
      if (error) throw error;
      res.send("Record added successfully");
    }
  );
});

// Start the server
const port = 3000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
