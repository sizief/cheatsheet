#### statement vs expression
let x=10; is an statement. the Semicolon means this is an expression and and there is no return value here. But 10 is an expression. 
So fn test(x){x+5} is valid while fn test(x){x+5;} in invalid


#### Cargo
```rust
cargo new
cargo run
cargo check
cargo build
```


#### Syntax
```resylt
fn test(a: i16) -> char {}
```
```rust
let x = 10
x = 11 // error, can not mutate
let x = 11 // assign again, we canll this shadowing now x is 11
```
```rust
let mut x = 5 //x can be mutated
x = 6 // ok
```
```rust
const xx: u32 = 12
```
```rust
 let y = { // expression
        let x = 3;
        x + 1
    };
```


#### Types
u32 -> unsigned int 32 bit
i32 -> signed int 32 bit
f64 -> float 64 bit
bool
char

#### Results
Some methods return results

```rust
let guess: u32 = guess.trim().parse().expect("Please type a number!");

```
```rust
let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };
```


#### Ownership
stack data will be copied, so this works
```rust
let x = 5;
    let y = x;

    println!("x = {}, y = {}", x, y);
```
But heap data like String not, so this will not work
```rust
 let s1 = String::from("hello");
    let s2 = s1;

    println!("{}, world!", s1);
```
Why? because the s1 is Gced

use references
```rust
let x = String::from("ali")
do_soemthing(&x) // now do_something has the value but not the ownership
println!("{x}")
```

use mutable ownership
```rust
let mut x = String::from("ali")
do_soemthing(&mut x) // now do_something has the value but not the ownership and cant change it
println!("{x}")
```
