use v5.10;                                                                      
use strict;                                                                     
use warnings;

my @arr = (0..9);
say map {$_*2} @arr;

say map {$_ > 5 ? $_ : () } @arr;

