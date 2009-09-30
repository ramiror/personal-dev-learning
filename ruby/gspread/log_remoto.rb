class LogRemoto
  @form_id = nil
  FIXED_PARAMS="submit"

  def initialize form_id
    @form_id = form_id
  end

  def report *data
    require 'net/http'
    Net::HTTP.get_response( URI.parse( get_url *data ))
  end

  def get_url *data
    index=-1
    params = data.map { |datum| index+=1; "entry.#{index}.single=#{datum}" }.join("&")
    [ google_form_url,  params,  FIXED_PARAMS ].join("&")
  end

  private

  def google_form_url
    "http://spreadsheets.google.com/formResponse?formkey=#@form_id"
  end
end

#### Main

def main
  l = LogRemoto.new "dHRmTVpBa1RhcWhjTEswZjFqREtjd1E6MA"
  #puts l.get_url 33, 34
  puts l.report(37, 38).class.name
end
main


## Tests

# doctest: URL correcta
# >> l = LogRemoto.new("hola")
# >> l.get_url 1, 2, 3, 4
# => "http://spreadsheets.google.com/formResponse?formkey=hola&entry.0.single=1&entry.1.single=2&entry.2.single=3&entry.3.single=4&submit"

# vim: ts=2 sw=2 et
