# Serverless Workflows

### Initialize a New Service

A [Service](https://serverless.com/framework/docs/providers/aws/guide/services/) roughly corresponds to an entity in a 
REST API. Run this command to create the boilerplate `serverless.yml` and `handler.js`. 

```
serverless create --template aws-nodejs --path ideas
```

### Deploy a Service 

Create or update a CloudFormation template to deploy a service.

```
cd ideas
serverless deploy 
```

### Update a Function 

Using `serverless deploy` can be slow, so update just the function you're working on with:

```
serverless deploy function --function myFunction
```