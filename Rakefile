# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

ADMIN_EMAIL    = 'computerclubadmin@example.org'
ADMIN_PASSWORD = 'correcthorsebatterystable'

task :admin_user_simulation do
  require 'capybara'
  require 'capybara/dsl'
  require 'capybara/poltergeist'
  include Capybara::DSL
  Capybara.default_driver = :poltergeist
  Capybara.run_server = false
  Capybara.app_host = 'http://localhost:3000'

  # Sign in as an admin user every so often
  while true
    puts 'Admin twitch'

    page.driver.browser.reset
    visit '/'
    click_link 'Sign in'

    within('.new_user') do
      fill_in 'Email', with: ADMIN_EMAIL
      fill_in 'Password', with: ADMIN_PASSWORD
      click_on 'Sign in'
    end

    click_link 'Users'

    page.find('tr:last-child > td:first-child > a').click

    sleep 15
  end
end
