var mysql = require ("mysql");
var inquirer = require ("inquirer");
const { allowedNodeEnvironmentFlags } = require("process");

var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "password",
    database: "employee_db"
  });
  
  connection.connect(function(err) {
    if (err) throw err;
    runApp()
  });

  function runApp(){
      inquirer.prompt({
        name: "action",
        type: "list",
        message: "What would you like to do?",
        choices: [
            "Add department",
            "Add role",
            "Add employee",
            "View all employee by department",
            "View all employee by role",
            "Update employee role"   
        ]
    })
    then (function(answer) {
        switch (answer.actioni){

            case "Add department":
            addDepartment();
            break;

            case "Add role":
            addRole();
            break;
            
            case "Add employee":
            addEmployee();
            break;

            case "view all employee by department":
            viewByDept();
            break;

            case "View all employee by role":
            viewByRole();
            break;

            case "Update employee role" :
            updateEmployeeRole();
            break;
        }
    });
  }

function addDepartment() {
 inquirer.prompt({
     name: "dept",
     type: "input",
     message: "What department would you like to add?"
 })

}