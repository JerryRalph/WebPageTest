require 'rspec'
require 'selenium-webdriver'
require_relative '../../src/lib/home_page'
require_relative '../../src/lib/create_account_page'

describe 'Testing Create User form' do

  # instantiate a webdriver instance
  app = nil

   before(:each) do
     app = AbstractPage.new(Selenium::WebDriver.for(:firefox))
   end

  # quit the driver instance
  after(:each) do
  #  app.quit
  end

  it 'should fill out email and go to registration page' do
    confirmation = app
        .navigateToAppRoot
        .navigateToSignIn
        .enterEmailAddress('mikesmith@ntt.com')
        .selectGender
        .firstName('Mike')
        .lastName('Smith')
        .password('password')
        .selectDay('20')
        .selectMonth('2')
        .selectYear('2000')
        .newsLetter
        .optIn
        .company('My Company')
        .address('My address')
        .city('My City')
        .state('35')
        .zipCode('43110')
        .phoneNumber('999-999-9999')
        .submit

    expect(confirmation.getPageTitle).to eq('My account - My Store')
    end
end