# README

### How to run the application
1. Install ruby
2. Install Ruby on Rails 5
3. Download app with git from console
3. Install bundle gem
4. Install gem dependencies with bundle
5. Run database migrations
6. Run rails server

#### How to run the application

* install ruby version 2.4 via rvm
* install rails with command gem install rails

#### Download app with git via console

```console
git clone git@github.com:ZeForge/Community.git
```
```console
cd Community/
```
```console
gem install bundle
```
```console
bundle install
```
```console
rake db:migrate
```
```console
rails server
```
* Open in browser URL http://localhost:3000


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
