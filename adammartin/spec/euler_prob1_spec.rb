module NaturalNumbers
  def sumsForMultiplesOf (numbers)
    sum = 0
    (1...self).each do |value|
      sum += value if value.isDivisibleBy? numbers
    end
    sum
  end

  def isDivisibleBy? (numbers)
    numbers.each do |number|
      return true if self % number == 0
    end
    false
  end
end

class Fixnum
  include NaturalNumbers
end

describe "Problem 1: can calculate sum of natural numbers sums for a given constraint up to a maximum cap" do
  it "can calculate sum of natural numbers up to 10 that are divisible by 3" do
    10.sumsForMultiplesOf([3]).should == 18
  end
  it "can calculate sum of natural numbers up to 10 that are divisible by 5" do
    10.sumsForMultiplesOf([5]).should == 5
  end
  it "can calculate sum of natural numbers up to 10 that are divisible by 3 or 5" do
    10.sumsForMultiplesOf([3, 5]).should == 23
  end
  it "can calculate sum of natural numbers up to 1000 that are divisible by 3 or 5" do
    1000.sumsForMultiplesOf([3, 5]).should == 233168
  end
end
