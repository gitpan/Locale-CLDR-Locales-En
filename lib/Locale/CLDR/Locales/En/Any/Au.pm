package Locale::CLDR::Locales::En::Any::Au;
# This file auto generated from Data\common\main\en_AU.xml
#	on Sat 29 Nov  2:11:38 pm GMT
# XML file generated 2014-08-14 22:53:08 -0500 (Thu, 14 Aug 2014)

use version;

our $VERSION = version->declare('v0.26.2');

use v5.10;
use mro 'c3';
use utf8;
use if $^V ge v5.12.0, feature => 'unicode_strings';

use Moose;

extends('Locale::CLDR::Locales::En::Any');
has 'display_name_language' => (
	is			=> 'ro',
	isa			=> 'CodeRef',
	init_arg	=> undef,
	default		=> sub { 
		 sub {
			 my %languages = (
				'bax' => 'Bamum',
 				'en_US' => 'United States English',

			);
			if (@_) {
				return $languages{$_[0]};
			}
			return \%languages;
		}
	},
);

has 'display_name_script' => (
	is			=> 'ro',
	isa			=> 'CodeRef',
	init_arg	=> undef,
	default		=> sub {
		sub {
			my %scripts = (
			'Cham' => 'Cham',
 			'Loma' => 'Loma',
 			'Modi' => 'Modi',
 			'Moon' => 'Moon',
 			'Thai' => 'Thai',

			);
			if ( @_ ) {
				return $scripts{$_[0]};
			}
			return \%scripts;
		}
	}
);

has 'display_name_territory' => (
	is			=> 'ro',
	isa			=> 'HashRef[Str]',
	init_arg	=> undef,
	default		=> sub { 
		{
			'GB@alt=short' => 'U.K.',
 			'GS' => 'South Georgia and the South Sandwich Islands',
 			'HM' => 'Heard Island and McDonald Islands',
 			'UM' => 'U.S. Minor Outlying Islands',
 			'US@alt=short' => 'U.S.',
 			'VC' => 'Saint Vincent and the Grenadines',

		}
	},
);

has 'units' => (
	is			=> 'ro',
	isa			=> 'HashRef[HashRef[HashRef[Str]]]',
	init_arg	=> undef,
	default		=> sub { {
				'long' => {
					'metric-ton' => {
						'1' => q(tonnes),
						'one' => q(tonne),
						'other' => q({0} tonnes),
					},
				},
				'narrow' => {
					'millisecond' => {
						'one' => q({0} ms),
						'other' => q({0} ms),
					},
				},
				'short' => {
					'micrometer' => {
						'1' => q(µmetres),
					},
				},
			} }
);

has 'listPatterns' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
				2 => q({0} and {1}),
		} }
);

has 'curriencies' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'BYR' => {
			display_name => {
				'currency' => q(Belarusian Rouble),
				'one' => q(Belarusian rouble),
				'other' => q(Belarusian roubles),
			},
		},
		'EUR' => {
			display_name => {
				'one' => q(euro),
				'other' => q(euro),
			},
		},
		'GBP' => {
			display_name => {
				'currency' => q(British Pound),
				'one' => q(British pound),
				'other' => q(British pounds),
			},
		},
		'MGA' => {
			display_name => {
				'one' => q(Malagasy ariary),
				'other' => q(Malagasy ariarys),
			},
		},
		'MWK' => {
			display_name => {
				'one' => q(Malawian kwacha),
				'other' => q(Malawian kwachas),
			},
		},
		'RUB' => {
			display_name => {
				'currency' => q(Russian Rouble),
				'one' => q(Russian rouble),
				'other' => q(Russian roubles),
			},
		},
		'SCR' => {
			display_name => {
				'currency' => q(Seychelles Rupee),
			},
		},
		'UZS' => {
			display_name => {
				'currency' => q(Uzbekistani Som),
				'one' => q(Uzbekistani som),
				'other' => q(Uzbekistani som),
			},
		},
		'XAF' => {
			display_name => {
				'currency' => q(Central African CFA Franc),
				'one' => q(Central African CFA franc),
				'other' => q(Central African CFA francs),
			},
		},
		'XOF' => {
			display_name => {
				'currency' => q(West African CFA Franc),
				'one' => q(West African CFA franc),
				'other' => q(West African CFA francs),
			},
		},
		'XXX' => {
			display_name => {
				'one' => q(\(unknown currency\)),
				'other' => q(\(unknown currency\)),
			},
		},
	} },
);


