=head1

Locale::CLDR::Locales::En::Any::Pg - Package for language English

=cut

package Locale::CLDR::Locales::En::Any::Pg;
# This file auto generated from Data\common\main\en_PG.xml
#	on Tue 30 Dec  9:45:41 pm GMT
# XML file generated 2014-07-23 16:10:33 -0500 (Wed, 23 Jul 2014)

use version;

our $VERSION = version->declare('v0.26.7');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::En::Any');
has 'curriencies' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'PGK' => {
			symbol => 'K',
		},
	} },
);


no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
