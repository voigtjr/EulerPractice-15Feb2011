module Palindrome
  def isPalindrome?
    self.to_s == self.to_s.reverse
  end
end

class Fixnum
  include Palindrome
end
class Bignum
  include Palindrome
end

class PalindromeUtil
  def maxPalindrome digits
    maxV = max digits
    minV = min digits
    maxP = [0,0,0]
    (minV..maxV).each do |x|
      (minV..maxV).each do |y|
        product = x*y
        maxP = [product,x,y] if product.isPalindrome? && product > maxP.at(0)
      end
    end
    maxP
  end

  def max digits
    maxV = ""
    (0...digits).each do maxV << "9" end
    maxV.to_i
  end

  def min digits
    minV = "1"
    (1...digits).each do minV << "0" end
    minV.to_i
  end
end

describe "euler problem 4 tests" do
  it "11 can tell if it is an palindrome" do
    11.isPalindrome?.should == true
  end
  it "12 can tell it is not a palindrome" do
    12.isPalindrome?.should == false
  end
  it "Max product of 2 digit numbers that is a palindrome is 9009" do
    PalindromeUtil.new.maxPalindrome(2).should == [9009, 91, 99]
  end
  it "Max product of 3 digit number that is a palindrome is " do
    PalindromeUtil.new.maxPalindrome(3).should == [906609, 913, 993]
  end
end
