## Rspec

describe "Rot13" do  
  it "test" do  
    Test.expect("grfg" == rot13("test"), "Input: test , Expected Output: grfg , Actual Output: " + rot13("test"))  
  end  
  it "Test" do  
    Test.expect("Grfg" == rot13("Test"), "Input: Test , Expected Output: Grfg , Actual Output: " + rot13("Test"))  
  end  
end  

describe "calculate all numbers multipilication" do  
    it "should return correct" do  
      Calculate.perform([1,2,3,4]).should eql [24,12,8,6]  
    end  
end  
