# Ruby-Tools

## Integrate Bootstrap to Rails 7 with importmaps

### Installation

Run the following command in your project directory console(if you are using importmaps):
```ruby
bin/importmap pin bootstrap
```
Go to ```config/importmap.rb``` file and
Replace:
```ruby
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.11.2/lib/index.js"
```
with:
```ruby
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.2/dist/esm/index.js"
```
Add latest version of Bootstrap gem in ```Gemfile```
```ruby
gem 'bootstrap', '~> 5.2.1'
```
Run in console
```ruby
bundle install
```
Go to ```app/javascript/application.js``` file and add the following line:
```ruby
import "bootstrap"
```
Go to ```app/assets/stylesheets/application.css``` and rename it to ```app/assets/stylesheets/application.scss``` file and add the following line:
```ruby
@import 'bootstrap';
```

# app
