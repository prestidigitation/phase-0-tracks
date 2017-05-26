# 9.1 How the Web Works
## Release 0
### What are some common HTTP status codes?

The most common error code is the 404 error. This indicates that the requested resource was either not found or is no longer available. This can be the result of things like typos or a web page that is no longer being hosted.

A 403 error indicates that the resource is forbidden. This can occur when the client's certificate is invalid, or if the client is not on an approved whitelist of machines that can access the system.

The 500 is an internal server error. This is a catch-all category for errors that don't fit any of the other 500 error codes, or when the programmer hasn't coded the specific 500 status code to return.

The 503 error code indicates that the web server isn't available, with the problem possibly being temporary. This can happen when the web server has just restarted and isn't finished initializing, or if the server is down for maintenance.

The 504 error indicates a gateway timeout. When a proxy server tries to communicate with a secondary web server, such as an apache server, but the request to that server is taking too long to complete, this error can be returned. Often times there is a DNS issue, or the network device could be down, or the machine could be too busy processing other requests to respond in a timely fashion.

As a general rule of thumb, retrying requests after receiving a 500 level error can often result in getting a successful response.


### What is the difference between a GET request and a POST request? When might each be used?

A GET request is used for retrieving data from a web server. Other GET usage rules include:
* Can be cached
* Remain in browser history
* Can be bookmarked
* Shouldn't be used for sensitive data
* Has data length restrictions

A POST request is used for writing data to a web server location. Other POST usage rules include:
* Are never cached
* Don't remain in browser history
* Can't be bookmarked
* Have no data length restrictions

If a website persistently stores data on its users in a database, then when the user submits some data, this could be processed as a POST request to the web server. If the user clicked on a website feature that displays certain persistently stored data from the database, this could be submitted as a GET request.


### Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is some data that is locally stored on a user's local computer as a small text file. Many websites don't store any persistent data related to users, so a cookie is a way of storing information about the user that gets sent to the web server when the user returns to the website in the future. For instance, when a user visits a webpage his name can be stored in a cookie on his local machine. The user's name can then be displayed on the page upon any subsequent visits due to the website retrieving the name data from the locally-stored cookie.
