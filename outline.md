# Service-oriented architecture

## About me

* Software engineer / Full-stack developer
* https://github.com/ryanrolds
* Works at IRIS Educational Media (until mid-June)

## Web services - How we deliver our content

Initially this was going to be Service oritented architecture. Which is mostly 
concerned with taking the services we will talking about today and how to organize,
maintain, and phase in & out new and old services.

After some dicusion it was decided to trim things down. So, we will be talking about
common services found in non-trivial Web Services.

## Questions & comments

Raise you hand at anytime. If I missed a key point let me know, no sense in people
leaving this talk misinformed.

## The base case

A web service hosting a collection of HTML, CSS and JS files. For a while most web sites 
just a collection of files. Pretty quickly that wasn't enough. We wanted to start selling
things online and static content + human labor just didn't scale. 

Now we have various languages to perform arbitary business logic in response to actions
users perform on our web pages. The modern trivial case is typically a single web server
capable of running a scripting language sitting on top of a directory containing scripts, 
HTML, CSS, and JS. 

## And this works initially, but....

* More users
  * 10 concurrent
  * 100 concurrent
  * 1000 concurrent
  * and more....
* Feature creep
  * Reporting
  * Background processes
  * Monitoring

## Single instance web service

## Web server and DB server

## "The Cloud" and scaling

15 years ago sites were hosted on physical servers that had to be maintained the dev team or the companies sys admins. Now scaling does't require weeks of physical prep and setup. 

## Common problems

* Too much load (CPU)
* Not enough memory (RAM)
* Input/Output and disk space
* Network speed and latency

## Users interactions need to be fast

Like really fast, 250ms (1/4th of a second) or less. 

* DNS lookups
* Internet latency
* Handling of the request
* Size of the response
* Updating the UI

## CDNs (reducing load and improving latency)

The data unique to a particular URL is often quite small (HTML/JSON).

JavaScript, CSS, images are static and can be moved to a Content Delivery Network, reducing latency and load on the web server.

## Load balancers (scaling the web)

At 100 concurrent users a resposne times will increase. 

Options:
1) Bigger server
2) More servers

## Background process & reporting

Things that our system needs to do that is not done as part of fulfilling an in-flight request

* Reports
* Reminders/nudges
* Additional data processing

## Message Brokers/Queues

Allows delayed handling of artitary events in a durable and scalable way. Many ways to configure the broker and queues.

* Work queues (multiple workers dequing from a single queue)
* Publish/subscribe (each subscriber gets a copy of an event)
* Message routing
* RPC

## Scaling the datastores

Data is hard. Lots of companies trying to solve these problems. Data loss can be company killing.

RDMS/SQL: MySQL, PostgreSQL, MSSQL, Oracle
NoSQL: MongoDB (document), Redis (key-value), CouchDB (document), Neo4J (graph)

## Replication (read & write instance)

Spreads the reads and write (more complex) and writes across multiple nodes.

## Sharding / Federation

Shading:
Federation: 

## Caching often read data (reducing reads)

In memory caches

## Object stores

## Where to go from here

Look for librarys for interacting with these various services and try them. 

Lots of great information here: https://github.com/donnemartin/system-design-primer

These slides are available at https://github.com/ryanrolds/web-services-presentation

## Questions
