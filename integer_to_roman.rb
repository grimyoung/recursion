roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
def integer_to_roman(num,roman_mapping, roman = "")
  if num == 0 
    return
  else
    roman_mapping.keys.sort.reverse.each do |e|
      if num >= e 
        num = num - e 
        roman = roman + roman_mapping[e]
        integer_to_roman(num,roman_mapping, roman)
      end
    end
  end
  return roman
end

p integer_to_roman(1999,roman_mapping)