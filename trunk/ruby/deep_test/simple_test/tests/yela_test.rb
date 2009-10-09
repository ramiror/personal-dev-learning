require "tests/hello"

class GreekHello < Hello
  def hello
    "Yela"
  end

  def goodbye
    "Avtio"
  end

  def lang
    "gr"
  end
end

GreekHello.new
