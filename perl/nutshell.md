# Perl in nutshell

## Essential commands
- Console `perl -d -e1`
- Command-line `perl -e'print 2+2' #=> 4`
- Inspect variables `Data::Dumper; print Dumper $var` 
- CPAN is equivalant to Ruby GEM system. Distributions is same as GEM.
- Install distribution `cpan Moder::Perl`
- what kind of data is this? `print ref($data)`
- use this in the head of the file 
```
se strict;
use warnings;
use utf8;
use feature ':5.10';
```

## print
- `print`
-  print "-"x100;
- `use v5.10; say "something";
- `use feature 'say'; say "something";
- `print "${var_without_sigil}"`
- q = ' so `print q(ali) or print q{ali}`
- qq = " so `print qq(ali) or print qq{ali}`



## Array
- `@a = (1,2,3,4,5)` or `qw\\`; #qw means Quoted word
- `$a[1]`
- length of array  `scalar(@a)`
- `@lenths_of = map {length($_)} @ARGV`
- `sort(@arr)`
- `join(",", @arr)` and string to array: `split(" ", $string)`

## Hash
- `%h = (name => "ali", family=>"deishidi")`
- `%h = ("name", "ali", "family", "deishidi")`
- `$h{name}`
- `delete $h{key}` to delete a key-
- `exists($hash{key})`
- `keys(%hash)` or `values(%hash)`
- ` my @ranked_keys = sort { $hash_args{$b} <=> $hash_args{$a} } keys(%hash_args);`

## Refrences
- `$name = 'ali'; $scalar_ref = \$name` 
- `$$scalar_ref`
- `$array_ref = [1,2,3]` anonymous array or `$ref = \@array;`
- `$array_ref->[0]`
- `$hash_ref = {a => 1, b => 2}` or `$hash_ref = \%hash` 
- `$has_ref->{key}`
- `sub foo {print x}; $mehotd_ref = \&foo` or `my $mehotd_ref = sub {print x}`
- `$method_ref->()` or `&$method_ref`


## Map and Grep
- `@lenths_of = map {length($_)} @ARGV`
- `@lenths_of = grep { /name/ } @ARGV`  #Using Regex


## Sort
- `sub by_value {return scalar($a) <=> scalar($b)};`
- `my @barr = sort by_value @arr;`


## Flow control
- `if ($string eq "some other string") {}`
- `foreach (array){$_}`


## Package and Modules
- Package is namespace in Perl. declaring package `package BOM::CTC` it means this module is exists under bom folder and the name of the file is `ctc.pm`
- Use module `use BOM::Platform::Client::CashierValidation;`
- Use subs from that module - > use full name `print BOM::Platform::Client::CashierValidation(something)`
- Import specific subs `use BOM::CTC::Utility::Base32 qw( encode_base32 decode_legacy );` then `print encode_base32(something)` 
- should end with 1;
- Inhertance `use parent 'FurnitureShop';`
- can install on specific folder `cpanm -L extlib Geo::Coder::Google::V3`
and then `use local::lib './extlib;' ;use Geo::Coder::Google;`
- use `perl -I{.pm file address} file` to include and use file. and `use class` on client file. Or use `use lib './'` on client file.

##  OO
see [link to folder](./oop/)

## Flow Control
- `if(){}else{}` 
- ```use feature qw/switch/;
given(scalara(@)){
    when($_>2){
        #
    }
    default{
        #
    }
}```
- `foreach my $var (@arr){puts $var;}`


## Test
- run tests `prove -lv t/airport/10_data.t`
- `use_ok('Airport::Data');` Package is ok 

## Regex
- `"this is test" =~ /test/` #output is 1 (means TRUE)
- `"this is test" =~ /^test/` #find word at the beginning, output is false
- `"this is test" =~ /test$/` #find word at the end, output is 1 
- `"total" =~ /[abc]/` #find a or b or c
- `$name = "ali deishidi"; $name =~ s/ali/akhavan/g` search and replace

## Others
- print `ls`; use "`" to run bash command 
- Global vars: `@ARGV`
- `print pp (\%INC);` to see all places perl search for packages
- place `#!/usr/bin/perl -Ilib` at the top of bin file to locate lib folder


## Dzil
to pack and make your project ready for CPAN.  
```$ cpanm --notest Dist::Zilla \
  Dist::Zilla::Plugin::ReadmeAnyFromPod \
  Dist::Zilla::Plugin::CopyFilesFromBuild
```
or ```sudo apt-get install dh-dist-zilla```
