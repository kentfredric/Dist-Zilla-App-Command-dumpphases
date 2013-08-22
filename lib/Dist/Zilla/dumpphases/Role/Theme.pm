use strict;
use warnings;

package Dist::Zilla::dumpphases::Role::Theme;
BEGIN {
  $Dist::Zilla::dumpphases::Role::Theme::AUTHORITY = 'cpan:KENTNL';
}
{
  $Dist::Zilla::dumpphases::Role::Theme::VERSION = '0.2.1';
}

# ABSTRACT: Output formatting themes for dumpphases

use Role::Tiny;



requires 'print_star_assoc';
requires 'print_section_prelude';
requires 'print_section_header';

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Dist::Zilla::dumpphases::Role::Theme - Output formatting themes for dumpphases

=head1 VERSION

version 0.2.1

=head1 REQUIRED METHODS

=head2 C<print_star_assoc>

Print some kind of associated data.

    $theme->print_star_assoc($label, $value);

ie:

    $theme->print_star_assoc('@Author::KENTNL/Test::CPAN::Changes', 'Dist::Zilla::Plugin::Test::CPAN::Changes');

recommended formatting is:

    \s  * \s label \s => \s $value

Most of the time, C<$label> will be an alias of some kind (ie: an instance name), and $value will be the thing that alias refers to (ie: an instances class).

=head2 C<print_section_prelude>

Will be passed meta-info pertaining to the section currently being dumped, such as section descriptions, or applicable roles for sections.

    $theme->print_section_prelude($label, $value);

Recommended format is simply

    \s-\s$label$value

=head2 C<print_section_header>

Will be passed context about a dump stage that is about to be detailed.

    $theme->print_section_header($label, $value);

C<$label> will be a the "kind" of dump that is, for detailing specific phases, C<$label> will be "Phase", and C<$value> will be a simple descriptor for that phase. ( ie: Phase , Prune files , or something like that ).

Recommended format is simply 

    \n$label$value\n

=head1 AUTHORS

=over 4

=item *

Kent Fredric <kentnl@cpan.org>

=item *

Alan Young <harleypig@gmail.com>

=item *

Oliver Mengué <dolmen@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Kent Fredric <kentnl@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut