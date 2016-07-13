require 'byebug'
class Array
  # Monkey patch the Array class and add my_inject method. If no accumulator is
  # passed in then the first element of the array should be used as the accumulator.

  def my_inject(accumulator = nil)
  end
end

# `primes(num)` returns an array of the first `num` primes.
#  You may wish to use the `is_prime?` helper method.

def is_prime?(num)
end

def primes(count)
end

# Write a **recursive** implementation of a method that returns the
# first `n` factorial numbers.
# Be aware that the first factorial number is 0!, which is defined to
# equal 1. So the 2nd factorial is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
end

class Array
  # Write a new Array method that will return a hash containing
  # the locations of all identical elements. The keys are the
  # duplicated elements, and the values are arrays of their positions,
  # sorted lowest to highest.
  # ex:
  # [1, 3, 4, 3, 0, 3, 0].dups
  # => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
  end
end

class String
  # Write a `String#symmetric_substrings` method that takes a returns
  # substrings which are equal to their reverse image ("abba" ==
  # "abba"). We should only include substrings of length > 1.


  def symmetric_substrings
  end
end

class Array
  # write a new `Array#merge_sort` method; it should not modify the
  # array it is called on.

  def merge_sort(&prc)
  end

  private
  def self.merge(left, right, &prc)
  end
end
