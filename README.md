# Team Awesome's Vagabond

[Heroku Link](https://www.TBD.com)

[GitHub Link](https://github.com/anonym0us3/vagabond/)

![screenshot]
(http://i.imgur.com/TBDTBDTBD.jpg)



## Awesome Vagabond Overview:

A travel community for all users to share city-specific tips (via posts) about their favourite locations around the world!



#### Prerequisites:

* A Rails >= 3.2 Application
* Ruby >= 2.0
* PostgreSQL database
* Active Record ORM
* RESTful design

##### Installation/QuickStart Guide:

Clone this repo. For help, please check out [this guide](http://bfy.tw/3qzM).

Add these lines to your gemfile if you do not already have them:

	gem 'bcrypt', '~> 3.1.7'
	gem "paperclip", "~> 4.3"

In order for the Paperclip gem to run, it requires ImageMagick. **Please follow the instructions at [ImageMagick's site](https://github.com/thoughtbot/paperclip#requirements)**

If you forget to `bundle install` after that, you're going to Developer Hell and a puppy will die. **Do not be an asshole to puppies!**

*Starting the database*

`rake db:drop` and then `rake db:create db:migrate` to get the ball rolling. We've kindly supplied you with some basic seed data, so you can right-away do `rake db:seed`.

#### List of API Endpoints

Endpoint | Method | Route | Data
--- | --- | --- | ---
*/* | GET | / | Serves the homepage
*"/users"* | GET | "users#index" | Displays # of signed-up users
*"/users/new"* | GET | "users#new" | Takes new user to signup page
*"/users"* | POST | "users#create" | Creates new user using signup page's data 
*"/users/:id"* | GET | "users#show" | Shows a single user's page
*"/users/:id/edit"* | GET | "users#edit" | Takes logged-in user to update form for themselves
*"/users/:id"* | PATCH/PUT | "users#update" | Updates user's details from edit page's data
*"/login"* | GET | "sessions#new" | Logs in existing user
*"/logout"* | GET | "sessions#destroy" | Logs out existing user, deletes session data/cookie
*"/sessions"* | POST | "sessions#create" |
*"/posts"* | GET | "posts#index" | Lists all posts
*"/posts/new"* | GET | "posts#new" | Takes a user to a post creation page
*"/posts"* | POST | "posts#create" | Creates a new post from post creation page's data
*'/posts/:id'* | GET | 'posts#show' | Page for a single post
*'/cities'* | GET | 'cities#index' | Lists all cities
*'/cities/new'* | GET | 'cities#new' |
*'/cities'* | POST | 'cites#create' |
*'/cities/:id'* | GET | 'cities#show' | Shows a single city