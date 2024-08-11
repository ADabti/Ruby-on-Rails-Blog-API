# Ruby on Rails Blog API

This is a simple Ruby on Rails API-only application for managing blog posts and users. The API supports basic CRUD operations for posts and includes token-based authentication for creating new posts.

## Setup

# Clone the repository
git clone https://github.com/ADabti/Ruby-on-Rails-Blog-API.git
cd Ruby-on-Rails-Blog-API

# Install the necessary dependencies
bundle install

# Create and migrate the database
rails db:create
rails db:migrate

# Populate the database with sample data
rails db:seed

# Start the Rails server
rails server

# The application will be available at http://localhost:3000.

# Prepare the test database
rails db:migrate RAILS_ENV=test
rails db:seed RAILS_ENV=test

# Run the tests
rails test

# Retrieve all posts
http://localhost:3000/posts

# Retrieve a specific post by ID (replace :id with a post ID)
http://localhost:3000/posts/:id

# Retrieve all users
http://localhost:3000/users

# Retrieve a specific user by ID (replace :id with a user ID)
http://localhost:3000/users/:id
