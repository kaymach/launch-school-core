require "pry"

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

def find_suspects(pockets, allowed_items)
 # binding.pry
  return nil if pockets.empty?
  return nil if pockets.values.all? {|v| v == nil || v.empty?}

  selection = []
  pockets.each do |k,v|
   # binding.pry
    next if v == nil

    next if v.all? {|v| allowed_items.include?(v)}
    selection << k

  end
  selection.empty? ? nil : selection
end


#p find_suspects(pockets, [1, 2]) # => [:tom, :jane]
#p find_suspects(pockets, [1, 7, 5, 2]) # => nil
#p find_suspects(pockets, []) # => [:bob, :tom, :jane]
#p find_suspects(pockets, [7]) # => [:bob, :tom]
p find_suspects({:tom=>[3], :julia=>[], :bob=>nil, :meg=>[4]}, [])
