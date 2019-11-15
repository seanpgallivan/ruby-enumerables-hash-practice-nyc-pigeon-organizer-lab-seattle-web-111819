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
  data[:lives].reduce(new) do |memo, (k, v)|
    i = 0
    while i < v.length do
      memo[v[i]] = {color: [], gender: [], lives: []} if !memo[v[i]]
      memo[v[i]][:lives] << k.to_s
      i += 1
    end
    memo
  end
  pp new
end