# Lib Folder
What should be included in this folder is quite a debate. I won't get into details, but the basic pattern/usage (which I would like you to use) goes like this: Include classes, modules, libraries that you wrote, which are not active record models, controllers or views under that folder. This quickly becomes a 'junk drawer' and there are many patterns to clean it and keep your app code tighter. However, as a first pass, we'll use this folder in the most basic way.

## What's in this folder:
- classes and modules that you wrote and want to include them in your models or controllers.
- tasks folder: Your own custome rake tasks: *.rake
- assets: asset-specific libraries (you won't use this)
