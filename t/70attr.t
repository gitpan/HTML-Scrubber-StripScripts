
use strict;
use Test::More tests => 3;

BEGIN { $^W = 1 }

use HTML::Scrubber::StripScripts;

use vars qw($s);
$s = HTML::Scrubber::StripScripts->new;


test( '<th nowrap>',        '<th nowrap="nowrap">', 'th nowrap no value' );
test( '<th nowrap=nowrap>', '<th nowrap="nowrap">', 'th nowrap=nowrap ' );
test( '<th nowrap="!^*$">', '<th>',                 'th nowrap=!^*$ ' );


sub test {
    my ($in, $out, $name) = @_;

    is( $s->scrub($in), $out, $name );
}

