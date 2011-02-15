module Fibonacci
  def fibonacciSums divisableBy
    fibs = self.fibonaccis
    sum = 0
    fibs.each do |fib|
      sum += fib if fib % divisableBy == 0
    end
    sum
  end
  def fibonaccis
    array = []
    current = 1
    previous = current
    while self > current do
      array << current if self > current
      current = previous + array.last
      previous = array.at array.length-1
    end
    array
  end
end

class Fixnum
  include Fibonacci
end

class Bignum
  include Fibonacci
end

describe "problem 2 summing fibonacci sequences" do
  it "Can determine fibonacci sequence" do
    [1,2,3,5,8].should == 10.fibonaccis
  end
  it "Can sum fibonacci sequences below a set value" do
    10.fibonacciSums(1).should == 19
  end
  it "Can sum fibonacci sequences below a set value divisable by 2" do
    10.fibonacciSums(2).should == 10
  end
  it "Can sum fibonacci sequence below 4000000000 if divisable by 2" do
    4000000000.fibonacciSums(2).should == 1485607536
  end
end
