var mysql = require("mysql");
var inquirer = require("inquirer");
var prompt = require('prompt');

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Green2018!!",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  start();
  buyItem();
  });

function start() {
  connection.query("SELECT * FROM products", function (err, result, fields) {
      if (err) throw err;
      for (i = 0; i < result.length; i++){
          console.log("\n" + "item_id: " + result[i].item_id);
          console.log("product_name: " + result[i].product_name);
          console.log("department_name: " + result[i].department_name);
          console.log("price: " + result[i].price);
          console.log("stock_quantity: " + result[i].stock_quantity);
      }
  });
}

function buyItem() {
inquirer
    .prompt([
    {
       name: "item",
       type: "input",
       message: "What is the item_id of the product you would like to buy?"
     },
   {
       name: "units",
       type: "input",
       message: "How many units of the product would you like to buy?"
     }
   ])
    .then(function(answers){
        check(answers.item, answers.units)
    })
 }

function check(id, units) {
    connection.query("SELECT stock_quantity, price FROM products WHERE item_id = " + id,
    function (err, result, fields){
    if (err) throw err;
    console.log(result[0].stock_quantity);
    if (units <= result[0].stock_quantity){
            //create a new stock quantity variable and set it equal to current stock quantity minus units
            var newStockQuantity = result[0].stock_quantity - units;
            var price = result[0].price;
            connection.query("UPDATE products SET stock_quantity = " + newStockQuantity + " WHERE item_id = " + id);
            console.log("Total price: " + price * units);
        }
    else {
        console.log("Insufficient quantity!")
    }
  });
}
