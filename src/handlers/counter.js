// Get the DynamoDB table name from environment variables
const tableName = process.env.SAMPLE_TABLE;

// Create a DocumentClient that represents the query to add an item
const dynamodb = require('aws-sdk/clients/dynamodb');
const docClient = new dynamodb.DocumentClient();
var AWS = require('aws-sdk');
var cloudwatch = new AWS.CloudWatch({apiVersion: '2010-08-01'});

let counter = 0;
const deviceID = "production";

/**
 * A simple example includes a HTTP get method to get all items from a DynamoDB table.
 */
exports.run = async (event) => {

    counter = 0;
    
    // All log statements are written to CloudWatch
    console.info('received:', event);

    console.log("Counting deviceID: " + deviceID);

    var params = {
        TableName: tableName,
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

    const response = {
        statusCode: 200,
        body: JSON.stringify(ddbResponse)
    };

    // All log statements are written to CloudWatch
    // console.info(`response from: ${event.path} statusCode: ${response.statusCode} body: ${response.body}`);
    return response;
}


const getAllData = async (params) => { 

    let data = await docClient.query(params).promise();

    console.log(data);

    let { Count } = data;
    counter += Count;

    if (data.LastEvaluatedKey) {
        params.ExclusiveStartKey = data.LastEvaluatedKey;
        return await getAllData(params);

    } else {
        console.log("total tickets: "  + counter);

        var params = {
            MetricData: [ /* required */
              {
                MetricName: 'TICKETS_SOLD', /* required */
                Dimensions: [
                    {
                      Name: 'TICKETS',
                      Value: 'SALES'
                    },
                  ],
                  Unit: 'Count',
                  Value: counter
                },
            ],
            Namespace: 'TICKET_APP' /* required */
          };

          let cw = await cloudwatch.putMetricData(params).promise();
          console.log(cw);

        return data;
    }
}
