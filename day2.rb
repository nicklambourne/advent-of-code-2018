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




require 'set'

ids = Array.new
File.open("input/2-1.txt").each do |line|
     ids.push(line.strip)
end
for i in 0..ids[0].length
    s = Set.new
    ids.each do |id|
        masked = id[0, i] + "_" + id[i+1, id.length-i]
	if s.include?(masked)
	    puts(id[0, i] + id[i+1, id.length-i])
            exit
        end
        s.add(masked)
    end
end
