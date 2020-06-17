require 'selenium-webdriver'

module Driver
  class Set
    def get_session
      options = Selenium::WebDriver::Chrome::Options.new(args: [
        "--no-sandbox",
        "--headless",
        "--disable-backing-store-limit",
        "--max-unused-resource-memory-usage-percentage",
        "--window-size=1920, 1080",
        "--start-maximized",
        "--disable-gpu",
        "--disable-notifications"
      ])

      driver = Selenium::WebDriver.for :chrome, options: options
      driver.manage.timeouts.implicit_wait = 5
      driver.manage.timeouts.script_timeout = 5
      driver.manage.timeouts.page_load = 5

      driver
    end
  end
end
