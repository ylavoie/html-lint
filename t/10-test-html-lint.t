#!perl -Tw

use warnings;
use strict;

use Test::More tests => 3;
use Test::HTML::Lint;

BEGIN {
    use_ok( 'Test::HTML::Lint' );
}

my $chunk = '<html><head></head><body><title>A fine chunk of code</title></body></html>';

TODO: { # undef should fail
    local $TODO = "This test should NOT succeed";
    html_ok( undef );
}
html_ok( $chunk );
