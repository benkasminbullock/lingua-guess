use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'			=> 'Language::Guess',
    'VERSION_FROM'	=> 'Guess.pm', # finds $VERSION
    'PREREQ_PM'		=> { Unicode::UCD => '0.01',
						 Encode => 0.01,
						 Unicode::Normalize, 0.01,
						 File::Spec::Functions => 0.01,
						 Carp => 0.01,
						}
)   ;
