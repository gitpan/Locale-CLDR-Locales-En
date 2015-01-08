=head1

Locale::CLDR::Locales::En::Any::Us::Posix - Package for language English

=cut

package Locale::CLDR::Locales::En::Any::Us::Posix;
# This file auto generated from Data\common\main\en_US_POSIX.xml
#	on Tue  6 Jan 10:06:29 am GMT
# XML file generated 2014-07-23 16:10:33 -0500 (Wed, 23 Jul 2014)

use version;

our $VERSION = version->declare('v0.26.8');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::En::Any::Us');
has 'WordBreak_variables' => (
	is => 'ro',
	isa => 'ArrayRef',
	init_arg => undef,
	default => sub {[
		'$MidLetter' => '[[$MidLetter]-[\:]]',
		'$MidNumLet' => '[[$MidNumLet]-[.]]',
		'$MidNum' => '[[$MidNum] [.]]',
	]}
);
has 'number_symbols' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'latn' => {
			'infinity' => q(INF),
			'perMille' => q(0/00),
		},
	} }
);

has 'number_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		decimalFormat => {
			'default' => {
				'0' => {
					'default' => '#0.######',
				},
			},
		},
		percentFormat => {
			'default' => {
				'0' => {
					'default' => '#0%',
				},
			},
		},
		scientificFormat => {
			'default' => {
				'0' => {
					'default' => '0.000000E+000',
				},
			},
		},
} },
);

has 'number_currency_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'latn' => {
			'pattern' => {
				'default' => {
					'standard' => {
						'negative' => '¤ #0.00',
						'positive' => '¤ #0.00',
					},
				},
			},
		},
} },
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
