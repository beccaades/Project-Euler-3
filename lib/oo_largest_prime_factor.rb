class LargestPrimeFactor
  attr_reader :num

  def initialize(num)
    @num = num
  end

end

# def largest_prime_factor(num)
#   factors_of_num = get_factors_of_num(num)
#   largest_prime_number(factors_of_num)
# end

# def get_factors_of_num(num)
#   2.upto(num).select { |factor| num % factor == 0 }
# end

# def largest_prime_number(factors_of_num)
#   i = 0
#   while factors_of_num.length > 0 
#     checking_num = factors_of_num.reverse[i]
#     if is_prime(checking_num)  
#       return checking_num
#     else
#       i += 1
#     end
#   end
# end  

# def is_prime(num)
#   (2..num/2).none? { |divisor| num % divisor == 0 }
# end