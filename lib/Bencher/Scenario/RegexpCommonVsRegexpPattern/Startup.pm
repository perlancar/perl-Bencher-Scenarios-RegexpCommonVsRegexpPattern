package Bencher::Scenario::RegexpCommonVsRegexpPattern::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark module startup overhead of Regexp::Common vs Regexp::Pattern',

    participants => [
        {name=>'RC_defaults'  , perl_cmdline => ['-MRegexp::Common', '-e1']},
        {name=>'RC_nodefaults', perl_cmdline => ['-MRegexp::Common=no_defaults', '-e1']},
        {name=>'RP'           , perl_cmdline => ['-MRegexp::Pattern', '-e1']},
        {name=>'baseline'     , perl_cmdline => ['-e1']},
    ],
};

1;
# ABSTRACT:
