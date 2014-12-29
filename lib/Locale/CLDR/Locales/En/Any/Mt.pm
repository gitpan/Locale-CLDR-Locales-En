package Locale::CLDR::Locales::En::Any::Mt;
# This file auto generated from Data\common\main\en_MT.xml
#	on Mon 29 Dec 11:04:30 am GMT
# XML file generated 2014-08-14 22:53:08 -0500 (Thu, 14 Aug 2014)

use version;

our $VERSION = version->declare('v0.26.6');

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
		'GBP' => {
			symbol => 'GB£',
		},
	} },
);


has 'day_period_data' => (
	traits		=> ['Code'],
	is			=> 'ro',
	isa			=> 'CodeRef',
	init_arg	=> undef,
	handles		=> { call => 'execute_method' },
	default		=> sub { sub {
		# Time in hhmm format
		my ($self, $type, $time) = @_;
		SWITCH:
		for ($type) {
			if ($_ eq 'generic') {
				return 'am' if $time >= 000
					&& $time < 1200;
				return 'noon' if $time == 1200;
				return 'pm' if $time > 1200
					&& $time < 2400;
			last SWITCH;
			}
			if ($_ eq 'gregorian') {
				return 'am' if $time >= 000
					&& $time < 1200;
				return 'noon' if $time == 1200;
				return 'pm' if $time > 1200
					&& $time < 2400;
			last SWITCH;
			}
		}
	} },
);

has 'eras' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
		},
		'gregorian' => {
		},
	} },
);

has 'date_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
			'long' => q{dd MMMM y G},
			'medium' => q{dd MMM y G},
		},
		'gregorian' => {
			'long' => q{dd MMMM y},
			'medium' => q{dd MMM y},
		},
	} },
);

has 'time_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
		},
		'gregorian' => {
		},
	} },
);

has 'datetime_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
		},
		'gregorian' => {
		},
	} },
);

has 'datetime_formats_available_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
			MMMEd => q{E, d MMM},
			MMMd => q{dd MMM},
			yyyyMMMEd => q{E, dd MMM y G},
			yyyyMMMd => q{dd MMM y G},
		},
		'gregorian' => {
			MMMEd => q{E, d MMM},
			MMMd => q{dd MMM},
			yMMMEd => q{E, dd MMM y},
			yMMMd => q{dd MMM y},
		},
	} },
);

has 'datetime_formats_append_item' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
	} },
);

has 'datetime_formats_interval' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
			H => {
				H => q{HH-HH},
			},
			Hm => {
				H => q{HH:mm-HH:mm},
				m => q{HH:mm-HH:mm},
			},
			Hmv => {
				H => q{HH:mm-HH:mm v},
				m => q{HH:mm-HH:mm v},
			},
			Hv => {
				H => q{HH-HH v},
			},
			M => {
				M => q{M-M},
			},
			MEd => {
				M => q{E, dd/MM - E, dd/MM},
				d => q{E, dd/MM - E, dd/MM},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E, dd MMM - E, dd MMM},
				d => q{E, dd - E, dd MMM},
			},
			MMMd => {
				M => q{dd MMM - dd MMM},
				d => q{dd-dd MMM},
			},
			Md => {
				M => q{dd/MM - dd/MM},
				d => q{dd/MM - dd/MM},
			},
			d => {
				d => q{d-d},
			},
			fallback => '{0} - {1}',
			h => {
				h => q{h-h a},
			},
			hm => {
				h => q{h:mm-h:mm a},
				m => q{h:mm-h:mm a},
			},
			hmv => {
				h => q{h:mm-h:mm a v},
				m => q{h:mm-h:mm a v},
			},
			hv => {
				h => q{h-h a v},
			},
			yM => {
				M => q{MM/y - MM/y G},
				y => q{MM/y - MM/y G},
			},
			yMEd => {
				M => q{E, dd/MM/y - E, dd/MM/y G},
				d => q{E, dd/MM/y - E, dd/MM/y G},
				y => q{E, dd/MM/y - E, dd/MM/y G},
			},
			yMMM => {
				M => q{MMM-MMM y G},
				y => q{MMM y - MMM y G},
			},
			yMMMEd => {
				M => q{E, d MMM - E, d MMM y G},
				d => q{E, d - E, d MMM y G},
				y => q{E, d MMM y - E, d MMM y G},
			},
			yMMMd => {
				M => q{dd MMM - dd MMM y G},
				d => q{dd-dd MMM y G},
				y => q{dd MMM y - dd MMM y G},
			},
			yMd => {
				M => q{dd/MM/y - dd/MM/y G},
				d => q{dd/MM/y - dd/MM/y G},
				y => q{dd/MM/y - dd/MM/y G},
			},
		},
		'gregorian' => {
			H => {
				H => q{HH-HH},
			},
			Hm => {
				H => q{HH:mm-HH:mm},
				m => q{HH:mm-HH:mm},
			},
			Hmv => {
				H => q{HH:mm-HH:mm v},
				m => q{HH:mm-HH:mm v},
			},
			Hv => {
				H => q{HH-HH v},
			},
			M => {
				M => q{M-M},
			},
			MEd => {
				M => q{E, dd/MM - E, dd/MM},
				d => q{E, dd/MM - E, dd/MM},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E, dd MMM - E, dd MMM},
				d => q{E, dd - E, dd MMM},
			},
			MMMd => {
				M => q{dd MMM - dd MMM},
				d => q{dd-dd MMM},
			},
			Md => {
				M => q{dd/MM - dd/MM},
				d => q{dd/MM - dd/MM},
			},
			d => {
				d => q{d-d},
			},
			fallback => '{0} - {1}',
			h => {
				h => q{h-h a},
			},
			hm => {
				h => q{h:mm-h:mm a},
				m => q{h:mm-h:mm a},
			},
			hmv => {
				h => q{h:mm-h:mm a v},
				m => q{h:mm-h:mm a v},
			},
			hv => {
				h => q{h-h a v},
			},
			yM => {
				M => q{MM/y - MM/y},
				y => q{MM/y - MM/y},
			},
			yMEd => {
				M => q{E, dd/MM/y - E, dd/MM/y},
				d => q{E, dd/MM/y - E, dd/MM/y},
				y => q{E, dd/MM/y - E, dd/MM/y},
			},
			yMMM => {
				M => q{MMM-MMM y},
				y => q{MMM y - MMM y},
			},
			yMMMEd => {
				M => q{E, d MMM - E, d MMM y},
				d => q{E, d - E, d MMM y},
				y => q{E, d MMM y - E, d MMM y},
			},
			yMMMd => {
				M => q{dd MMM - dd MMM y},
				d => q{dd-dd MMM y},
				y => q{dd MMM y - dd MMM y},
			},
			yMd => {
				M => q{dd/MM/y - dd/MM/y},
				d => q{dd/MM/y - dd/MM/y},
				y => q{dd/MM/y - dd/MM/y},
			},
		},
	} },
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
