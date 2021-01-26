use strict;
use warnings;

use Mock::Person::DE;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Mock::Person::DE::VERSION, 0.07, 'Version.');
