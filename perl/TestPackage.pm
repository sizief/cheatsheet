package TestPackage;
use Exporter qw(import);
our @EXPORT_OK = qw(add);

sub add{
    my ($n1,$n2) = @_;
    return $n1 + $n2;
}

1;
