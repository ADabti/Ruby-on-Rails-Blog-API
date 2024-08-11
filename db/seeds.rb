# Sample Users
User.create([
  { username: "user1", email: "user1@example.com" },
  { username: "user2", email: "user2@example.com" },
  { username: "testuser", email: "test@example.com" }
])

# Sample Posts
Post.create([
  { title: "First Post", content: "This is the content of the first post.", user_id: User.first.id },
  { title: "Second Post", content: "This is the content of the second post.", user_id: User.first.id },
  { title: "Third Post", content: "This is the content of the third post.", user_id: User.last.id }
])