has 'calendar_months' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
			'chinese' => {
				'format' => {
					abbreviated => {
						nonleap => [
							'1',
							'2',
							'3',
							'4',
							'5',
							'6',
							'7',
							'8',
							'9',
							'10',
							'11',
							'12'
						],
						leap => [
							
						],
					},
					wide => {
						nonleap => [
							'1',
							'2',
							'3',
							'4',
							'5',
							'6',
							'7',
							'8',
							'9',
							'10',
							'11',
							'12'
						],
						leap => [
							
						],
					},
				},
				'stand-alone' => {
					abbreviated => {
						nonleap => [
							'1',
							'2',
							'3',
							'4',
							'5',
							'6',
							'7',
							'8',
							'9',
							'10',
							'11',
							'12'
						],
						leap => [
							
						],
					},
					wide => {
						nonleap => [
							'1',
							'2',
							'3',
							'4',
							'5',
							'6',
							'7',
							'8',
							'9',
							'10',
							'11',
							'12'
						],
						leap => [
							
						],
					},
				},
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
			if ($_ eq 'chinese') {
				return 'noon' if $time == 1200;
				return 'pm' if $time > 1200
					&& $time < 2400;
				return 'am' if $time >= 000
					&& $time < 1200;
			last SWITCH;
			}
			if ($_ eq 'islamic') {
				return 'noon' if $time == 1200;
				return 'pm' if $time > 1200
					&& $time < 2400;
				return 'am' if $time >= 000
					&& $time < 1200;
			last SWITCH;
			}
			if ($_ eq 'japanese') {
				return 'noon' if $time == 1200;
				return 'pm' if $time > 1200
					&& $time < 2400;
				return 'am' if $time >= 000
					&& $time < 1200;
			last SWITCH;
			}
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
		'chinese' => {
		},
		'generic' => {
		},
		'gregorian' => {
		},
		'islamic' => {
		},
		'japanese' => {
			abbreviated => {
				'0' => 'Taika (645-650)',
				'1' => 'Hakuchi (650-671)',
				'2' => 'Hakuhō (672-686)',
				'3' => 'Shuchō (686-701)',
				'4' => 'Taihō (701-704)',
				'5' => 'Keiun (704-708)',
				'6' => 'Wadō (708-715)',
				'7' => 'Reiki (715-717)',
				'8' => 'Yōrō (717-724)',
				'9' => 'Jinki (724-729)',
				'10' => 'Tempyō (729-749)',
				'11' => 'Tempyō-kampō (749-749)',
				'12' => 'Tempyō-shōhō (749-757)',
				'13' => 'Tempyō-hōji (757-765)',
				'14' => 'Temphō-jingo (765-767)',
				'15' => 'Jingo-keiun (767-770)',
				'16' => 'Hōki (770-780)',
				'17' => 'Ten-ō (781-782)',
				'18' => 'Enryaku (782-806)',
				'19' => 'Daidō (806-810)',
				'20' => 'Kōnin (810-824)',
				'21' => 'Tenchō (824-834)',
				'22' => 'Jōwa (834-848)',
				'23' => 'Kajō (848-851)',
				'24' => 'Ninju (851-854)',
				'25' => 'Saiko (854-857)',
				'26' => 'Tennan (857-859)',
				'27' => 'Jōgan (859-877)',
				'28' => 'Genkei (877-885)',
				'29' => 'Ninna (885-889)',
				'30' => 'Kampyō (889-898)',
				'31' => 'Shōtai (898-901)',
				'32' => 'Engi (901-923)',
				'33' => 'Enchō (923-931)',
				'34' => 'Shōhei (931-938)',
				'35' => 'Tengyō (938-947)',
				'36' => 'Tenryaku (947-957)',
				'37' => 'Tentoku (957-961)',
				'38' => 'Ōwa (961-964)',
				'39' => 'Kōhō (964-968)',
				'40' => 'Anna (968-970)',
				'41' => 'Tenroku (970-973)',
				'42' => 'Ten-en (973-976)',
				'43' => 'Jōgen (976-978)',
				'44' => 'Tengen (978-983)',
				'45' => 'Eikan (983-985)',
				'46' => 'Kanna (985-987)',
				'47' => 'Ei-en (987-989)',
				'48' => 'Eiso (989-990)',
				'49' => 'Shōryaku (990-995)',
				'50' => 'Chōtoku (995-999)',
				'51' => 'Chōhō (999-1004)',
				'52' => 'Kankō (1004-1012)',
				'53' => 'Chōwa (1012-1017)',
				'54' => 'Kannin (1017-1021)',
				'55' => 'Jian (1021-1024)',
				'56' => 'Manju (1024-1028)',
				'57' => 'Chōgen (1028-1037)',
				'58' => 'Chōryaku (1037-1040)',
				'59' => 'Chōkyū (1040-1044)',
				'60' => 'Kantoku (1044-1046)',
				'61' => 'Eishō (1046-1053)',
				'62' => 'Tengi (1053-1058)',
				'63' => 'Kōhei (1058-1065)',
				'64' => 'Jiryaku (1065-1069)',
				'65' => 'Enkyū (1069-1074)',
				'66' => 'Shōho (1074-1077)',
				'67' => 'Shōryaku (1077-1081)',
				'68' => 'Eiho (1081-1084)',
				'69' => 'Ōtoku (1084-1087)',
				'70' => 'Kanji (1087-1094)',
				'71' => 'Kaho (1094-1096)',
				'72' => 'Eichō (1096-1097)',
				'73' => 'Shōtoku (1097-1099)',
				'74' => 'Kōwa (1099-1104)',
				'75' => 'Chōji (1104-1106)',
				'76' => 'Kashō (1106-1108)',
				'77' => 'Tennin (1108-1110)',
				'78' => 'Ten-ei (1110-1113)',
				'79' => 'Eikyū (1113-1118)',
				'80' => 'Gen-ei (1118-1120)',
				'81' => 'Hoan (1120-1124)',
				'82' => 'Tenji (1124-1126)',
				'83' => 'Daiji (1126-1131)',
				'84' => 'Tenshō (1131-1132)',
				'85' => 'Chōshō (1132-1135)',
				'86' => 'Hoen (1135-1141)',
				'87' => 'Eiji (1141-1142)',
				'88' => 'Kōji (1142-1144)',
				'89' => 'Tenyō (1144-1145)',
				'90' => 'Kyūan (1145-1151)',
				'91' => 'Ninpei (1151-1154)',
				'92' => 'Kyūju (1154-1156)',
				'93' => 'Hogen (1156-1159)',
				'94' => 'Heiji (1159-1160)',
				'95' => 'Eiryaku (1160-1161)',
				'96' => 'Ōho (1161-1163)',
				'97' => 'Chōkan (1163-1165)',
				'98' => 'Eiman (1165-1166)',
				'99' => 'Nin-an (1166-1169)',
				'100' => 'Kaō (1169-1171)',
				'101' => 'Shōan (1171-1175)',
				'102' => 'Angen (1175-1177)',
				'103' => 'Jishō (1177-1181)',
				'104' => 'Yōwa (1181-1182)',
				'105' => 'Juei (1182-1184)',
				'106' => 'Genryuku (1184-1185)',
				'107' => 'Bunji (1185-1190)',
				'108' => 'Kenkyū (1190-1199)',
				'109' => 'Shōji (1199-1201)',
				'110' => 'Kennin (1201-1204)',
				'111' => 'Genkyū (1204-1206)',
				'112' => 'Ken-ei (1206-1207)',
				'113' => 'Shōgen (1207-1211)',
				'114' => 'Kenryaku (1211-1213)',
				'115' => 'Kenpō (1213-1219)',
				'116' => 'Shōkyū (1219-1222)',
				'117' => 'Jōō (1222-1224)',
				'118' => 'Gennin (1224-1225)',
				'119' => 'Karoku (1225-1227)',
				'120' => 'Antei (1227-1229)',
				'121' => 'Kanki (1229-1232)',
				'122' => 'Jōei (1232-1233)',
				'123' => 'Tempuku (1233-1234)',
				'124' => 'Bunryaku (1234-1235)',
				'125' => 'Katei (1235-1238)',
				'126' => 'Ryakunin (1238-1239)',
				'127' => 'En-ō (1239-1240)',
				'128' => 'Ninji (1240-1243)',
				'129' => 'Kangen (1243-1247)',
				'130' => 'Hōji (1247-1249)',
				'131' => 'Kenchō (1249-1256)',
				'132' => 'Kōgen (1256-1257)',
				'133' => 'Shōka (1257-1259)',
				'134' => 'Shōgen (1259-1260)',
				'135' => 'Bun-ō (1260-1261)',
				'136' => 'Kōchō (1261-1264)',
				'137' => 'Bun-ei (1264-1275)',
				'138' => 'Kenji (1275-1278)',
				'139' => 'Kōan (1278-1288)',
				'140' => 'Shōō (1288-1293)',
				'141' => 'Einin (1293-1299)',
				'142' => 'Shōan (1299-1302)',
				'143' => 'Kengen (1302-1303)',
				'144' => 'Kagen (1303-1306)',
				'145' => 'Tokuji (1306-1308)',
				'146' => 'Enkei (1308-1311)',
				'147' => 'Ōchō (1311-1312)',
				'148' => 'Shōwa (1312-1317)',
				'149' => 'Bunpō (1317-1319)',
				'150' => 'Genō (1319-1321)',
				'151' => 'Genkyō (1321-1324)',
				'152' => 'Shōchū (1324-1326)',
				'153' => 'Kareki (1326-1329)',
				'154' => 'Gentoku (1329-1331)',
				'155' => 'Genkō (1331-1334)',
				'156' => 'Kemmu (1334-1336)',
				'157' => 'Engen (1336-1340)',
				'158' => 'Kōkoku (1340-1346)',
				'159' => 'Shōhei (1346-1370)',
				'160' => 'Kentoku (1370-1372)',
				'161' => 'Bunchū (1372-1375)',
				'162' => 'Tenju (1375-1379)',
				'163' => 'Kōryaku (1379-1381)',
				'164' => 'Kōwa (1381-1384)',
				'165' => 'Genchū (1384-1392)',
				'166' => 'Meitoku (1384-1387)',
				'167' => 'Kakei (1387-1389)',
				'168' => 'Kōō (1389-1390)',
				'169' => 'Meitoku (1390-1394)',
				'170' => 'Ōei (1394-1428)',
				'171' => 'Shōchō (1428-1429)',
				'172' => 'Eikyō (1429-1441)',
				'173' => 'Kakitsu (1441-1444)',
				'174' => 'Bun-an (1444-1449)',
				'175' => 'Hōtoku (1449-1452)',
				'176' => 'Kyōtoku (1452-1455)',
				'177' => 'Kōshō (1455-1457)',
				'178' => 'Chōroku (1457-1460)',
				'179' => 'Kanshō (1460-1466)',
				'180' => 'Bunshō (1466-1467)',
				'181' => 'Ōnin (1467-1469)',
				'182' => 'Bunmei (1469-1487)',
				'183' => 'Chōkyō (1487-1489)',
				'184' => 'Entoku (1489-1492)',
				'185' => 'Meiō (1492-1501)',
				'186' => 'Bunki (1501-1504)',
				'187' => 'Eishō (1504-1521)',
				'188' => 'Taiei (1521-1528)',
				'189' => 'Kyōroku (1528-1532)',
				'190' => 'Tenmon (1532-1555)',
				'191' => 'Kōji (1555-1558)',
				'192' => 'Eiroku (1558-1570)',
				'193' => 'Genki (1570-1573)',
				'194' => 'Tenshō (1573-1592)',
				'195' => 'Bunroku (1592-1596)',
				'196' => 'Keichō (1596-1615)',
				'197' => 'Genwa (1615-1624)',
				'198' => 'Kan-ei (1624-1644)',
				'199' => 'Shōho (1644-1648)',
				'200' => 'Keian (1648-1652)',
				'201' => 'Shōō (1652-1655)',
				'202' => 'Meiryaku (1655-1658)',
				'203' => 'Manji (1658-1661)',
				'204' => 'Kanbun (1661-1673)',
				'205' => 'Enpō (1673-1681)',
				'206' => 'Tenwa (1681-1684)',
				'207' => 'Jōkyō (1684-1688)',
				'208' => 'Genroku (1688-1704)',
				'209' => 'Hōei (1704-1711)',
				'210' => 'Shōtoku (1711-1716)',
				'211' => 'Kyōhō (1716-1736)',
				'212' => 'Genbun (1736-1741)',
				'213' => 'Kanpō (1741-1744)',
				'214' => 'Enkyō (1744-1748)',
				'215' => 'Kan-en (1748-1751)',
				'216' => 'Hōryaku (1751-1764)',
				'217' => 'Meiwa (1764-1772)',
				'218' => 'An-ei (1772-1781)',
				'219' => 'Tenmei (1781-1789)',
				'220' => 'Kansei (1789-1801)',
				'221' => 'Kyōwa (1801-1804)',
				'222' => 'Bunka (1804-1818)',
				'223' => 'Bunsei (1818-1830)',
				'224' => 'Tenpō (1830-1844)',
				'225' => 'Kōka (1844-1848)',
				'226' => 'Kaei (1848-1854)',
				'227' => 'Ansei (1854-1860)',
				'228' => 'Man-en (1860-1861)',
				'229' => 'Bunkyū (1861-1864)',
				'230' => 'Genji (1864-1865)',
				'231' => 'Keiō (1865-1868)',
				'232' => 'Meiji',
				'233' => 'Taishō',
				'234' => 'Shōwa',
				'235' => 'Heisei'
			},
		},
	} },
);

