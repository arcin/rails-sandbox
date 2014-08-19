# DB Folder
This folder will contain all of your database migration files and schema.rb

## What's in this folder:
- [migrations folder](http://api.rubyonrails.org/v3.2.2/classes/ActiveRecord/Migration.html) This folder won't exist until you actually have migrations to run. How do you create a migration? E.g. Rails g migration create_users
- schema.rb: this file won't exist until you actually run your migrations under migrations/. How do you run migrations? Rake db:migrate. This will migrate your database and generate the schema.rb, which reflects the current state of your database.
- seed.rb: This file should contain all the record creation needed to seed the database with its default values. The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
