# Perl in nutshell

## Essential commands
- Console `perl -d -e1`
- Command-line `perl -e'print 2+2' #=> 4`
- Inspect variables `Data::Dumper; print Dumper $var` 
- CPAN is equivalant to Ruby GEM system. Distributions is same as GEM.
- Install distribution `cpan Moder::Perl`
- use this in the head of the file 
```
se strict;
use warnings;
use utf8;
use feature ':5.10';
```

## print
- `print`
- `use v5.10; say "something";


## Array
- `@a = (1,2,3,4,5)`;
- `$a[1]`

## Hash
- `%h = (name => "ali", family=>"deishidi")`
- `$h{name}`
- `$hashref = {name => "ali"}`
- `$hashref->{name}`

## Refrences
- `$hash_ref = \%hash; print $has_ref->{key}`

## Flow control
- if ($string eq "some other string") {}

## Package and Modules
- Package is namespace in Perl. declaring package `package BOM::CTC` it means this module is exists under bom folder and the name of the file is `ctc.pm`
- Use module `use BOM::Platform::Client::CashierValidation;`
- Use subs from that module - > use full name `print BOM::Platform::Client::CashierValidation(something)`
- Import specific subs `use BOM::CTC::Utility::Base32 qw( encode_base32 decode_legacy );` then `print encode_base32(something)` 