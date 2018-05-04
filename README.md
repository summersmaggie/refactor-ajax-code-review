# Refactoring & AJAX - Ruby on Rails - Week 3

#### _By Maggie Summers_

## Description

_A website created using Ruby on Rails that displays products from Mario's Whole Foods, as well as reviews associated with those products._

##  Specifications
  * AJAX Functionality
  _Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update._
  _Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add._
  _Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated._

  * Refactoring
  _Ensure that users can't order a negative number of items._
  


## Installation

  1. _`$ git clone https://github.com/summersmaggie/marios-whole-foods`_

  2. _`$ cd refactor-ajax-code-review`_

  3. _`$ bundle install`_

  4. _`$ rake db:create`_

  5. _`$ rake db:migrate db:test:prepare`_

  6. _`$ rake db:seed`_

  7. _`$ rails server`_

#### Development server

Run `rails server` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Known Bugs

  _No known bugs at this time._

## Support and contact details

  _To suggest changes, submit a pull request in the GitHub repository._

## Technologies Used

  * HTML
  * CSS/Bootstrap
  * Ruby
  * Rails
  * ActiveRecord

### License

  *MIT License*

Copyright (c) 2018 **Maggie Summers**
