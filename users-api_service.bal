// AUTO-GENERATED FILE.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/http;

listener http:Listener ep0 = new (8080, config = {host: "localhost"});

service /vle/api/v1 on ep0 {
    # Get all users added to the application
    #
    # + return - returns can be any of following types
    # User[] (A list of users)
    # http:Response (Error handling user)
    resource function get users() returns User[]|http:Response {
    }
    # Insert a new user
    #
    # + payload - parameter description 
    # + return - returns can be any of following types
    # Inline_response_201 (User successfully created)
    # http:Response (Error handling user)
    resource function post users(@http:Payload User payload) returns Inline_response_201|http:Response {
    }
    # Get a single upser
    #
    # + username - username of the user 
    # + return - returns can be any of following types
    # User (user response)
    # http:Response (Error handling user)
    resource function get users/[string username]() returns User|http:Response {
    }
    # Update an existing user
    #
    # + username - username of the user 
    # + payload - parameter description 
    # + return - returns can be any of following types
    # User (User was successfully updated)
    # http:Response (Error handling user)
    resource function put users/[string username](@http:Payload User payload) returns User|http:Response {
    }
    # Delete an existing user
    #
    # + username - username of the user 
    # + return - returns can be any of following types
    # http:NoContent (User was successfully deleted)
    # http:Response (Error handling user)
    resource function delete users/[string username]() returns http:NoContent|http:Response {
    }
}
