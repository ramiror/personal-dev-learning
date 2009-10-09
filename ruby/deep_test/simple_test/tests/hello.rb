class Hello
  def log message
    puts "[#{lang}] #{message} - #{Process.pid} - #{Thread.current}"
  end

  def lang
    "en"
  end

  def hello
    "Hello"
  end

  def goodbye
    "Goodbye"
  end

  def initialize
    log hello
    sleep rand(5)
    log goodbye
  end
end
