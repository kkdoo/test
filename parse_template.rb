def parse_template(string)
  if string && !string.empty?
    string.scan(/%%(\w+)%(\w+)%%/).to_h
  else
    {}
  end
end
