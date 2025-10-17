exports.handler = async (event) => {
    console.log("Lambda deployment triggered");
    
    // This Lambda will always succeed
    const response = {
        statusCode: 200,
        body: JSON.stringify({
            message: "Deployment successful via Lambda",
            timestamp: new Date().toISOString()
        }),
    };
    return response;
};