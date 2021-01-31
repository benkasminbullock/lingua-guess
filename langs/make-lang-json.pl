#!/home/ben/software/install/bin/perl
use Z;
use JSON::Create 'create_json';
my $in = read_text ("$Bin/Codes.php");
my %lang2codes;
while ($in =~ m!<tr><td>(.*?)</td><td>(.*?)</td><td>(.*?)</td><td>(.*?)</td></tr>!g) {
    my $name = $1;
    my $two = $2;
    my $three = $3;
    $name =~ s!\(.*?\)!!;
    $name =~ s!languages!!;
    my @names = ($name);
    if ($name =~ /;/) {
	@names = split /;\s*/, $name;
    }
    for my $n (@names) {
	$n =~ s/,.*$//;
	$n =~ s/^\s+|\s+$//g;
	$n =~ s/\s/-/g;
	die "$n" if $n =~ /[^\w-]/;
	$n = lc $n;
#	print "$n $two $three\n";
	$lang2codes{$n} = [$two, $three];
    }
}
print create_json (\%lang2codes, sort => 1, indent => 1);
