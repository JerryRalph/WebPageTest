require 'rspec'
require 'selenium-webdriver'


class AbstractPage
  # initialize instance of a web driver @@ makes the instance global to all classes that inheritant class

  @@driver = nil

  # constructor for the Abstract class and pass in a driver

  def initialize (driver)
    @@driver = driver
  end

  # create root entry to the website and return a new instance of the HomePage

  def navigateToAppRoot
    @@driver.navigate.to('http://automationpractice.com/index.php')
    return HomePage.new(@@driver)
  end

  # quit the driver

  def quit
    @@driver.quit
  end

  # get the title of the page

  def getPageTitle
    @@driver.title
  end

  def sleepWait
    sleep 3
  end

end