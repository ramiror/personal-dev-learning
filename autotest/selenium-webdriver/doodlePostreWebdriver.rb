#require "selenium"
require 'firedriver/lib/firedriver'
require "test/unit"

class DoodlePostres < Test::Unit::TestCase
  def setup
    @verification_errors = []
      #@selenium = Selenium::SeleniumDriver.new("localhost", 4444, "*chrome", "http://doodle.com/", 10000);
      @selenium = FireDriver::Browser.new
  end
  
  def teardown
    assert_equal [], @verification_errors
  end
  
  def test_doodle_postres
    @selenium.goto "/98ttgerf9kny2wa6"
    sufijo = @selenium.execute_script("return Math.random();")
    #@selenium.text_field( :id, "participantName" ).set( "Webdriver_" + sufijo.to_s )
    @selenium.element_by_xpath( "//td[@id='inp']/input" ).set( "Webdriver_" + sufijo.to_s )
    @selenium.button( :id, "option0" ).click
    @selenium.button( :id, "option2" ).click
    @selenium.element_by_xpath( "//input[@value='Save']" ).click
    @selenium.element_by_xpath( "//div[@id='content']/div[4]/p/a/span" ).click
  end
end

# open -> goto
# get_eval -> execute_script (y ponerle return a la expresion)
# wait_for_page_to_load -> -

# quizás de acá para abajo se puede usar xpath siempre
# type -> text_field ( atributo, nombre ).set (esto me caga porque selenium hace fallback de atributos)
# click -> button( atributo, nombre ).click
