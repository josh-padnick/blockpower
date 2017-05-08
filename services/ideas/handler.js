'use strict';

module.exports.hello = (event, context, callback) => {
    const AWS = require("aws-sdk");

    var docClient = new AWS.DynamoDB.DocumentClient();

    var table = "ideas";
    var id = 5000;
    var now = new Date().toISOString();

    var params = {
        TableName:table,
        Item:{
            "id": id,
            "title": "Josh's sample idea!",
            "createDate": now,
            "lastModifiedDate": now,
            "createdByUserId": "Josh",
            "numVotes": 5
        }
    };

    console.log("Inserting something...")
    var responseMsg;
    docClient.put(params, function(err, data) {
        if (err) {
            console.log("Unable to add item. Error JSON:", JSON.stringify(err, null, 2));
        } else {
            console.log("Added item:", JSON.stringify(data, null, 2));
        }
    });

    console.log(responseMsg)

    var response = {
        statusCode: 200,
        body: JSON.stringify({
            message: "Success!"
        })
    };

    callback(null, response);

    // Use this code if you don't use the http event with the LAMBDA-PROXY integration
    // callback(null, { message: 'Go Serverless v1.0! Your function executed successfully!', event });
}
