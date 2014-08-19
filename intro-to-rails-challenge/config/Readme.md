# Config Folder: http://guides.rubyonrails.org/v3.2.13/configuring.html
This folder has all of your App's and Rails configuration files.

## What's in this folder:
  - environments folder:
    This folder contains environment-specific settings,  there are 3 main enviroments in Rails (you can add more, when you need to):
      - development: this is where you'll be spending most of your time, it's your local machine (when you type Rails s).
      - test: this is where your tests run, it's a separate environment and database (look at database.yml) from development.
      - production: heroku or any other hosting service.
    Why would you have different settings for each environment? Here are a few reasons:
      - Your test database needs to be completely wiped out after each run. Otherwise, it will grow forever and produces unpredictable test results. This, however, doesn't need to happen in development or production. Therefore, we need to separate the databases.
      - In development, we want to see actual server exceptions and stack traces, but in production, we want to serve our public/404,422.hml. Intruders can get a lot of information by looking at our app stack trace (so can you, so read them in development).
      - In development, we don't want to compress/minify our javascript and/or css. This will make it impossible to debug. However, in production, we want to serve light weight files.
      - there is a lot more that you can learn by looking at the files themselves and reading the documentation.

  - initializers folder:
    This contains all of the code that needs to run before your app starts. For example, if you need to setup an environment variable, such as a Twitter API key and secret, you can create a twitter.rb under intializers that does exactly that.
  - locales: [internationalization](http://guides.rubyonrails.org/v3.2.13/i18n.html)
  - application.rb: Where is your app's name? look for it in application.rb. Whatever name you gave your app, will appear as a module <APP_NAME>. This module has a class called Application, which inherits from Rails::Application so you can get all the Rails sweetness. This file contains general application settings regardless of environment. However, settings in config/environments/* take precedence over those specified here (Read the comments in application.rb)
  - boot.rb: requires all your gems in the gem file, you generally don't need to require gems like you did in Sinatra. Generally, this is not a file that you'll touch.
  - database.yml: This is where Rails goes to look for environment-specific database configurations (name of database, which database engine you're using, etc.). As best practices, you shouldn't be commtting this to the repo. Your App will simply not start without this file.
  - environment.rb: don't touch that file, read it, but don't add anything to it.
  This file simply loads everything under environments folder.
  - routes.rb: http://guides.rubyonrails.org/v3.2.13/routing.html (seriously read it). Go read the comments in the routes.rb.




