require_relative '../../src/lib/abstract_page'
require_relative '../../src/lib/create_account_page'

 # Homepage inherits from Abstract page


class HomePage < AbstractPage

  # constructor that makes call to AbstractPage constructor as it HomePage inherits from it

  def initialize (driver)
    super(driver)
  end

  # click on the sign in button to navigate to sign in page and return a new instance of RegisterPage

    def navigateToSignIn
      @@driver.find_element(:class, 'login').click
      return CreateAccountPage.new(@@driver)
    end
end