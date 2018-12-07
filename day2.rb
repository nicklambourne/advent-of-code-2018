twos = 0
threes = 0
File.open("input/2-1.txt").each do |line|
    letter_counts = Hash.new
    line.strip.split('').each do |character|
	if letter_counts.key?(character)
	    letter_counts[character] += 1
	else
	    letter_counts[character] = 1
	end
    end
    two = letter_counts.keys.select {|elem| letter_counts[elem] == 2}
    if two.length > 0
        twos += 1
    end
    three = letter_counts.keys.select {|elem| letter_counts[elem] == 3}
    if three.length > 0
        threes += 1
    end
end
puts twos * threes
