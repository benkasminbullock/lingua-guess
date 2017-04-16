#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use Lingua::Guess;
my $guesser = Lingua::Guess->new ();
while (my $line = <> ) {
    my $guess = $guesser->guess ($line);
    for (@$guess) {
	print "$line was $_->{name} $_->{score}\n";
    }
}
