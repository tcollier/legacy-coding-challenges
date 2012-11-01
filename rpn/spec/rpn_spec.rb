require File.join File.dirname(File.dirname(__FILE__)), 'solutions', 'rpn'

describe Rpn do
  
  describe ".calculate" do
    
    context "2 operands" do
      
      it { Rpn.calculate([1, 2, '+']).should == 3 }

      it { Rpn.calculate([4, 2, '-']).should == 2 }

      it { Rpn.calculate([3, 4, '*']).should == 12 }

      it { Rpn.calculate([12, 3, '/']).should == 4 }
      
    end
    
  end
  
  context "complex" do

    it { Rpn.calculate([1, 2, 3, '+', '+']).should == 6 }

    it { Rpn.calculate([1, 2, '+', 3, '+']).should == 6 }

    it { Rpn.calculate([1, 2, 3, '+', '-']).should == -4 }

    it { Rpn.calculate([1, 2, '+', 3, '-']).should == 0 }

    it { Rpn.calculate([1, 2, 3, 4, 5, 6, 7, 8, 9, '+', '-', '*', '+', '-', '+', '-', '+', 9, '+', 5, '/', 4, '-', 1, 6, '+', '/', 2, '+']).should == 0 }

  end
  
  context "abs" do

    it { Rpn.calculate([-1, 'abs']).should == 1 }

    it { Rpn.calculate([1, 'abs']).should == 1 }
    
    it { Rpn.calculate([1, 2, 3, '+', '-', 'abs']).should == 4 }

  end
  
end