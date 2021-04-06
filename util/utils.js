var AWS = require('aws-sdk');
AWS.config.update({region: 'us-east-1'});
var dynamoDb = new AWS.DynamoDB.DocumentClient(); 

let counter = 0;
const getAllData = async (params) => { 

    let data = await dynamoDb.query(params).promise();

    console.log(data);

    let { Count } = data;
    counter += Count;

    if (data.LastEvaluatedKey) {
        params.ExclusiveStartKey = data.LastEvaluatedKey;
        return await getAllData(params);

    } else {
        console.log("total: "  + counter);
        return data;
    }
}

async function runQuery() {

    const deviceID = "danx10000";

    console.log("Counting deviceID: " + deviceID);

    var params = {
        TableName: "ticketing-app-TicketingTable-EH86IORM88OL",
        IndexName: "InvertedKeys",
        KeyConditionExpression: "#deviceID = :deviceID",
        ExpressionAttributeNames: {
            "#deviceID": "deviceID"
        },
        ExpressionAttributeValues: {
            ":deviceID": deviceID
        },
        Select:'COUNT'
    };

  var ddbResponse = await getAllData(params);
//   return console.log(ddbResponse);
//   return console.log("Count of deviceId " + deviceID + ": " + Count);
}

function timeout(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}
async function iterate(x) {
    for (let step = 0; step < x; step++) {
        await timeout(1000);
        await runQuery();
    }
}


module.exports = {
    runQuery,
    iterate
  };