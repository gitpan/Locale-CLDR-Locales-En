=head1

Locale::CLDR::Locales::En::Any::My - Package for language English

=cut

package Locale::CLDR::Locales::En::Any::My;
# This file auto generated from Data\common\main\en_MY.xml
#	on Tue 30 Dec  9:45:40 pm GMT
# XML file generated 2014-05-14 00:17:36 -0500 (Wed, 14 May 2014)

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
		'MYR' => {
			symbol => 'RM',
		},
	} },
);


has 'time_zone_names' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default	=> sub { {
		'Malaysia' => {
			short => {
				'standard' => q(MYT),
			},
		},
	 } }
);
no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
