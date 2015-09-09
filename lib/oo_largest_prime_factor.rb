class LargestPrimeFactor
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def largest_prime_factor
    factors_of_num
    largest_prime_number(factors_of_num)
  end

  def factors_of_num
    2.upto(self.num).select { |factor| num % factor == 0 }
  end

  def largest_prime_number(factors_of_num)
    i = 0
    while factors_of_num.length > 0 
      check_num = factors_of_num.reverse[i]
      if is_prime(check_num)  
        return check_num
      else
        i += 1
      end
    end
  end  

  def is_prime(number)
    (2..number/2).none? { |divisor| number % divisor == 0 }
  end

end
