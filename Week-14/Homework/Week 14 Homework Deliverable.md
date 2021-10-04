## HTTP Requests and Responses

1 What type of architecture does the HTTP request and response process occur in?

**HTTP request and response occurs in a client server architecture**

2 What are the different parts of an HTTP request?

**The HTTP request is divided into**

- **a request line (+ query parameters)**
- **the headers (cookie here)**
- **and a white space terminator**
- **a response body**

3 Which part of an HTTP request is optional?

**The HTTP request body is optional**

4 What are the three parts of an HTTP response?

**The three parts of an HTTP response are**

- **status**
- **headers**
- **response body**

5 Which number class of status codes represents errors?

**The 400 series status codes represent client side errors.**

**The 500 series status codes represent server side errors.**

6 What are the two most common request methods that a security professional will encounter?

**The most common request methods are GET and POST**

7 Which type of HTTP request method is used for sending data?

**The POST method is used for sending data**

8 Which part of an HTTP request contains the data being sent to the server?

**The request header contains the data being sent to the server.**

9 In which part of an HTTP response does the browser receive the web code to generate and style a web page?

**The response body contains the HTML and CSS.**

## Using curl

10 What are the advantages of using `curl` over the browser?

**Using curl allows quick iteration of modifications of HTTP request configuration options in a programmatic way.**

11 Which `curl` option is used to change the request method?

**Use the -X option to change the request method.**

12 Which `curl` option is used to set request headers?

**To set request headers use the -H "var-name:var-value"**

13 Which `curl` option is used to view the response header?

**Use the -I option to show only the response headers**

14 Which request method might an attacker use to figure out which HTTP requests an HTTP server will accept?

**An attacker could use the -X OPTIONS curl flags to see what requests the server will accept if it is enabled.**

## Sessions and Cookies

15 Which response header sends a cookie to the client?

**the response header Cookie holds cookie information in the server**

16 Which request header will continue the client's session?

**connection: keep-alive**

17 What is the request method?

**The request method is POST**

18 Which header expresses the client's preference for an encrypted response?

**The Updgrade-Inscure-Requests: 1 indicats preference for an encrypted response**

19 Does the request have a user session associated with it?

**Yes, user Barbara**

20 What kind of data is being sent from this request body?

**url encoded data is being sent from the body**

21 What is the response status code?

**Response code is 200, success**

22 What web server is handling this HTTP response?

**Apache is handling the request**

23 Does this response have a user session associated to it?

**Yes, Set-Cookie tells us the SessionID is 5**

24 What kind of content is likely to be in the [page content] response body?

**The body likely contains HTML**

25 If your class covered security headers, what security request headers have been included?

**X-Content-Type**

**X-Frame-Options**

**X-XSS-Protection**

## Monoliths and Microservices

26 What are the individual components of microservices called?

**Individual components are called** ???

27 What is a service that writes to a database and communicates to other services?

**APIs are the interface to databases and methods.**

28 What type of underlying technology allows for microservices to become scalable and have redundancy?

**The containerization of services allows microservices to become more scalable and have redundancy because containers can be duplicated and load balanced.**

## Deploying and Testing a Container Set

29 What tool can be used to deploy multiple containers at once?

**docker-compose is used to deploy multiple containers at once.**

30 What kind of file format is required for us to deploy a container set?

**docker-compose.yml is a  YAML file**

## Databases

31 Which type of SQL query would we use to see all of the information within a table called `customers`?

**SELECT * FROM customers**



32 Which type of SQL query would we use to enter new data into a table? (You don't need a full query, just the first part of the statement.)

**INSERT INTO employees        (firstname,lastname,email,department) **
**VALUES ('Billy', 'Bob','billybob@goodcorp.net', 'Logistics');**



33 Why would we never run `DELETE FROM <table-name>;` by itself?

**It would remove all entries from the table;**

## Bonus Challenge: The Cookie Jar

Step 1, **complete**

Step 2, **complete**

Step 3, 

1. **No obvious confirmation of login (other than next step contents of cookie)**
2. **cookie saved**
3.  **cookie has 3 rows of data** 

Step 4

1. **curl --cookie ./ryan-cookies.txt http://localhost:8000/wp-admin/index.php**
2. **Yes**

Step 5

1. **curl --cookie ./ryan-cookies.txt http://localhost:8000/wp-admin/users.php**
2. **Using ryan's cookie the returned message is `Sorry, you are not allowed to list users`**



