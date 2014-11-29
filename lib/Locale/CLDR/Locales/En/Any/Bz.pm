package Locale::CLDR::Locales::En::Any::Bz;
# This file auto generated from Data\common\main\en_BZ.xml
#	on Sat 29 Nov  2:11:41 pm GMT
# XML file generated 2014-07-23 16:10:33 -0500 (Wed, 23 Jul 2014)

use version;

our $VERSION = version->declare('v0.26.2');

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

has 'curriencies' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'BZD' => {
			symbol => '$',
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
			if ($_ eq 'gregorian') {
				return 'noon' if $time == 1200;
				return 'pm' if $time > 1200
					&& $time < 2400;
				return 'am' if $time >= 000
					&& $time < 1200;
			last SWITCH;
			}
			if ($_ eq 'generic') {
				return 'noon' if $time == 1200;
				return 'pm' if $time > 1200
					&& $time < 2400;
				return 'am' if $time >= 000
					&& $time < 1200;
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
			'full' => q{EEEE dd MMMM y G},
			'long' => q{dd MMMM y G},
			'medium' => q{dd-MMM-y G},
			'short' => q{dd/MM/y GGGGG},
		},
		'gregorian' => {
			'full' => q{EEEE dd MMMM y},
			'long' => q{dd MMMM y},
			'medium' => q{dd-MMM-y},
			'short' => q{dd/MM/yy},
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
			'full' => q{HH:mm:ss zzzz},
			'long' => q{HH:mm:ss z},
			'medium' => q{HH:mm:ss},
			'short' => q{HH:mm},
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
			MEd => q{E dd/MM},
			MMMEd => q{E dd MMM},
			MMMd => q{dd MMM},
			Md => q{dd/MM},
			yyyyM => q{MM/y G},
			yyyyMEd => q{E dd/MM/y G},
			yyyyMMMEd => q{E dd MMM y G},
			yyyyMMMd => q{dd MMM y G},
			yyyyMd => q{dd/MM/y G},
		},
		'gregorian' => {
			MEd => q{E dd/MM},
			MMMEd => q{E dd MMM},
			MMMd => q{dd MMM},
			Md => q{dd/MM},
			yM => q{MM/y},
			yMEd => q{E dd/MM/y},
			yMMMEd => q{E dd MMM y},
			yMMMd => q{dd MMM y},
			yMd => q{dd/MM/y},
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
			M => {
				M => q{M-M},
			},
			MEd => {
				M => q{E, M/d - E, M/d},
				d => q{E, M/d - E, M/d},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E, MMM d - E, MMM d},
				d => q{E, MMM d - E, MMM d},
			},
			MMMd => {
				M => q{MMM d - MMM d},
				d => q{MMM d-d},
			},
			Md => {
				M => q{M/d - M/d},
				d => q{M/d - M/d},
			},
			d => {
				d => q{d-d},
			},
			fallback => '{0} - {1}',
			h => {
				a => q{h a - h a},
				h => q{h-h a},
			},
			hm => {
				a => q{h:mm a - h:mm a},
				h => q{h:mm-h:mm a},
				m => q{h:mm-h:mm a},
			},
			hmv => {
				a => q{h:mm a - h:mm a v},
				h => q{h:mm-h:mm a v},
				m => q{h:mm-h:mm a v},
			},
			hv => {
				a => q{h a - h a v},
				h => q{h-h a v},
			},
			y => {
				y => q{y-y G},
			},
			yM => {
				M => q{M/y - M/y G},
				y => q{M/y - M/y G},
			},
			yMEd => {
				M => q{E, M/d/y - E, M/d/y G},
				d => q{E, M/d/y - E, M/d/y G},
				y => q{E, M/d/y - E, M/d/y G},
			},
			yMMM => {
				M => q{MMM-MMM y G},
				y => q{MMM y - MMM y G},
			},
			yMMMEd => {
				M => q{E, MMM d - E, MMM d, y G},
				d => q{E, MMM d - E, MMM d, y G},
				y => q{E, MMM d, y - E, MMM d, y G},
			},
			yMMMd => {
				M => q{MMM d - MMM d, y G},
				d => q{MMM d-d, y G},
				y => q{MMM d, y - MMM d, y G},
			},
			yMd => {
				M => q{M/d/y - M/d/y G},
				d => q{M/d/y - M/d/y G},
				y => q{M/d/y - M/d/y G},
			},
		},
		'gregorian' => {
			M => {
				M => q{M-M},
			},
			MEd => {
				M => q{E, M/d - E, M/d},
				d => q{E, M/d - E, M/d},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E, MMM d - E, MMM d},
				d => q{E, MMM d - E, MMM d},
			},
			MMMd => {
				M => q{MMM d - MMM d},
				d => q{MMM d-d},
			},
			Md => {
				M => q{M/d - M/d},
				d => q{M/d - M/d},
			},
			d => {
				d => q{d-d},
			},
			fallback => '{0} - {1}',
			h => {
				a => q{h a - h a},
				h => q{h-h a},
			},
			hm => {
				a => q{h:mm a - h:mm a},
				h => q{h:mm-h:mm a},
				m => q{h:mm-h:mm a},
			},
			hmv => {
				a => q{h:mm a - h:mm a v},
				h => q{h:mm-h:mm a v},
				m => q{h:mm-h:mm a v},
			},
			hv => {
				a => q{h a - h a v},
				h => q{h-h a v},
			},
			y => {
				y => q{y-y},
			},
			yM => {
				M => q{M/y - M/y},
				y => q{M/y - M/y},
			},
			yMEd => {
				M => q{E, M/d/y - E, M/d/y},
				d => q{E, M/d/y - E, M/d/y},
				y => q{E, M/d/y - E, M/d/y},
			},
			yMMM => {
				M => q{MMM-MMM y},
				y => q{MMM y - MMM y},
			},
			yMMMEd => {
				M => q{E, MMM d - E, MMM d, y},
				d => q{E, MMM d - E, MMM d, y},
				y => q{E, MMM d, y - E, MMM d, y},
			},
			yMMMd => {
				M => q{MMM d - MMM d, y},
				d => q{MMM d-d, y},
				y => q{MMM d, y - MMM d, y},
			},
			yMd => {
				M => q{M/d/y - M/d/y},
				d => q{M/d/y - M/d/y},
				y => q{M/d/y - M/d/y},
			},
		},
	} },
);

no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
