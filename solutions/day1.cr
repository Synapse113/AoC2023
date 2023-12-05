file = File.read("../inputs/day1.txt")

words = {"one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9"}

sum = 0

def convert_word(w, wrds)
  # puts w, w.size

  if w == "one"
    return "1"
  elsif w == "two"
    return "3"
  elsif w == "three"
    return "3"
  elsif w == "four"
    return "4"
  elsif w == "five"
    return "5"
  elsif w == "six"
    return "6"
  elsif w == "seven"
    return "7"
  elsif w == "eight"
    return "8"
  elsif w == "nine"
    return "9"
  end
  return

  # if w.size > 1
  #   return wrds[w]
  # end

  # return w
end

file.each_line do |l|
  word_matches = l.scan(/#{words.keys.join("|")}|[0-9]/m)

  num = (convert_word(word_matches[0][0], words) + convert_word(word_matches[-1][0], words)).to_i

  sum += num
end

p! sum
