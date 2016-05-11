Given(/^I am at Safari book page$/) do
  visit('https://www.safaribooksonline.com/home/')
end

When(/^I research : "([^"]*)"$/) do |time|
  find('#search').click
  find('#search').set time
  find('.search-submit').click
  first('.highlight').click
  find('.t-sign-in').click
end

And(/^I am logged in with username: "([^"]*)" password: "([^"]*)"$/) do |username, password|
  find('.t-sign-in').click
  sleep 2
  find('#id_email').set username
  find('#id_password1').set password
  find('#login').click
end

When(/^I can see and calculate total time of book$/) do
  sleep 3
  #all('div.chapter-running-time').each { |time| puts time.text }
  sum = 0
  #total = all('div.chapter-running-time').each { |time| puts  sum+=time.text.to_f}
  total = all('div.chapter-running-time').each { |time| puts  sum+=time.text}
  total.last
end


