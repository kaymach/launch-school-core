def staggered_case(string)
  switch = true
  result = []

  string.chars.each do |char|
    result << char.upcase if switch
    result << char.downcase if switch == false
    switch = !switch unless char.match?(/[^a-zA-Z]/)
  end
  result.join
end

p staggered_case('I Love Launch School!')# == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS')# == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 nUmBeRs'
