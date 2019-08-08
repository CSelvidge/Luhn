module Luhn
  def self.is_valid?(number)
    #identify and double every other number, start from the right
  entry = number.to_s
  number = Luhn.split_n_double(entry)
  validation = Luhn.sum_n_divide(number)
  end

  def self.split_n_double(number)
  arr = number.split(//).map{|x| x.to_i}
    arr.reverse!.each_with_index do |num, index|
      if (index %2 !=0)
        if arr[index] *2 >= 10  
          arr[index] = ((arr[index] * 2) -9)
        else
          arr[index] = arr[index] *2
        end
      end
    end
  return arr
  end

  def self.sum_n_divide(array)
  numbers = array
  summation = numbers.inject(:+)
  if summation %10 ==0
   return true
  else
   return false
  end

  end
end
