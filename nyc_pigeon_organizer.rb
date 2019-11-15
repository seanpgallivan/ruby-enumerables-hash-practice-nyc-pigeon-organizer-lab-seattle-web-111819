pigeon_data = {
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


def nyc_pigeon_organizer(data)
  new = {}
#  names = data[:lives].values.flatten.sort
#  i = 0
#  while i < names.length do
  pp data[:color]
    data[:color].reduce({}) do |memo, (k, v)|
      pp v
      i = 0
      while i < v.length do
        if !memo[v[i]]
          memo[v[i]] << k.to_s
        else
        i += 1
      end
      pp memo
      memo
    end
  pp new
end
nyc_pigeon_organizer(pigeon_data)

#      if v.include?(names[i])
#        memo[names[i]][:color] = k.to_s
    
#    new[names[i]] = {color: [], gender: [], lives: []}
#    new[names[i]][:color] << "purple" if data[:color][:purple].include?(names[i])
#    new[names[i]][:color] << "grey" if data[:color][:grey].include?(names[i])
#    new[names[i]][:color] << "white" if data[:color][:white].include?(names[i])
#    new[names[i]][:color] << "brown" if data[:color][:brown].include?(names[i])
#    new[names[i]][:gender] << "male" if data[:gender][:male].include?(names[i])
#    new[names[i]][:gender] << "female" if data[:gender][:female].include?(names[i])
#    new[names[i]][:lives] << "Subway" if data[:lives]["Subway"].include?(names[i])
#    new[names[i]][:lives] << "Central Park" if data[:lives]["Central Park"].include?(names[i])
#    new[names[i]][:lives] << "Library" if data[:lives]["Library"].include?(names[i])
#    new[names[i]][:lives] << "City Hall" if data[:lives]["City Hall"].include?(names[i])
#    i += 1
#  end
#  new
#end