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
  data[:color].reduce(new) do |memo, (k, v)|
    i = 0
    while i < v.length do
      memo[v[i]] = {color: [], gender: [], lives: []} if !memo[v[i]]
      memo[v[i]][:color] << k.to_s
      i += 1
    end
    memo
  end
  data[:gender].reduce(new) do |memo, (k, v)|
    i = 0
    while i < v.length do
      memo[v[i]] = {color: [], gender: [], lives: []} if !memo[v[i]]
      memo[v[i]][:gender] << k.to_s
      i += 1
    end
    memo
  end
#  data[:lives].reduce(new) do |memo, (k, v)|
#    i = 0
#    while i < v.length do
#      memo[v[i]][:lives] = [] if !memo[v[i]][:lives]
#      memo[v[i]][:lives] << k.to_s
#      i += 1
#    end
#    memo
#  end
  pp new
end
nyc_pigeon_organizer(pigeon_data)
