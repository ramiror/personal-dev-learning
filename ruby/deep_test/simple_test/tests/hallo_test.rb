require "tests/hello"

class GermanHello < Hello
  def hello
    "Hallo"
  end

  def goodbye
    "Tschuss"
  end

  def lang
    "ge"
  end
end

GermanHello.new
