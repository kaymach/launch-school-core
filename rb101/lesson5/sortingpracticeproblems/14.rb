hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

info = []

hsh.each_value do |details|
  if details[:type] == "fruit"
  info << details[:colors].map {|color| color.capitalize}
  elsif details[:type] == "vegetable"
  info << details[:size].upcase
  end
end

p info
