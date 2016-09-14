package Bencher::Scenario::RegexpPattern::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

#our @modules = do { require App::lcpan::Call; @{ App::lcpan::Call::call_lcpan_script(argv=>["modules", "--namespace", "Regexp::Pattern"])->[2] } }; # PRECOMPUTE
our @modules = qw(
                     Regexp::Pattern
                     Regexp::Pattern::RegexpCommon
                     Regexp::Pattern::YouTube
             );

our $scenario = {
    summary => 'Benchmark module startup overhead of Regexp::Pattern modules',

    module_startup => 1,

    participants => [
        map { +{module=>$_} } @modules,
    ],
};

1;
# ABSTRACT:
