import ballerina/io;
import ballerina/http;

type student record {[
        string id;
        string username;
    ]};
public function main() returns error? {
    http:Client person = check new("localhost:7070");

    json resp= check person->/Person/create.post[("id": 5, "username": Weriuka Lavito)];
    io:print(resp.toString());

    student [] Person=check person->get("/Person/all");
    io:println(Person.toJsonString());
}
