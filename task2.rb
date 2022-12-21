puts "Первое число:"
num1 = gets.chomp
puts "Второе число:"
num2 = gets.chomp
puts "Операцию [+, -, *, /]:"
op = gets.chomp

if !(num1 =~ /[[:digit:]]/) || !(num2 =~ /[[:digit:]]/)
    puts "Ошибка при вводе чисел"
elsif !("+-*/".include?(op))
    puts "Ошибка при вводе операции"
end
num1 = num1.to_i
num2 = num2.to_i
case op
when "+" 
    puts "<< #{num1} + #{num2} = #{num1 + num2}"
when "-"
    puts "<< #{num1} - #{num2} = #{num1 - num2}"
when "*"
    puts "<< #{num1} * #{num2} = #{num1 * num2}"
when "/"
    begin
        puts "<< #{num1} / #{num2} = #{num1 / num2}"
    rescue ZeroDivisionError => error
        puts error.message
    end
end