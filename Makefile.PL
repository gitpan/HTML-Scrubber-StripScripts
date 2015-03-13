use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'          => 'HTML::Scrubber::StripScripts',
    'AUTHOR'        => 'Nick Cleaton <nick@cleaton.net>',
    'VERSION_FROM'  => 'lib/HTML/Scrubber/StripScripts.pm',
    'ABSTRACT_FROM' => 'lib/HTML/Scrubber/StripScripts.pm',
    'PREREQ_PM'     => {
                           'Test::More'     => 0,
                           'HTML::Scrubber' => 0.11,
                       },
    'LICENSE'       => 'perl',
    'EXE_FILES'     => [],
);
