def nyc_pigeon_organizer(data)
  updated_hash = {}
  data.each do |key, value|
    value.each do |key2, value2|
     value2.each do |names|
       if !updated_hash[names]
         updated_hash[names] = {}
        # p "This is #{key2}"
       else
    
             #  p "This is #{key2}"
            if !updated_hash[names][key]
              # p "FINAL is #{key2}"
             updated_hash[names][key] = {}
            if updated_hash[names][key]
             updated_hash[names][key] = ["#{key2}"]
            end
         end
       end
     end
  end
end
updated_hash
end
  
  
nyc_pigeon_organizer data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
