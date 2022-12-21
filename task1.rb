WIN_COMBINATION = {"ножницы" => "бумага", "камень" => "ножницы", "бумага" => "камень"}
SIGNATURE = {"н" => "ножницы", "к" => "камень", "б" => "бумага"}
ELEM = SIGNATURE.keys

puts "[н - ножницы, б - бумага, к - камень]"
print "Введите [н, б, к]: "

user = gets.chomp
computer = ELEM[rand(ELEM.size())]

puts "<< Вы выбрали #{SIGNATURE[user]}"
puts "<< Компьютер выбраль #{SIGNATURE[computer]}"

if SIGNATURE[user] == WIN_COMBINATION[SIGNATURE[computer]]
	puts "<< Вы проиграли"
elsif SIGNATURE[computer] == WIN_COMBINATION[SIGNATURE[user]]
	puts "<< Вы победили"
else
	puts "<< Ничья"
end