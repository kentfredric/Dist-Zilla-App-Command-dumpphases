use 5.006;
use strict;
use warnings;

package Dist::Zilla::dumpphases::Role::Theme;

our $VERSION = '1.000010';

# ABSTRACT: Output formatting themes for dzil dumpphases

# AUTHORITY

use Role::Tiny qw( requires );

=begin MetaPOD::JSON v1.1.0

{
    "namespace":"Dist::Zilla::dumpphases::Role::Theme",
    "interface":"role"
}

=end MetaPOD::JSON

=cut

requires 'print_star_assoc';
requires 'print_section_prelude';
requires 'print_section_header';

=requires C<print_star_assoc>

Print some kind of associated data.

    $theme->print_star_assoc($label, $value);

e.g.:

    $theme->print_star_assoc('@Author::KENTNL/Test::CPAN::Changes', 'Dist::Zilla::Plugin::Test::CPAN::Changes');

recommended formatting is:

    \s  * \s label \s => \s $value


Most of the time, C<$label> will be an alias of some kind (e.g: an instance name), and $value will be the thing that alias
refers to (e.g.: an instances class).

=requires C<print_section_prelude>

Will be passed meta-info pertaining to the section currently being dumped, such as section descriptions, or applicable roles
for sections.


    $theme->print_section_prelude($label, $value);

Recommended format is simply

    \s-\s$label$value


=requires C<print_section_header>

Will be passed context about a dump stage that is about to be detailed.

    $theme->print_section_header($label, $value);

C<$label> will be a the "kind" of dump that is, for detailing specific phases, C<$label> will be "Phase", and C<$value> will be
a simple descriptor for that phase. ( e.g.: Phase , Prune files , or something like that ).

Recommended format is simply

    \n$label$value\n

=cut

1;
