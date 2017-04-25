Path: Backend Engineering (Ruby on Rails) - January 2017  Unit: Week 5 - Welcome to Rails
Now that we have models, lets wire up an API to use them

Learning Objectives

Understand the basics of Rails routing
Understand Rails controllers
Understand ActiveModelSerializers
Deliverables

A PR to your existing blogsy repo from a branch called api
Said PR submitted to newline
Requirements

Explorer Mode

Using the models you created yesterday:

GET /posts should return a list of all posts in JSON. Said JSON should include the post's user's username and all of its attributes
GET /users should return a list of all users in JSON. Said JSON should include the number of posts they've written.
POST /users with a JSON body of {"user" : {"username" : "my_username", "email" : "test@example.com", "bio" : "My funky bio" }} should create a new user.
GET posts/:id should return a JSON representation of the post with an ID of params[:id]
GET posts/:id/comments should return a JSON representation of the comments left on the post with an ID of params[:id]
Use ActiveModel Serializers to craft the above JSON output to your liking.
Use Postman to manually test your app and its endpoints.

Adventure Mode

GET users/:id/posts should return a JSON representation of the posts written by a user with an username of params[:id]
DELETE posts/:id should delete a post with that ID and return just a 200 status code (and no content)
Add an API endpoint to posts (and the underlying database structure to support) that registers an upvote when a POST request happens.

Epic Mode

Write integration tests for all the above.
When a user is created, it should also get an api_token generated for it.
The POST endpoint for user should return said api_token in the response, but the GET request (the list) should not.