has 'date_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'chinese' => {
			'short' => q{d/MM/yy},
		},
		'generic' => {
			'short' => q{d/MM/y GGGGG},
		},
		'gregorian' => {
			'short' => q{d/MM/y},
		},
		'islamic' => {
			'short' => q{d/MM/y GGGGG},
		},
		'japanese' => {
		},
	} },
);

has 'time_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'chinese' => {
			'full' => q{h:mm:ss a zzzz},
			'long' => q{h:mm:ss a z},
			'medium' => q{h:mm:ss a},
			'short' => q{h:mm a},
		},
		'generic' => {
			'full' => q{h:mm:ss a zzzz},
			'long' => q{h:mm:ss a z},
			'medium' => q{h:mm:ss a},
			'short' => q{h:mm a},
		},
		'gregorian' => {
			'full' => q{h:mm:ss a zzzz},
			'long' => q{h:mm:ss a z},
			'medium' => q{h:mm:ss a},
			'short' => q{h:mm a},
		},
		'islamic' => {
		},
		'japanese' => {
		},
	} },
);

has 'datetime_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'chinese' => {
		},
		'generic' => {
		},
		'gregorian' => {
			'full' => q{{1} {0}},
			'long' => q{{1} {0}},
			'medium' => q{{1} {0}},
			'short' => q{{1} {0}},
		},
		'islamic' => {
		},
		'japanese' => {
		},
	} },
);

