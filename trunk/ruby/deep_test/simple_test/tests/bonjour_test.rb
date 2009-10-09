require "tests/hello"

class FrenchHello < Hello
  def hello
    "Bonjour"
  end

  def goodbye
    "Au revoir"
  end

  def lang
    "fr"
  end
end

FrenchHello.new
