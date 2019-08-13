var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "1Mana2valia!",
    database: "bamazon"
});

connection.connect(function(err) {
    if(err) throw err;
    console.log("connected as id" + connection.threadId);
    queryProducts();
});

function queryProducts() {
    connection.query("SELECT * FROM products", function(err, res) {
        if(err) throw err;

        console.log(res);

        inquirer.prompt([
            {
                name: "choice",
                type: "list",
                choices: function() {
                    var choiceItem = [];
                    for(var i = 0; i < res[i].length; i++) {
                        choiceItem.push(res[i].item_id);
                    }
                    return choiceItem;
                },
            
                message: "What is the product ID would you like to buy?"
            },
            {
                name: "unit",
                type: "input",
                message: "How many units would you like to buy?"
            }
        ])
        .then(function(answer) {
            var chosenItem = [];
            for (var i = 0; i < res[i].length; i++) {
                if(res[i].item_id === answer.choice) {
                    chosenItem = res[i];
                }
                if(chosenItem.stock_quantity < parseInt(answer.quantity)) {
                    connection.query(
                        "UPDATE bamazon SET ? WHERE ?",
                        [
                            
                        ]

                    )
                }
            }
            
        })
    });
}


