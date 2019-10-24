const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const cors = require("cors");

//const mongoose = require("mongoose");
require("./src/DB.js");
const logger = require("./src/utils/logger/logger").getLoggerInstance();

const patientRoute = require("./src/routes/patient.route");
const volunteerRoute = require("./src/routes/volunteer.route");
const panjayathRoute = require("./src/routes/panjayath.route");
const diagnosisRoute = require("./src/routes/diagnosis.route");
const centerRoute = require("./src/routes/center.route");
const incomeTypeRoute = require("./src/routes/incomeType.route");
const expTypeRoute = require("./src/routes/expType.route");
const accountRoute = require("./src/routes/account.route");
const medicineRoute = require("./src/routes/medicine.route");
const loginRoute = require("./src/routes/login.route");
const dashboardRoute = require("./src/routes/dashboard.route");
const bankRoute = require("./src/routes/bank.route");
const cashBalanceRoute = require("./src/routes/cashBalance.route");
const reportRoute = require("./src/routes/report.route");

require("dotenv").config();

app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

//app.use("/node/api/patient", patientRoute);

var env = process.env.NODE_ENV || "DEV";
var routePath = "";
if (env === "PROD") routePath = process.env.ROUTE_PATH;

app.use(routePath + "/patient", patientRoute);
app.use(routePath + "/volunteer", volunteerRoute);
app.use(routePath + "/panjayath", panjayathRoute);
app.use(routePath + "/center", centerRoute);
app.use(routePath + "/incomeType", incomeTypeRoute);
app.use(routePath + "/expType", expTypeRoute);
app.use(routePath + "/account", accountRoute);
app.use(routePath + "/medicine", medicineRoute);
app.use(routePath + "/login", loginRoute);
app.use(routePath + "/dashboard", dashboardRoute);
app.use(routePath + "/diagnosis", diagnosisRoute);
app.use(routePath + "/bank", bankRoute);
app.use(routePath + "/cashBalance", cashBalanceRoute);
app.use(routePath + "/report", reportRoute);

// error handler
app.use(function(err, req, res, next) {
  logger.log("error", `${err}`);

  res.status(500).send(
    JSON.stringify({
      status: 500,
      message: "Something went wrong.",
      detail: err.message
    })
  );
});

app.listen(process.env.PORT, function() {
  //http://localhost/node/api/patient

  console.log("Server is running on Port:", process.env.PORT);
});

//https://gist.github.com/rttomlinson/10c658ea276d3cfc1dc90b391af4c817
