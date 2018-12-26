# Elixir
## Basics
- run `iex` for interactive shell
- run `iex -S mix` to have access to libraries where `iex` is ran. 
- `IO.puts` to print
- All data structures are immutables
- i var # => will pront inspect var

## Data Types
### string 
- "string"
- Always use dowble quote
- is_binary(string) #=> true
- String.length string
- string <> string # add to string together
### Atom
- :this_is_atom
- value and key is samething
- 
## Data structrues
### List
- [1,2,3]
- [1,2,3] ++ [4] # add new item
- **Enum.at(list,index)** # read elemnt of index from list
- It is dynamic collection, actually a linked list. Reading by index is expensive. 
- hd([1,2,3]) # => 1
- tl([1,2,3]) # => [2,3]

### Tuple
- {1,:ali,2}
- **Elem(tuple,index)**
- Its a fixed collection. readingg is cheap
- Update it by patter matching

### Map
- x = %{"name" => "ali", "id"=>"sizief"}
- x["name"] # => ali
- y = %{ :name => "ali", :id => "sizief"}
- y.name # => "ali"


## Pattern matching
- {a,b,c} = {:ok, 1, 2} # => a is :ok, b is 1 and c is 2 now
- {a,_} = {2,5} # => a is 2 now
- ^a is value of a

## Functions
- x = fn a,b -> a+b end # x.(1,2) => 3
- x.(inputs)
- define function
    ```
    def name do
        body
    end
    ```
- def name, do: 
- def name(a,b) when a<b, do: 