require 'byebug'
class Array

  # Monkey patch the Array class and add a my_inject method. If my_inject receives
  # no argument, then use the first element of the array as the default accumulator.

  def my_inject(accumulator = nil)
    output = nil
    unless accumulator
      self[1..-1].map do |el|
        output = self[0]

        output += proc.call(self[0], el)
      end
    else
      self[1..-1].each do |el|
        output = accumulator
        output += proc.call(accumulator, el)

      end

    end

    output
  end
end

# primes(num) returns an array of the first "num" primes.
# You may wish to use an is_prime? helper method.

def is_prime?(num)
  return false if num == 1
  (2...num).to_a.none? {|x| num % x == 0}
end

def primes(num)
  output = []
  i = 2
  until output.length == num
    output << i if is_prime?(i)
    i += 1
  end
  output
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1
  return [1,1] if num == 2
  return nil if num < 0

  factorials_rec(num-1) << (num-1) * (factorials_rec(num-1).last)
end

class Array

  # Write an Array#dups method that will return a hash containing the indices of all
  # duplicate elements. The keys are the duplicate elements; the values are
  # arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    output = Hash.new { |hash, key| hash[key] = [] }

    self.each_with_index do |el, idx|

      j = idx
      while j < length
        if self[idx] == self[j] && idx != j
          if output.keys.include?(el)
            output[el] << j unless output[el].include?(j)
          else
            output[el] = [idx,j]
          end
        end
        j+= 1
      end

    end
    output
  end
end

class String

  # Write a String#symmetric_substrings method that returns an array of substrings
  # that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    output = []
    i = 0
    while i < length
      j = i
      while j < length
      output << self[i..j]
      j += 1
      end
      j = 0
      i += 1
    end
    output.select {|x| x.length > 1 && x == x.reverse}
  end
end

class Array

  # Write an Array#merge_sort method; it should not modify the original array.

  def merge_sort(&prc)

  end

  private

  def self.merge(left, right, &prc)
    output = []
    case prc.call(left[0], right[0])
    when -1
      output << right[0]
    when 0
      output << right[0]
      output << left[0]
    when 1
      output << left[0]
    end
  end
end
