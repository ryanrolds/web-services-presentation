B# Service-oriented architecture

## About Ryan Olds (Who)

## Web services - How we deliver out content

Initially this was going to be Service oritented architecture. Which is mostly 
concerned with taking the services we will talking about today and how to organize 
as well as maintain them. How to phrase in new services and phase out legacy services
is also key part of SOA. 

After some dicusion it was decided to trim things down. So, we will be talking about
common services found in non-trivial Web Services.

## The base case

A web service hosting a collection of HTML, CSS and JS files. For a while most web sites 
just a collection of files. Pretty quickly that wasn't enough. We wanted to start selling
things online and static content + human labor just didn't scale. 

Now we have various languages to perform arbitary business logic in response to actions
users perform on our web pages. The modern trivial case is typically a single web server
capable of running a scripting language sitting on top of a directory containing scripts, 
HTML, CSS, and JS. 

## And this works, but....

## Feature creep

It's not enough to be able to get and set data for HTTPS requests. People wanted more:

* Reporting
* Background services
* Monitoring and notification of events
* 

Many of these situations don't fit the request+response model common in the base case.

## Syncronous and Asyncronous

* 

## Common services

### Web servers

Apache, NGINX

### Data stores

RDMS (SQL: PostgreSQL, MySQL, MSSQL, Oracle)

### Monitoring & Logging

Lots of SaaS monitoring services. Lots of log storage solutions. ELK stack.

### Messaging

Message Brokers (RabbitMQ, ZeroMQ, Amazon SQS, OS built-in IPC)

Work queue, ensuring that all backend/frontend servers get events.

### Front-end & Backend applications

Node.js, Python, .NET, really anything that can handle HTTP protocol.

Front-end code being served by own service and backend is REST API, access control, sessions

### Workers

A group of services that handle long running task and interact with the backend & frontend servers.

## When do we use these services

## Example #1 - Selling custom reports

Work queue, with a report workers storing reports in S3. Access to reports made through temporary S3 URL.

Diagram

## Example #2 - 

I would like this example to include a Pub/Sub MQ setup. Some kind of collobrative editor (Google Docs)?

Diagram

## Continues to change

### HTTP/2.0

### Web Sockets

### New data stores

* NoSQL (MongoDB, Redis, etc...)
* Graph database (not commonly used, but super useful with social media)

## Where to go from here

Look for librarys for interacting with these various services, install and try them. 

## Challenge

Try out RabbitMQ or some other message queue. Once a message broker is added a system
a lot of possibilities open up.

## Questions