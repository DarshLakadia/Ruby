class Calculator
    puts "Enter First number"
    @operand1 = gets.chomp.to_i
    puts "Enter second number"
    @operand2 = gets.chomp.to_i
    
    puts "Select the operation you want to perform"
    puts "1.Addition"
    puts "2.Substraction"
    puts "3.Multiplication"
    puts "4.Division"
    puts "5.Exponent"
    
    @choice = gets.chomp.to_i
    case 
    when @choice == 1
        sum = Proc.new {|op1,op2| op1 + op2}
        p sum.call(@operand1,@operand2)
    when @choice == 2
        sub = Proc.new {|op1,op2| op1 - op2}
        p sub.call(@operand1,@operand2)
        
    when @choice == 3
        mul = Proc.new {|op1,op2| op1 * op2}
        p mul.call(@operand1,@operand2)
    
    when @choice == 4
        div = Proc.new {|op1,op2| op1 / op2}
        p div.call(@operand1,@operand2)
    
    when @choice == 5
        exp= Proc.new {|op1,op2| op1 ** op2}
        p exp.call(@operand1,@operand2)
    else
    		puts "Wrong Input!!!"
    end
end
