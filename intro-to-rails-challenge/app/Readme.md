# App Folder
This is where you'll spend most of your time. This folder will contain most of your app code.
## What's in this folder:
  - [assets](http://guides.rubyonrails.org/v3.2.13/asset_pipeline.html):
    This folder will contain the images, javascripts and stylesheets that you create (no 3rd party like bootstrap or a jquery plugin):

    - images: anything that you include here will be served under assets/image_path. By using the image_tag helper method in views, you can simply pass the image name/path and Rails will figure it out for you.
    - javascripts/application.js: Rails uses a library called sprockets to compile assets (read the link above). Every file under javascripts folder will be compiled into this file in production. Therefore, the only code that needs to be here is code requiring files and folder.

    You can require a file by using:

    ```javascript
      //= require FILE_NAME
    ```

    You can require a folder by using:

    ```javascript
      //= require_tree Folder_NAME
    ```

      By default jquery and jquery_ujs (we will deal with jquery_ujs later, but it's important) and it requires everything under javascripts folder.
    - stylesheets/application.css: see application.js, it works in a similar way.

  - [controllers](http://guides.rubyonrails.org/v3.2.13/action_controller_overview.html)
    This folder will include all of your controllers. In Rails, controllers are classes that inherit from application_controller. This folder includes application_controller by default, which is your base controller (all other controllers will inherit from it) and it inherits from ActionController:Base. Therefore, anything that you include in application_controller will be available to all of your controllers including parent class methods (ActionController::Base)

  - helpers:
    This folder contains all the views helpers. Any helpers/code in this folder is only meant to be used in the views, not the controllers or models. All methods will be automatically exposed to the views. Helpers for controllers and models will be discussed later.
  - [mailers](http://guides.rubyonrails.org/v3.2.13/action_mailer_basics.html):
    This folder will include your mailer models and views.
  - [models](http://api.rubyonrails.org/v3.2.2/classes/ActiveRecord/Base.html)
    This folder will include all of your models. A model is just a class that inherits from ActiveRecord::Base.
  - [views](http://guides.rubyonrails.org/v3.2.13/action_view_overview.html):
    All of your app layout and view logic will be included under this folder. Each controller must have it's own folder with html.erb files.

