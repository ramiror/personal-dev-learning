require "tests/hello"

class SpanishHello < Hello
  def hello
    "Hola"
  end

  def goodbye
    "Chau"
  end

  def lang
    "es"
  end
end

SpanishHello.new
