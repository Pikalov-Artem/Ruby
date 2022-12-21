puts "Введите сторку:"
string = gets.chomp

d = 0
print "[ "
while d < string.length do
    if string[d] =~ /[[:alpha:]]/
        ch_code =  string[d].downcase.ord - ("a".ord - 1)
        print "#{ch_code} "
    end
    d += 1
end
puts "]"