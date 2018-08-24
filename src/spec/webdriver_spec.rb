require 'rspec'
require 'selenium-webdriver'

describe 'Selenium practice web site' do


  before(:all) do
    # create a webdriver driver to open firefox browser
    @browser = Selenium::WebDriver.for :firefox
    # navigate to the website
    @browser.navigate.to("http://automationpractice.com/index.php")
  end
  it 'should open browser and click sign in' do
    # click on sign in button
    @browser.find_element(:class, 'login').click
    # print out title
    puts @browser.title
    title = @browser.title
    expect(title).to eq('Login - My Store')
  end

  it 'should submit email to create an account' do
    @browser.find_element(:id, 'email_create').send_keys 'tomjones@ntt.net'
    @browser.find_element(:id,'SubmitCreate').click
  end

 it 'should fill out the form to create an account' do
    sleep 3
    @browser.find_element(:id ,'id_gender1').click
    @browser.find_element(:id, 'customer_firstname').send_keys 'Tom'
    @browser.find_element(:id, 'customer_lastname').send_keys 'Jones'
    @browser.find_element(:name, 'passwd').send_keys 'password'
    @browser.find_element(:id, 'days').find_element(:css,"option[value='20']").click
    @browser.find_element(:id, 'months').find_element(:css,"option[value='2']").click
    @browser.find_element(:id, 'years').find_element(:css,"option[value='2008']").click
    @browser.find_element(:id ,'newsletter').click
    @browser.find_element(:id ,'optin').click
    @browser.find_element(:id ,'company').send_keys 'My Company'
    @browser.find_element(:id ,'address1').send_keys '1234 My Address'
    @browser.find_element(:id ,'city').send_keys 'My City'
    @browser.find_element(:id ,'id_state').find_element(:css,"option[value='20']").click
    @browser.find_element(:id ,'postcode').send_keys '43110'
    @browser.find_element(:id, 'phone_mobile').send_keys '999-999-9999'
    @browser.find_element(:id ,'submitAccount').click

  end


  # close browser
  after(:all) do

  end
end