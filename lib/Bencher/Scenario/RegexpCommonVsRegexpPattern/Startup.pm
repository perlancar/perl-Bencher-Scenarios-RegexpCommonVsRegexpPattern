package Bencher::Scenario::RegexpCommonVsRegexpPattern::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark module startup overhead of Regexp::Common vs Regexp::Pattern',

    # so the benchmark sample result POD displays the mod versions
    modules => {
        'Regexp::Common' => 0,
        'Regexp::Pattern' => 0,
    },

    participants => [
        {name=>'RC_defaults'  , perl_cmdline => ['-MRegexp::Common', '-e1']},
        {name=>'RC_nodefaults', perl_cmdline => ['-MRegexp::Common=no_defaults', '-e1']},
        {name=>'RP'           , perl_cmdline => ['-MRegexp::Pattern', '-e1']},
        {name=>'baseline'     , perl_cmdline => ['-e1']},
    ],
};

1;
# ABSTRACT:

=head1 DESCRIPTION

Loading L<Regexp::Common> with C<no_defaults> (i.e. C<use Regexp::Common
'no_defaults>) actually incurs only a little overhead, compared to just C<use
Regexp::Common>.
