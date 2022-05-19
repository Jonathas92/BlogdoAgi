require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "yaml"


MASSA = YAML.load_file('data/massa.yml')
EL = YAML.load_file('features/support/pages/elements.yml')
  
  case ENV["BROWSER"]
  when "firefox"
    @driver = :selenium
  when "chrome"
    @driver = :selenium_chrome
  when "fire_headless"
    @driver = :selenium_headless
  when "chrome_headless"
    Capybara.register_driver :selenium_chrome_headless do |app|
      version = Capybara::Selenium::Driver.load_selenium
      options_key = Capybara::Selenium::Driver::CAPS_VERSION.satisfied_by?(version) ? :capabilities : :options
      browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
        opts.add_argument("--headless")
        opts.add_argument("--disable-gpu")
        opts.add_argument("--disable-site-isolation-trials")
        opts.add_argument("--no-sandbox")
        opts.add_argument("--disable-dev-shm-usage")
      end
  
      Capybara::Selenium::Driver.new(app, **{ :browser => :chrome, options_key => browser_options })
    end
    @driver = :selenium_chrome_headless
  else
    raise "Navegador incorreto, @driver está vazio"
    #raise aborta o processo, se usar puts ele tenta rodar mesmo assim; log não funciona fora de step_definitions!!
  end

  Capybara.configure do |config|
    config.default_driver =  @driver
    config.default_max_wait_time = 30
    config.app_host = "https://blogdoagi.com.br/"
  end