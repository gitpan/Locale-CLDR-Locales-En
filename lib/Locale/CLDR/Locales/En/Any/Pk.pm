=head1

Locale::CLDR::Locales::En::Any::Pk - Package for language English

=cut

package Locale::CLDR::Locales::En::Any::Pk;
# This file auto generated from Data\common\main\en_PK.xml
#	on Tue  6 Jan 10:06:25 am GMT
# XML file generated 2014-08-14 22:53:08 -0500 (Thu, 14 Aug 2014)

use version;

our $VERSION = version->declare('v0.26.8');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::En::Any');
has 'number_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		decimalFormat => {
			'default' => {
				'0' => {
					'' => '#,##,##0.###',
				},
			},
		},
		percentFormat => {
			'default' => {
				'0' => {
					'' => '#,##,##0%',
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
						'negative' => '¤ #,##,##0.00',
						'positive' => '¤ #,##,##0.00',
					},
				},
			},
		},
} },
);

has 'curriencies' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'PKR' => {
			symbol => 'Rs',
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
				return 'pm' if $time > 1200
					&& $time < 2400;
				return 'noon' if $time == 1200;
				return 'am' if $time >= 000
					&& $time < 1200;
			last SWITCH;
			}
			if ($_ eq 'gregorian') {
				return 'pm' if $time > 1200
					&& $time < 2400;
				return 'noon' if $time == 1200;
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
			'full' => q{EEEE d MMMM y G},
			'medium' => q{dd-MMM-y G},
		},
		'gregorian' => {
			'full' => q{EEEE d MMMM y},
			'medium' => q{dd-MMM-y},
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

has 'time_zone_names' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default	=> sub { {
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
	 } }
);
no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
