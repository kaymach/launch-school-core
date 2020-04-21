def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

p shout_out_to('you') # expected: 'HEY YOU'