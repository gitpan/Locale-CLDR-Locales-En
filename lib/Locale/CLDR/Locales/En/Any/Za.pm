package Locale::CLDR::Locales::En::Any::Za;
# This file auto generated from Data\common\main\en_ZA.xml
#	on Sat 29 Nov  2:13:49 pm GMT
# XML file generated 2014-07-23 16:10:33 -0500 (Wed, 23 Jul 2014)

use version;

our $VERSION = version->declare('v0.26.2');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::En::Any');
has 'characters' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> $^V ge v5.18.0
	? eval <<'EOT'
	sub {
		no warnings 'experimental::regex_sets';
		return {
			auxiliary => qr{(?^u:[á à ă â å ä ā æ ç ḓ é è ĕ ê ë ē í ì ĭ î ï ī ḽ ñ ṅ ṋ ó ò ŏ ô ö ø ō œ š ṱ ú ù ŭ û ü ū ÿ])},
		};
	},
EOT
: sub {
		return {};
},
);


has 'number_symbols' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'latn' => {
			'decimal' => q(,),
			'group' => q( ),
		},
	} }
);

has 'curriencies' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'ZAR' => {
			symbol => 'R',
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
			'medium' => q{dd MMM y G},
			'short' => q{GGGGG y/MM/dd},
		},
		'gregorian' => {
			'full' => q{EEEE dd MMMM y},
			'long' => q{dd MMMM y},
			'medium' => q{dd MMM y},
			'short' => q{y/MM/dd},
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
		'gregorian' => {
			MEd => q{E MM/dd},
			MMMEd => q{E dd MMM},
			MMMd => q{dd MMM},
			Md => q{MM/dd},
			yMEd => q{E, y/MM/dd},
			yMMMEd => q{E, dd MMM y},
			yMMMd => q{dd MMM y},
			yMd => q{y/MM/dd},
		},
		'generic' => {
			MEd => q{E MM/dd},
			MMMEd => q{E dd MMM},
			MMMd => q{dd MMM},
			Md => q{MM/dd},
			yyyyMEd => q{E, G y/MM/dd},
			yyyyMMMEd => q{E, dd MMM y G},
			yyyyMMMd => q{dd MMM y G},
			yyyyMd => q{G y/MM/dd},
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
				M => q{E MM/dd - E MM/dd},
				d => q{E MM/dd - E MM/dd},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E dd MMM - E dd MMM},
				d => q{E dd - E dd MMM},
			},
			MMMd => {
				M => q{dd MMM - dd MMM},
				d => q{dd-dd MMM},
			},
			Md => {
				M => q{MM/dd - MM/dd},
				d => q{MM/dd - MM/dd},
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
				M => q{y/MM - y/MM},
				y => q{y/MM - y/MM},
			},
			yMEd => {
				M => q{E y/MM/dd - E y/MM/dd},
				d => q{E y/MM/dd - E y/MM/dd},
				y => q{E y/MM/dd - E y/MM/dd},
			},
			yMMM => {
				M => q{MMM-MMM y},
				y => q{MMM y - MMM y},
			},
			yMMMEd => {
				M => q{E dd MMM - E dd MMM y},
				d => q{E dd - E dd MMM y},
				y => q{E dd MMM y - E dd MMM y},
			},
			yMMMd => {
				M => q{dd MMM - dd MMM y},
				d => q{dd-dd MMM y},
				y => q{dd MMM y - dd MMM y},
			},
			yMd => {
				M => q{y/MM/dd - y/MM/dd},
				d => q{y/MM/dd - y/MM/dd},
				y => q{y/MM/dd - y/MM/dd},
			},
		},
		'generic' => {
			M => {
				M => q{M-M},
			},
			MEd => {
				M => q{E MM/dd - E MM/dd},
				d => q{E MM/dd - E MM/dd},
			},
			MMM => {
				M => q{MMM-MMM},
			},
			MMMEd => {
				M => q{E dd MMM - E dd MMM},
				d => q{E dd - E dd MMM},
			},
			MMMd => {
				M => q{dd MMM - dd MMM},
				d => q{dd-dd MMM},
			},
			Md => {
				M => q{MM/dd - MM/dd},
				d => q{MM/dd - MM/dd},
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
				y => q{G y-y},
			},
			yM => {
				M => q{G y/MM - y/MM},
				y => q{G y/MM - y/MM},
			},
			yMEd => {
				M => q{E y/MM/dd - E y/MM/dd},
				d => q{E y/MM/dd - E y/MM/dd},
				y => q{E y/MM/dd - E y/MM/dd},
			},
			yMMM => {
				M => q{MMM-MMM y G},
				y => q{MMM y - MMM y G},
			},
			yMMMEd => {
				M => q{E dd MMM - E dd MMM y G},
				d => q{E dd - E dd MMM y G},
				y => q{E dd MMM y - E dd MMM y G},
			},
			yMMMd => {
				M => q{dd MMM - dd MMM y G},
				d => q{dd-dd MMM y G},
				y => q{dd MMM y - dd MMM y G},
			},
			yMd => {
				M => q{G y/MM/dd - y/MM/dd},
				d => q{G y/MM/dd - y/MM/dd},
				y => q{G y/MM/dd - y/MM/dd},
			},
		},
	} },
);

has 'time_zone_names' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default	=> sub { {
		'Africa_Central' => {
			short => {
				'standard' => q(CAT),
			},
		},
		'Africa_Eastern' => {
			short => {
				'standard' => q(EAT),
			},
		},
		'Africa_Southern' => {
			short => {
				'standard' => q(SAST),
			},
		},
		'Africa_Western' => {
			short => {
				'daylight' => q(WAST),
				'generic' => q(WAT),
				'standard' => q(WAT),
			},
		},
	 } }
);
no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
