require "selenium"
require "test/unit"

class DoodlePostres < Test::Unit::TestCase
  def setup
    @verification_errors = []
    if $selenium
      @selenium = $selenium
    else
      @selenium = Selenium::SeleniumDriver.new("localhost", 4444, "*chrome", "http://doodle.com/", 10000);
      @selenium.start
    end
    @selenium.set_context("test_doodle_postres")
  end
  
  def teardown
    @selenium.stop unless $selenium
    assert_equal [], @verification_errors
  end
  
  def test_doodle_postres
    @selenium.open "/98ttgerf9kny2wa6"
    sufijo = @selenium.get_eval("Math.random();")
    @selenium.type "participantName", "Ramiro_" + sufijo
    @selenium.click "option0"
    @selenium.click "option2"
    @selenium.click "//input[@value='Save']"
    @selenium.wait_for_page_to_load "30000"
    @selenium.click "//div[@id='content']/div[4]/p/a/span"
    @selenium.wait_for_page_to_load "30000"
  end
end
