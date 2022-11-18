import ballerina/http;
import ballerina/log;

type PaymentRemediationRequest record {
    string orderId;
    float amount;
    string currency;
    string 'source;
    string description;
    string receivedOn;
};

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + request - the remediation request
    # + return - an error or nothing
    resource function post payment/remediate(@http:Payload PaymentRemediationRequest request) returns error? {
        log:printInfo("payment remedation request recieved", remediationRequest = request);
    }
}
