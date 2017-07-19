def showAddress(address)
  str = String.new()
  if not ( address['subpremise'].nil? || address['house_name'].nil? )
    str = str + "#{address['subpremise']}, #{address['house_name']},\n"
  elsif not (address['subpremise'].nil? )
    str = str + "#{address['subpremise']},\n"
  elsif not (address['house_name'].nil? )
    str = str + "#{address['house_name']},\n"
  end
  
  if not address['house_number'].nil?
    str = str + "#{address['house_number']}, #{address['street_line_1']},\n"
  else 
    str = str + "#{address['street_line_1']},\n"
  end
  
  if not address['street_line_2'].nil?
    str = str + "#{address['street_line_2']},\n"
  end
  str = str + "#{address['town_or_city']},\n"
  
  if not address['region'].nil?
    str = str + "#{address['region']},\n"
  end
  str = str + "#{address['postcode']}"
  return str
end