def largest_prime_factor(num)
  factors_of_num = get_factors_of_num(num)
  largest_prime_number(factors_of_num)
end

def get_factors_of_num(num)
  2.upto(num).select { |factor| num % factor == 0 }
end

def largest_prime_number(factors_of_num)
  i = 0
  while factors_of_num.length > 0 
    checking_num = factors_of_num.reverse[i]
    if is_prime(checking_num)  
      return checking_num
    else
      i += 1
    end
  end
end  

def is_prime(num)
  (2..num/2).none? { |divisor| num % divisor == 0 }
end

#Big O solution using Prime Library:
#require 'prime'

#def largest_prime_factor(num)
#   prime_factors=[]

#   until Prime.prime?(num) || num == 1
#     Math.sqrt(num).to_i.downto(2).each do |i|
#       if Prime.prime?(i) && num % i == 0
#         prime_factors << i
#         num = num/i
#       end
#     end
#   end

#   prime_factors.max
# end