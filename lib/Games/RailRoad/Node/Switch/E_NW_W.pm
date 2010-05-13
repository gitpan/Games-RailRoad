# 
# This file is part of Games-RailRoad
# 
# This software is copyright (c) 2008 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 
use 5.010;
use strict;
use warnings;

package Games::RailRoad::Node::Switch::E_NW_W;
BEGIN {
  $Games::RailRoad::Node::Switch::E_NW_W::VERSION = '1.101330';
}
# ABSTRACT: a given type of node...

use Moose;
extends qw{ Games::RailRoad::Node::Switch };


# -- private methods

sub _next_map {
    return {
        'e'  => $_[0]->_sw_exits->[ $_[0]->_switch ],
        'nw' => 'e',
        'w'  => 'e',
    };
}


sub _sw_exits { return [ qw{ nw w } ]; }


sub _transform_map {
    my $prefix = 'Games::RailRoad::Node::';
    return {
        'se'  => $prefix . 'Cross::E_NW_SE_W',
        '-nw' => $prefix . 'Straight::E_W',
        '-w'  => $prefix . 'Straight::E_NW',
    };
}


__PACKAGE__->meta->make_immutable;
1;


=pod

=head1 NAME

Games::RailRoad::Node::Switch::E_NW_W - a given type of node...

=head1 VERSION

version 1.101330

=head1 DESCRIPTION

This package provides a node object. Refer to L<Games::RailRoad::Node>
for a description of the various node types.

=head1 AUTHOR

  Jerome Quelin

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2008 by Jerome Quelin.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

