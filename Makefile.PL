use ExtUtils::MakeMaker;
my $pm = 'lib/Lingua/Guess.pm';
my $pod = 'lib/Lingua/Guess.pod';
WriteMakefile(
    'NAME' => 'Lingua::Guess',
    'VERSION_FROM' => $pm,
    'ABSTRACT_FROM' => $pod,
    LICENSE => 'gpl',
    'PREREQ_PM'		=> {
	Unicode::UCD => '0.01',
	Encode => '0.01',
	Unicode::Normalize => '0.01',
	File::Spec::Functions => '0.01',
	Carp => '0.01',
    },
);
