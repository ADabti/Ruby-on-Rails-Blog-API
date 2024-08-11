# Ruby on Rails Blog API

# This is a simple Ruby on Rails API-only application for managing blog posts and users.
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

# Start the Rails server
rails server

# The application will be available at http://localhost:3000.

## API Endpoints

# Posts Endpoints
# Retrieve all posts
GET /posts

# Retrieve a specific post by ID
GET /posts/:id

# Create a new post (requires authentication)
POST /posts

## Authentication

# The POST /posts endpoint requires basic token-based authentication.
# Include an Authorization header with your request.

# Example request using curl:
curl -X POST http://localhost:3000/posts \
-H "Authorization: your-secret-token" \
-d "post[title]=New Post&post[content]=This is the content&post[user_id]=1"

## Testing

# Prepare the test database
rails db:migrate RAILS_ENV=test
rails db:seed RAILS_ENV=test

# Run the tests
rails test

## Troubleshooting

# Migrations are pending:
# If you encounter an error related to pending migrations, run:
rails db:migrate RAILS_ENV=test

# Server issues:
# If the server isn't starting, check for error messages in the terminal and ensure all dependencies are correctly installed.

# Database issues:
# Ensure that PostgreSQL is running and properly configured.
# If the database isn't created, run:
rails db:create
rails db:migrate

## License

# This project is licensed under the MIT License.
# Feel free to use and modify it as you see fit.
