require './test/support/driver'
require 'dotenv'
require 'colorize'
require 'colorized_string'

Dotenv.load('./.env')
puts "Get new session".colorize(:color => :blue)

def driver
  Driver::Set.new.get_session
end
