require "./test/support/env"
require "./test/pages/yopmail"

puts "Start test".colorize(:color => :green)

yop_page = YopMailLoginPage.new(driver, true)

puts "Check login in site " +  ENV['base_url'].colorize(:color => :gray)
yop_page.auth
puts "Check in mail page".colorize(:color => :gray)
yop_page.check_mail

puts "TEST DONE".colorize(:color => :gray)
