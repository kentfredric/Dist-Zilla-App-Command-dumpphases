use strict;
use warnings;

use Test::More;
use Dist::Zilla::App::Tester;

use Cwd qw(cwd);
my $cwd = cwd();

my $result = test_dzil( $cwd . '/corpus/basic_01', [ 'dumpphases', '--color-theme=bogus' ] );
ok( ref $result, 'self-test executed' );
like( $result->error, qr/Invalid theme specification/, 'invalid theme specification' );
isnt( $result->exit_code, 0, 'exit != 0' );
note( $result->stderr );

done_testing;
