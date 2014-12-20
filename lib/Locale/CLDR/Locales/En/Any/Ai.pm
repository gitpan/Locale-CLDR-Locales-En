=head1

Locale::CLDR::Locales::En::Any::Ai - Package for language English

=cut

package Locale::CLDR::Locales::En::Any::Ai;
# This file auto generated from Data\common\main\en_AI.xml
#	on Fri 19 Dec  1:36:32 am GMT
# XML file generated 2014-08-01 12:07:43 -0500 (Fri, 01 Aug 2014)

use version;

our $VERSION = version->declare('v0.26.4');

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
		'XCD' => {
			symbol => '$',
		},
	} },
);


no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
