# README

How to run

* install ruby version 2.4 via rvm
* install rails with command gem install rails
* git clone git@github.com:ZeForge/Community.git
* cd Community/
* gem install bundle
* bundle install
* rake db:migrate
* rails server
* Open in browser URL http://localhost:3000


= RAILS CONSOLE HOWTO

== category
* Add category named programming
Category.create(name: "Programming")

== Skill
* Add skill and assign it to category with id 1
Skill.create(name: "PHP", category_id: 1)

== Users

* List all users
User.all

* List last use
User.last

* List last user's skills
User.last.skills

* List last user's skills
User.last.skills.ids
