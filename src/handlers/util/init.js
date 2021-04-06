var AWS = require('aws-sdk');
var cloudwatch = new AWS.CloudWatch({apiVersion: '2010-08-01'});

module.exports = async () => {
    // Put Custom Metric
    var params = {
        MetricData: [ /* required */
        {
            MetricName: 'CONCURRENCY', /* required */
            Dimensions: [
                {
                Name: 'EXECUTION_ENVIRONMENTS',
                Value: 'PROVISIONED'
                },
            ],
            Unit: 'Count',
            Value: 1
            },
        ],
        Namespace: 'TICKET_APP' /* required */
    };

    let cw = await cloudwatch.putMetricData(params).promise();
    
    console.log("init called: " + cw);
};
