#!/usr/bin/perl
# $Id: pod-coverage.t 1894 2007-11-04 17:52:17Z guillomovitch $

use strict;
use warnings;
use Test::More;

eval "use Test::Pod::Coverage 1.04";
plan(skip_all => 'Test::Pod::Coverage >= 1.04 required, skipping') if $@;

all_pod_coverage_ok(
    { coverage_class => 'Pod::Coverage::CountParents' }
);
