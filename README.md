# README

How to run

* install ruby version 2.4 via rvm
* install rails with command gem install rails
* ```console
git clone git@github.com:ZeForge/Community.git
```
* ```console
cd Community/
```
* ```console
gem install bundle
```
* ```console
bundle install
```
* ```console
rake db:migrate
```
* ```console
rails server
```
* Open in browser URL http://localhost:3000


# RAILS CONSOLE HOWTO

## category
* Add category named programming
```ruby
Category.create(name: "Programming")
```

## Skill
* Add skill and assign it to category with id 1
```ruby
Skill.create(name: "PHP", category_id: 1)
```

## Users

### List all users
```ruby
User.all
```

### List last user

```ruby
User.last
```

* List last user's skills

```ruby
User.last.skills
```

* List last user's skills
```ruby
User.last.skills.ids
```
