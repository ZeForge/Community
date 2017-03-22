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
gem install bundle
bundle install
rake db:migrate
rails server
```

# RAILS CONSOLE HOWTO

## Categories

Add category named programming

```ruby
Category.create(name: "Programming")
```

## Skills
Add skill and assign it to category with id 1
```ruby
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
