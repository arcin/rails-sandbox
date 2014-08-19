# Public Folder
The only folder seen to the world as-is. Contains the static files and compiled assets. Your assets (javascript, stylesheets, images, fonts) will eventually be compiled into this folder in production. If you have an assets folder in this public directory, it will override app/assets. You should not precomplie assets (basically if you see a public/assets folder, you're doing it wrong).

## What's in this folder:
  - production error templates:
    - 404.html: Page Not found
    - 422.html: The 422 (Unprocessable Entity) status code means the server understands the content type of the request entity (hence a 415 (Unsupported Media Type) status code is inappropriate), and the syntax of the request entity is correct (thus a 400 (Bad Request) status code is inappropriate) but was unable to process the contained instructions. For example, this error condition may occur if an XML request body contains well-formed (i.e., syntactically correct), but semantically erroneous, XML instructions.
    - 500.html: Server exception.
  - index.html: default page shown at root (should be removed after you've added root path in routes.rb )
  - favicon.ico (tiny icon in your url path/bar)
  - robot.txt (http://www.robotstxt.org/wc/norobots.html)



