file = File.read("input.txt")

matches = ('0'..'9').to_a
words = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

sum = 0

file.each_line do |l|
  nums = [] of String

  l.each_char do |c|
    if matches.includes?(c)
      nums << c.to_s
    end
  end

  sum += (nums[0] + nums[-1]).to_i
end

p! sum
