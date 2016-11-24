// TODO make table extend this, so you can do table.getItem() etc

protocol DynamoDbAction {    
    func getItem(table: DynamoDbTable, keyValues: DynamoDbTableKeyValues, completion: @escaping ((_ itemJsonString: String) -> Void))
    func putItem(table: DynamoDbTable, item: [String: Any], condition: String, conditionAttributes: [String: [String:String]], completion: @escaping ((_ error: AwsRequestErorr?) -> Void))
    func deleteItem(table: DynamoDbTable, keyValue: DynamoDbTableKeyValues, conditionExpression: String?, returnValues: DynamoDbReturnValue?, completion: @escaping ((_ response: [String: Any]?, _ error: AwsRequestErorr?) -> Void))
}
