file = File.read("../inputs/day2.txt")

def parse_line(l)
	# Game ([0-9]): ([0-9] \w+), ([0-9] \w+), ([0-9] \w+)
	# ([0-9]+ \w+)
	iterations = l.split(';')

	puts iterations
end

file.each_line do |l|
	parsed = parse_line(l);
end