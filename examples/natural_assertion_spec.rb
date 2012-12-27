require 'rspec/given'
require 'rspec/given/natural_assertion'

describe "Natural Assertions" do
  Given(:foo) { 1 }
  Given(:expected) { 2 }
  Then { foo+foo+2*foo == expected }
  Then { nil == "HI" && true && :symbol  && 1}
  Then { foo.should == 2 }
  Then { foo == 1 }
  Then { foo.should_not == 1 }
  Then { foo.should_not be_nil }
end
