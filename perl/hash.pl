use v5.10;
use strict;
use warnings;

#Setup
my %hash = (a=>1, b=>2, c=>3);

#Hash Slice
@hash{ qw(a b c) } = (9,8,7); 
print_nice(
    message => 'Hash slices: ', 
    hash => \%hash
); 

#Hash Key Exists
my $extra = exists $hash{a};
print_nice(
    message => 'Hash Key Exists: ', 
    hash => \%hash,
    extra => $extra
); 



#Hash Keys and Values
for my $key (keys %hash){
    say $key;
}

for (my ($key, $value) = each %hash){
    say $key;
    say $value;
}

sub print_nice{
    my (%data) = @_;
    say $data{message}, ' ', join(', ', %{$data{hash}});
    say 'extra: ', $data{extra} if exists $data{extra};
}
