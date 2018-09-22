## Rspec

### General
   `(1+2).should eq 3`  
   `expect(1+2).to eq 3`  
   `expect(Collection.new).to be_empty `

### Subject
    -  automatic creation
    ```
    describe A do
      it "is instantiated by RSpec" do
        expect(subject).to be_an(A)
      end
    end
    ```
   
    - manual creation
    ``` 
    subject(:hero) { Hero.first }
    it "carries a sword" do
      expect(hero.equipment).to include "sword"
    end
    ```

    or
    ```
    describe "anonymous subject" do
      subject { A.new }
      it "has been instantiated" do
        expect(subject).to be_an(A)
      end
    end
    ``` 
### Class matching
   ```
   it "should return list object" do
    expect(subject).to be_an_instance_of List
  end
   ```


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
