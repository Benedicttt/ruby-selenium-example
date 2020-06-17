require 'selenium-webdriver'

module Driver
  class Set
    def get_session
      options = Selenium::WebDriver::Chrome::Options.new(args: [
        "--no-sandbox",
        "--disable-backing-store-limit",
        "--max-unused-resource-memory-usage-percentage",
        "--window-size=1920, 1080",
        "--start-maximized",
        "--disable-gpu",
        "--disable-notifications"
      ])

      Selenium::WebDriver.for :chrome, options: options
    end
  end
end
