use v5.10;
use strict;
use warnings;

# number of last index of an elemnet: $#arr;

#TODO: Splice

#Setup
my @arr = (1..9);
my $extra;

#print with space between elements
say 'print with spaces: ', "@arr";

#create anonymous array
my $ref = [9,8,7,6,5,4,3,2,1];
say 'Anonymous array: ', "@$ref"; 

#Push
push @arr, qw (10 11 12);
print_nice(
    message => 'PUSH: add to end of an array:', 
    array => \@arr
); 

#Pop
$extra = pop @arr;
print_nice(
    message => 'POP: pop item from end', 
    array => \@arr,
    extra => $extra
);

#Unshift
unshift @arr, qw (13 14 15);
print_nice(
    message => 'UNSHIFT: add to start of an array:', 
    array => \@arr
); 

#Shift
$extra = shift @arr;
print_nice(
    message => 'SHIFT: remove from an start of an array', 
    array => \@arr,
    extra => $extra
);

#Array slice
my @first_foura_elements = @arr[0,1,2,3];
print_nice(
    message => 'Array slice []: first four:', 
    array => \@first_foura_elements,
);

sub print_nice{
    my (%data) = @_;
    say $data{message}, ' ', join(', ', @{$data{array}});
    say 'extra: ', $data{extra} if exists $data{extra};
}

#Split
my $string = "1 2 3 4 5";
my @new_arr = split / /, $string;
print_nice(
    message => 'create array from string:', 
    array => \@new_arr,
);


