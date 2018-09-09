use v5.10;
use strict;
use warnings;

my @arr = (1..9);

say grep  { $_ < 5 } @arr;

my @string_arr = qw(ab cd ef gh);
if(grep { $_ eq "ab" } @string_arr){
    say "exists";
}else{
    say "not in here";
}

