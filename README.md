# Ruby on Rails Blog API

# This is a simple Ruby on Rails API-only application for managing blog posts, users, and comments.
# The API supports basic CRUD operations for posts and includes token-based authentication for creating new posts.

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

# Prepare the test database
rails db:migrate RAILS_ENV=test
rails db:seed RAILS_ENV=test

# Start the Rails server
rails server

# The application will be available at http://localhost:3000.

## Using the API

# Once the server is running, you can use the following endpoints to interact with the API:

# Retrieve all posts
http://localhost:3000/posts

# Retrieve paginated posts (5 per page)
# You can specify the page number with the `page` parameter.
# Example: http://localhost:3000/posts?page=2

# Retrieve a specific post by ID (replace :id with a post ID like 1)
http://localhost:3000/posts/:id

# Retrieve all users
http://localhost:3000/users

# Retrieve a specific user by ID (replace :id with a user ID like 1)
http://localhost:3000/users/:id

# Retrieve all comments for a specific post (replace :post_id with the ID of the post, e.g., 5)
http://localhost:3000/posts/:post_id/comments

# Example:
# Retrieve comments for post with ID 5
http://localhost:3000/posts/5/comments

## Running Tests

# Run the controller tests to ensure the API endpoints work as expected:
rails test
