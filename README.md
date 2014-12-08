Computer club
================

`computerclubadmin@example.org` will try and login every 15 seconds and click
on the latest user's home page in the list of users
(adminpants is a bit twitchy).

Lets get their session.

Ruby on Rails
-------------

This application requires:

- Ruby 2.1.2
- Rails 4.1.8

Getting Started
---------------

You will want the plugin `EditThisCookie` or similar to insert the session.
Make sure that you have [phantomjs](http://phantomjs.org/download.html) installed first and then:

~~~bash
bundle install
bundle exec rake db:setup
bundle exec rails s -b localhost
~~~


And in a seperate window
~~~bash
bundle exec rake admin_user_simulation
~~~

