require_relative '../../src/lib/abstract_page'
require_relative '../../src/lib/confirmation_page'

class RegisterPage < AbstractPage

  # constructor that uses the AbstractPage as it inherits from it

  def initialize (driver)
    super(driver)
  end

  # select male gender

 def selectGender
    sleep 3
    @@driver.find_element(:id ,'id_gender1').click
   return RegisterPage.new(@@driver)
  end

  # enter first name

   def firstName(firstName)

     @@driver.find_element(:id, 'customer_firstname').send_keys firstName
     return RegisterPage.new(@@driver)
   end

  # enter last name

  def lastName(lastName)
    @@driver.find_element(:id, 'customer_lastname').send_keys lastName
    return RegisterPage.new(@@driver)
  end

  # enter a password

  def password(password)
    @@driver.find_element(:name, 'passwd').send_keys password
    return RegisterPage.new(@@driver)
  end

  # select day of birth date

  def selectDay(day)
    dayValue = "value=" + "'" + day + "'"
    @@driver.find_element(:id, 'days').find_element(:css,"option[#{dayValue}]").click
    return RegisterPage.new(@@driver)
  end

  # select month of birth date

  def selectMonth(month)
    monthValue = "value=" + "'" + month + "'"
    @@driver.find_element(:id, 'months').find_element(:css,"option[#{monthValue}]").click
    return RegisterPage.new(@@driver)
  end

  # select year of birth date

  def selectYear(year)
    yearValue = "value=" + "'" + year + "'"
    @@driver.find_element(:id, 'years').find_element(:css,"option[#{yearValue}]").click
    return RegisterPage.new(@@driver)
  end

  # select newsletter

  def newsLetter
    @@driver.find_element(:id ,'newsletter').click
    return RegisterPage.new(@@driver)
  end

  # select to receive emails

  def optIn
    @@driver.find_element(:id ,'optin').click
    return RegisterPage.new(@@driver)
  end

  # enter company name

  def company(company)
    @@driver.find_element(:id ,'company').send_keys company
    return RegisterPage.new(@@driver)
  end

  # enter customer address

  def address(address)
    @@driver.find_element(:id ,'address1').send_keys address
    return RegisterPage.new(@@driver)
  end

  # enter customer city

  def city(city)
    @@driver.find_element(:id ,'city').send_keys city
    return RegisterPage.new(@@driver)
  end

  # select customer state

  def state(state)
    stateValue = "value=" + "'" + state + "'"
    @@driver.find_element(:id ,'id_state').find_element(:css,"option[#{stateValue}]").click
    return RegisterPage.new(@@driver)
  end

  # enter customer zip code

  def zipCode(zipCode)
    @@driver.find_element(:id ,'postcode').send_keys zipCode
    return RegisterPage.new(@@driver)
  end

  # enter customer phone number

  def phoneNumber(phoneNumber)
    @@driver.find_element(:id, 'phone_mobile').send_keys phoneNumber
    return RegisterPage.new(@@driver)
  end

  # submit information to create an account

  def submit
    @@driver.find_element(:id ,'submitAccount').click
  return ConfirmationPage.new(@@driver)
  end
end