has 'datetime_formats_available_formats' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default		=> sub { {
		'generic' => {
			yMEd => q{E, d/M/y},
			yMd => q{d/M/y},
		},
		'gregorian' => {
			Ed => q{E d},
			M => q{LL},
			yMEd => q{E, d/M/y},
			yMd => q{d/M/y},
		},
		'japanese' => {
			yMEd => q{E, d/M/y},
			yMd => q{d/M/y},
		},
		'islamic' => {
			yMEd => q{E, d/M/y},
			yMd => q{d/M/y},
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
	} },
);

has 'time_zone_names' => (
	is			=> 'ro',
	isa			=> 'HashRef',
	init_arg	=> undef,
	default	=> sub { {
		'Arabian' => {
			long => {
				'daylight' => q(Arabian Summer Time),
				'generic' => q(Arabian Time),
				'standard' => q(Arabian Standard Time),
			},
		},
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
		'China' => {
			long => {
				'daylight' => q(China Summer Time),
				'generic' => q(China Time),
				'standard' => q(China Standard Time),
			},
		},
		'Europe/Dublin' => {
			long => {
				'daylight' => q(Irish Summer Time),
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
		'Iran' => {
			long => {
				'daylight' => q(Iran Summer Time),
				'generic' => q(Iran Time),
				'standard' => q(Iran Standard Time),
			},
		},
		'Israel' => {
			long => {
				'daylight' => q(Israel Summer Time),
				'generic' => q(Israel Time),
				'standard' => q(Israel Standard Time),
			},
		},
		'Japan' => {
			long => {
				'daylight' => q(Japan Summer Time),
				'generic' => q(Japan Time),
				'standard' => q(Japan Standard Time),
			},
		},
		'Korea' => {
			long => {
				'daylight' => q(Korean Summer Time),
				'generic' => q(Korean Time),
				'standard' => q(Korean Standard Time),
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
		'Taipei' => {
			long => {
				'daylight' => q(Taipei Summer Time),
				'generic' => q(Taipei Time),
				'standard' => q(Taipei Standard Time),
			},
		},
	 } }
);
no Moose;
__PACKAGE__->meta->make_immutable;

1;

# vim: tabstop=4
