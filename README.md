# README

# How to run the application
1. Install ruby version 2.4 via RVM
2. Install Ruby on Rails 5
3. Download app with git from console
3. Install bundle gem
4. Install gem dependencies with bundle
5. Run database migrations
6. Run rails server
7. Open in browser URL http://localhost:3000

#### Download app with git via console
```console
git clone git@github.com:ZeForge/Community.git
cd Community/
```
#### Install dependencies
```console
gem install bundle
bundle update
bundle install
```
#### Run database migration and run Rails web server
```console
rake db:migrate
rails server
```

# RAILS CONSOLE HOWTO

Enter Rails console inside project directory
```console
rails console
```

## Categories

List Category attribute names
```ruby
Category.attribute_names
```

Add category named programming
```ruby
Category.create(name: "Programming")
```

List all Categories
```ruby
Category.all
```

Find category with name 'Programming'
```ruby
Category.where(name: "Programming")
```

List last category
```ruby
Category.last
```

List last category's id
```ruby
Category.last.id
```

## Skills

Add skill and assign it to category with id 1
```ruby
Skill.create(name: "Ruby", category_id: 1)
Skill.create(name: "PHP", category_id: 1)
```

## Users

#### List all users
```ruby
User.all
```

### List last user
```ruby
User.last
```

#### List last user's skills
```ruby
User.last.skills
```

####  List last user's skills
```ruby
User.last.skills.ids
```

### Update user attribute
Add user with id 1 to superadmin_role role
```ruby
user = User.find(1)
user.update_attribute :superadmin_role, true
```


# Importing fake data into app via Rails console

Importing 100 posts and assign them to user with id of 1
```ruby
(1..100).each do |i|
  Post.create!(
    title: "Lipsum Post #{i}",
    body: %{ Nullam hendrerit iaculis sodales.},
    description: %{ Nullam hendrerit iaculis sodales.},
    slug: ("Lipsum Post #{i}"),
    user_id: 1
    )
end
```
Count all posts, after import we should have 100 posts
```ruby
Post.all.ids.count
```

List all Post id numbers
```ruby
Post.all.ids
```
