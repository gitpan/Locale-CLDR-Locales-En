package Locale::CLDR::Locales::En::Any::Nz;
# This file auto generated from Data\common\main\en_NZ.xml
#	on Sat 29 Nov  2:13:46 pm GMT
# XML file generated 2014-08-14 22:53:08 -0500 (Thu, 14 Aug 2014)

use version;

our $VERSION = version->declare('v0.26.2');

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
		'NZD' => {
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
			'medium' => q{d/MM/y G},
			'short' => q{d/MM/y GGGGG},
		},
		'gregorian' => {
			'medium' => q{d/MM/y},
			'short' => q{d/MM/yy},
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
			'full' => q{h:mm:ss a zzzz},
			'long' => q{h:mm:ss a z},
			'medium' => q{h:mm:ss a},
			'short' => q{h:mm a},
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
		'gregorian' => {
			MMMEd => q{E, d MMM},
			Md => q{d/M},
			yMd => q{d/MM/y},
		},
		'generic' => {
			MMMEd => q{E, d MMM},
			Md => q{d/M},
			yyyyMd => q{d/MM/y G},
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
		'gregorian' => {
			M => {
				M => q{M-M},
			},
			MEd => {
				M => q{E, d/MM - E, d/MM},
				d => q{E, d/MM - E, d/MM},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E, d MMM - E, d MMM},
				d => q{E, d - E, d MMM},
			},
			MMMd => {
				M => q{d MMM - d MMM},
				d => q{d-d MMM},
			},
			Md => {
				M => q{d/MM - d/MM},
				d => q{d/MM - d/MM},
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
			yM => {
				M => q{MM/y - MM/y},
				y => q{MM/y - MM/y},
			},
			yMEd => {
				M => q{E, d/MM/y - E, d/MM/y},
				d => q{E, d/MM/y - E, d/MM/y},
				y => q{E, d/MM/y - E, d/MM/y},
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
				M => q{d MMM - d MMM y},
				d => q{d-d MMM y},
				y => q{d MMM y - d MMM y},
			},
			yMd => {
				M => q{d/MM/y - d/MM/y},
				d => q{d/MM/y - d/MM/y},
				y => q{d/MM/y - d/MM/y},
			},
		},
		'generic' => {
			M => {
				M => q{M-M},
			},
			MEd => {
				M => q{E, d/MM - E, d/MM},
				d => q{E, d/MM - E, d/MM},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E, d MMM - E, d MMM},
				d => q{E, d - E, d MMM},
			},
			MMMd => {
				M => q{d MMM - d MMM},
				d => q{d-d MMM},
			},
			Md => {
				M => q{d/MM - d/MM},
				d => q{d/MM - d/MM},
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
			yM => {
				M => q{MM/y - MM/y G},
				y => q{MM/y - MM/y G},
			},
			yMEd => {
				M => q{E, d/MM/y - E, d/MM/y G},
				d => q{E, d/MM/y - E, d/MM/y G},
				y => q{E, d/MM/y - E, d/MM/y G},
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
				M => q{d MMM - d MMM y G},
				d => q{d-d MMM y G},
				y => q{d MMM y - d MMM y G},
			},
			yMd => {
				M => q{d/MM/y - d/MM/y G},
				d => q{d/MM/y - d/MM/y G},
				y => q{d/MM/y - d/MM/y G},
			},
		},
	} },
);

has 'time_zone_names' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default	=> sub { {
		'Australia_Central' => {
			short => {
				'daylight' => q(ACDT),
				'generic' => q(ACT),
				'standard' => q(ACST),
			},
		},
		'Australia_CentralWestern' => {
			short => {
				'daylight' => q(ACWDT),
				'generic' => q(ACWT),
				'standard' => q(ACWST),
			},
		},
		'Australia_Eastern' => {
			short => {
				'daylight' => q(AEDT),
				'generic' => q(AET),
				'standard' => q(AEST),
			},
		},
		'Australia_Western' => {
			short => {
				'daylight' => q(AWDT),
				'generic' => q(AWT),
				'standard' => q(AWST),
			},
		},
		'Chatham' => {
			short => {
				'daylight' => q(CHADT),
				'generic' => q(CHAT),
				'standard' => q(CHAST),
			},
		},
		'Europe/London' => {
			short => {
				'daylight' => q(∅∅∅),
			},
		},
		'Europe_Central' => {
			short => {
				'daylight' => q(∅∅∅),
				'generic' => q(∅∅∅),
				'standard' => q(∅∅∅),
			},
		},
		'Europe_Eastern' => {
			short => {
				'daylight' => q(∅∅∅),
				'generic' => q(∅∅∅),
				'standard' => q(∅∅∅),
			},
		},
		'Europe_Western' => {
			short => {
				'daylight' => q(∅∅∅),
				'generic' => q(∅∅∅),
				'standard' => q(∅∅∅),
			},
		},
		'Lord_Howe' => {
			short => {
				'daylight' => q(LHDT),
				'generic' => q(LHT),
				'standard' => q(LHST),
			},
		},
		'New_Zealand' => {
			short => {
				'daylight' => q(NZDT),
				'generic' => q(NZT),
				'standard' => q(NZST),
			},
		},
	 } }
);
no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
