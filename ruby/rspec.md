## Rspec

### run `rspec file_name`
   `require 'rspec'`

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

