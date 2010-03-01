Given /^I am logged with "([^\"]*)"$/ do |login|
  @user = User.create!(:login => login, :email => 'test@gmail.com', :password => 'generic', :password_confirmation => 'generic')
  visit login_path
  fill_in('Login', :with => login)
  fill_in('Password', :with => 'generic')
  click_button('Login')
end