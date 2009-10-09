require "tests/hello"

class ItalianHello < Hello
  def hello
    "Ciao"
  end

  def goodbye
    "Arrivederci"
  end

  def lang
    "it"
  end
end

ItalianHello.new
