use warnings;
use strict;
use 5.010;

use Test::Simple tests => 1;
use TestPackage qw(add);

ok (add(3,4) == 8);

