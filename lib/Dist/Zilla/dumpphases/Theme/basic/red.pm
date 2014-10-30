use 5.006;
use strict;
use warnings;

package Dist::Zilla::dumpphases::Theme::basic::red;

our $VERSION = '1.000005';

# ABSTRACT: A red color theme for dzil dumpphases

# AUTHORITY

=begin MetaPOD::JSON v1.1.0

{
    "namespace":"Dist::Zilla::dumpphases::Theme:::basic::red",
    "does":"Dist::Zilla::dumpphases::Role::Theme::SimpleColor",
    "inherits":"Moo::Object",
    "interface":"class"
}

=end MetaPOD::JSON

=cut

use Moo qw( with );

with 'Dist::Zilla::dumpphases::Role::Theme::SimpleColor';

=method C<color>

See L<Dist::Zilla::dumpphases::Role::Theme::SimpleColor/color> for details.

This simply returns C<'red'>

=cut

sub color { return 'red' }

=head1 SYNOPSIS

    dzil dumpphases --color-theme=basic::red

=for html <center><img src="http://kentnl.github.io/Dist-Zilla-App-Command-dumpphases/media/theme_basic_red.png" alt="Screenshot" width="702" height="417"/></center>

=cut

1;
