require_relative '../../src/lib/abstract_page'
require_relative '../../src/lib/register_page'


class CreateAccountPage < AbstractPage

  # constructor that makes call to AbstractPage constructor as it RegisterPage inherits from it

  def initialize (driver)
    super(driver)
  end

  # create a new user by entering email address

  def enterEmailAddress(emailAddress)
    @@driver.find_element(:id, 'email_create').send_keys emailAddress
    @@driver.find_element(:id,'SubmitCreate').click
    return RegisterPage.new(@@driver)
  end



end