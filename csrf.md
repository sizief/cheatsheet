## cookies
 - HttpOnly, can not be read by clinet side scripts
 
## CSRF 
Cross Site Request Forgery
User logged in to A.com. A.com server uses session and cookie to identify the user. 
Then same user goes to B.com. Now B.com can send requests from the user's browser to A.com. A request to change profile picture for example. A.com server will check the cookie attached to request, and because it is sent from the user's browser, the requested changes will be applied. That is a CSRF attack.

How to defend agaisnt it? use CSRF tokens like JWT

## CORS
Cross Origin Resource Sharing
You can send request from A.com to the A.com's server. If you send a request from B.com, then it is rejected. CORS is a policy.  
For any requests that may change data on server, browsers first send a preflight request (OPTION) to get the approval of the next request:
Browser:  Can I send post request from this origin? (origin is the url)
Server: (Checking CORS settigns) yes send it

So by setting CORS you can decrease the chance of CSRF. But it is not completely safe. CORS are respocted by browsers, not by any other softwares. You can easily set origin header in cUrl for example.

## JWT
Json Web Token
Historically, servers set an id in cookies and save the same id in their session in the server. So when you logged in, you will receive an session id in a cookie. ID will be send to server with each requests. That is how cookies work.

With JWT thing are not the same. When you logged in, server will create a josn, like this:
```
{id: 1, can_read: true}
```
will encrypt and sign it and then it will be send back to user as a cookie or payload.Then user would send back that JWT with each request. But not as cookie but as a header. Because if server expect to receive JWT as a cookie, then we are vulnurale to CSRF attacks. But if you can read the cookie, then you have access to JWT and it means you are in the correct origin and you are the rightful owner of that JWT.

This is important: JWT should be send back to server as a header or payload, not as a cookie.

Then server will check it's own signature. If correct, then no problem.

## Where to save JWT or CSRF tokens
- local storage. It is safe regarding CSRF attacks, but it is not safe for XSS attacks
- HttpOnly (send JWT as a cookie) in this approach we save jwt in memory and then we referesh jwt access token by refresh token. See (here)[https://hasura.io/blog/best-practices-of-using-jwt-with-graphql/]. Still I think we are vulnurale to XSS.