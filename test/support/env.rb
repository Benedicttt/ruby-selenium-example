require './../../test/support/driver'
require 'dotenv'
require 'colorize'
require 'colorized_string'

Dotenv.load('../../.env')

def driver
  puts "Get new session".colorize(:color => :blue)
  Driver::Set.new.get_session
end
