require 'page-object'
require 'rspec'

class YopMailLoginPage
  include RSpec::Matchers
  include PageObject

  DEFAULT_DATA = {'email'  => 'test197@yopmail.com', 'button' => 'Проверить почту'}

  page_url ENV['base_url']

  #for page login
  text_field(:email, :id => 'login')
  button(:login, :css => '#f > table > tbody > tr:nth-child(1) > td:nth-child(3) > input')

  #for page in mail
  text_field(:login_input, :id => 'login')
  span(:refresh, :css => '#lrefr > span > span')

  def auth(data = {})
    puts "Fill data ".colorize(:color => :green)
    populate_page_with DEFAULT_DATA.merge(data)

    puts "Fill email".colorize(:color => :green)
    email

    puts "Click login".colorize(:color => :green)
    login
  end

  def check_mail(data = {})
    puts "Fill data ".colorize(:color => :green)
    populate_page_with DEFAULT_DATA.merge(data)

    puts "Click button refresh ".colorize(:color => :green)
    refresh_element.click

    puts "Check input email".colorize(:color => :green)
    expect(login_input).to eq "test197@yopmail.com"
  end
end

