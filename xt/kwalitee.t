use warnings;
use strict;
use utf8;
use FindBin '$Bin';
use Test::More;
my $builder = Test::More->builder;
binmode $builder->output,         ":utf8";
binmode $builder->failure_output, ":utf8";
binmode $builder->todo_output,    ":utf8";
binmode STDOUT, ":encoding(utf8)";
binmode STDERR, ":encoding(utf8)";
$ENV{AUTHOR_TESTING} = 1; 
use Test::Kwalitee 'kwalitee_ok';
# "has_meta_yml" is failing for version 0.03, but the file is in the
# distribution.
kwalitee_ok(-has_meta_yml);
done_testing ();
