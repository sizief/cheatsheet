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

## Hash
- `%h = (name => "ali", family=>"deishidi")`
- `%h = ("name", "ali", "family", "deishidi")`
- `$h{name}`
- `$hashref = {name => "ali"}`
- `$hashref->{name}`
- `delete $h{key}` to delete a key-
- `exists($hash{key})`
- `keys(%hash)` or `values(%hash)`
- ` my @ranked_keys = sort { $hash_args{$b} <=> $hash_args{$a} } keys(%hash_args);`


## Refrences
- `$hash_ref = \%hash; print $has_ref->{key}`


## Flow control
- `if ($string eq "some other string") {}`
- `foreach (array){$_}`


## Package and Modules
- Package is namespace in Perl. declaring package `package BOM::CTC` it means this module is exists under bom folder and the name of the file is `ctc.pm`
- Use module `use BOM::Platform::Client::CashierValidation;`
- Use subs from that module - > use full name `print BOM::Platform::Client::CashierValidation(something)`
- Import specific subs `use BOM::CTC::Utility::Base32 qw( encode_base32 decode_legacy );` then `print encode_base32(something)` 


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

## Others
- print `ls`; use "`" to run bash command 
- Global vars: `@ARGV`