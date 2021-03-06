=head1

Locale::CLDR::Locales::En::Any::Pw - Package for language English

=cut

package Locale::CLDR::Locales::En::Any::Pw;
# This file auto generated from Data\common\main\en_PW.xml
#	on Tue  6 Jan 10:06:26 am GMT
# XML file generated 2014-07-23 16:10:33 -0500 (Wed, 23 Jul 2014)

use version;

our $VERSION = version->declare('v0.26.8');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::En::Any');
has 'units' => (
	is			=> 'ro',
	isa			=> 'HashRef[HashRef[HashRef[Str]]]',
	init_arg	=> undef,
	default		=> sub { {
				'narrow' => {
					'celsius' => {
						'one' => q({0}°C),
						'other' => q({0}°C),
					},
					'fahrenheit' => {
						'one' => q({0}°),
						'other' => q({0}°),
					},
				},
			} }
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
