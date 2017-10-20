var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  showProduct();
});
function showProduct(){

connection.query("select * from products", function(err, res){

  if (err) throw err; 

console.log(res); 
})
userChoice();
}

function userChoice(){

inquirer.prompt([
  {

    type: "input",
    name: "userID",
    message: "what would you like to purchase? Please provide the ID of that item."
  },
  {

    name: "stock_quantity",
    message: "how many would you like to buy?",
    type: "input"
  }]).then(function (answers) {
  console.log(answers.userID+ "/" +answers.stock_quantity);//make a price function and calculate the price for the user purchase
  //pass the arguments for the new functions
});  
}

