create or replace package body location_data

as

begin

  dbms_application_info.set_client_info('location_data');
  dbms_session.set_identifier('location_data');

  -- Init objects
  countries := country_list(null);
  countries.extend(253);

  -- Long names of countries
  countries(1).country_name := 'Afghanistan';
  countries(2).country_name := 'Åland Islands';
  countries(3).country_name := 'Albania';
  countries(4).country_name := 'Algeria';
  countries(5).country_name := 'American Samoa';
  countries(6).country_name := 'Andorra';
  countries(7).country_name := 'Angola';
  countries(8).country_name := 'Anguilla';
  countries(9).country_name := 'Antarctica';
  countries(10).country_name := 'Antigua and Barbuda';
  countries(11).country_name := 'Argentina';
  countries(12).country_name := 'Armenia';
  countries(13).country_name := 'Aruba';
  countries(14).country_name := 'Ascension Island';
  countries(15).country_name := 'Australia';
  countries(16).country_name := 'Austria';
  countries(17).country_name := 'Azerbaijan';
  countries(18).country_name := 'Bahamas';
  countries(19).country_name := 'Bahrain';
  countries(20).country_name := 'Bangladesh';
  countries(21).country_name := 'Barbados';
  countries(22).country_name := 'Belarus';
  countries(23).country_name := 'Belgium';
  countries(24).country_name := 'Belize';
  countries(25).country_name := 'Benin';
  countries(26).country_name := 'Bermuda';
  countries(27).country_name := 'Bhutan';
  countries(28).country_name := 'Bolivia';
  countries(29).country_name := 'Bosnia and Herzegovina';
  countries(30).country_name := 'Botswana';
  countries(31).country_name := 'Brazil';
  countries(32).country_name := 'British Indian Ocean Territory';
  countries(33).country_name := 'British Virgin Islands';
  countries(34).country_name := 'Brunei';
  countries(35).country_name := 'Bulgaria';
  countries(36).country_name := 'Burkina Faso';
  countries(37).country_name := 'Burundi';
  countries(38).country_name := 'Cambodia';
  countries(39).country_name := 'Cameroon';
  countries(40).country_name := 'Canada';
  countries(41).country_name := 'Canary Islands';
  countries(42).country_name := 'Cape Verde';
  countries(43).country_name := 'Caribbean Netherlands';
  countries(44).country_name := 'Cayman Islands';
  countries(45).country_name := 'Central African Republic';
  countries(46).country_name := 'Ceuta and Melilla';
  countries(47).country_name := 'Chad';
  countries(48).country_name := 'Chile';
  countries(49).country_name := 'China';
  countries(50).country_name := 'Christmas Island';
  countries(51).country_name := 'Cocos (Keeling) Islands';
  countries(52).country_name := 'Colombia';
  countries(53).country_name := 'Comoros';
  countries(54).country_name := 'Congo - Brazzaville';
  countries(55).country_name := 'Congo - Kinshasa';
  countries(56).country_name := 'Cook Islands';
  countries(57).country_name := 'Costa Rica';
  countries(58).country_name := 'Côte d''Ivoire';
  countries(59).country_name := 'Croatia';
  countries(60).country_name := 'Cuba';
  countries(61).country_name := 'Curaçao';
  countries(62).country_name := 'Cyprus';
  countries(63).country_name := 'Czech Republic';
  countries(64).country_name := 'Denmark';
  countries(65).country_name := 'Diego Garcia';
  countries(66).country_name := 'Djibouti';
  countries(67).country_name := 'Dominica';
  countries(68).country_name := 'Dominican Republic';
  countries(69).country_name := 'Ecuador';
  countries(70).country_name := 'Egypt';
  countries(71).country_name := 'El Salvador';
  countries(72).country_name := 'Equatorial Guinea';
  countries(73).country_name := 'Eritrea';
  countries(74).country_name := 'Estonia';
  countries(75).country_name := 'Ethiopia';
  countries(76).country_name := 'Falkland Islands';
  countries(77).country_name := 'Faroe Islands';
  countries(78).country_name := 'Fiji';
  countries(79).country_name := 'Finland';
  countries(80).country_name := 'France';
  countries(81).country_name := 'French Guiana';
  countries(82).country_name := 'French Polynesia';
  countries(83).country_name := 'French Southern Territories';
  countries(84).country_name := 'Gabon';
  countries(85).country_name := 'Gambia';
  countries(86).country_name := 'Georgia';
  countries(87).country_name := 'Germany';
  countries(88).country_name := 'Ghana';
  countries(89).country_name := 'Gibraltar';
  countries(90).country_name := 'Greece';
  countries(91).country_name := 'Greenland';
  countries(92).country_name := 'Grenada';
  countries(93).country_name := 'Guadeloupe';
  countries(94).country_name := 'Guam';
  countries(95).country_name := 'Guatemala';
  countries(96).country_name := 'Guernsey';
  countries(97).country_name := 'Guinea';
  countries(98).country_name := 'Guinea-Bissau';
  countries(99).country_name := 'Guyana';
  countries(100).country_name := 'Haiti';
  countries(101).country_name := 'Honduras';
  countries(102).country_name := 'Hong Kong SAR China';
  countries(103).country_name := 'Hungary';
  countries(104).country_name := 'Iceland';
  countries(105).country_name := 'India';
  countries(106).country_name := 'Indonesia';
  countries(107).country_name := 'Iran';
  countries(108).country_name := 'Iraq';
  countries(109).country_name := 'Ireland';
  countries(110).country_name := 'Isle of Man';
  countries(111).country_name := 'Israel';
  countries(112).country_name := 'Italy';
  countries(113).country_name := 'Jamaica';
  countries(114).country_name := 'Japan';
  countries(115).country_name := 'Jersey';
  countries(116).country_name := 'Jordan';
  countries(117).country_name := 'Kazakhstan';
  countries(118).country_name := 'Kenya';
  countries(119).country_name := 'Kiribati';
  countries(120).country_name := 'Kosovo';
  countries(121).country_name := 'Kuwait';
  countries(122).country_name := 'Kyrgyzstan';
  countries(123).country_name := 'Laos';
  countries(124).country_name := 'Latvia';
  countries(125).country_name := 'Lebanon';
  countries(126).country_name := 'Lesotho';
  countries(127).country_name := 'Liberia';
  countries(128).country_name := 'Libya';
  countries(129).country_name := 'Liechtenstein';
  countries(130).country_name := 'Lithuania';
  countries(131).country_name := 'Luxembourg';
  countries(132).country_name := 'Macau SAR China';
  countries(133).country_name := 'Macedonia';
  countries(134).country_name := 'Madagascar';
  countries(135).country_name := 'Malawi';
  countries(136).country_name := 'Malaysia';
  countries(137).country_name := 'Maldives';
  countries(138).country_name := 'Mali';
  countries(139).country_name := 'Malta';
  countries(140).country_name := 'Marshall Islands';
  countries(141).country_name := 'Martinique';
  countries(142).country_name := 'Mauritania';
  countries(143).country_name := 'Mauritius';
  countries(144).country_name := 'Mayotte';
  countries(145).country_name := 'Mexico';
  countries(146).country_name := 'Micronesia';
  countries(147).country_name := 'Moldova';
  countries(148).country_name := 'Monaco';
  countries(149).country_name := 'Mongolia';
  countries(150).country_name := 'Montenegro';
  countries(151).country_name := 'Montserrat';
  countries(152).country_name := 'Morocco';
  countries(153).country_name := 'Mozambique';
  countries(154).country_name := 'Myanmar (Burma)';
  countries(155).country_name := 'Namibia';
  countries(156).country_name := 'Nauru';
  countries(157).country_name := 'Nepal';
  countries(158).country_name := 'Netherlands';
  countries(159).country_name := 'New Caledonia';
  countries(160).country_name := 'New Zealand';
  countries(161).country_name := 'Nicaragua';
  countries(162).country_name := 'Niger';
  countries(163).country_name := 'Nigeria';
  countries(164).country_name := 'Niue';
  countries(165).country_name := 'Norfolk Island';
  countries(166).country_name := 'North Korea';
  countries(167).country_name := 'Northern Mariana Islands';
  countries(168).country_name := 'Norway';
  countries(169).country_name := 'Oman';
  countries(170).country_name := 'Pakistan';
  countries(171).country_name := 'Palau';
  countries(172).country_name := 'Palestinian Territories';
  countries(173).country_name := 'Panama';
  countries(174).country_name := 'Papua New Guinea';
  countries(175).country_name := 'Paraguay';
  countries(176).country_name := 'Peru';
  countries(177).country_name := 'Philippines';
  countries(178).country_name := 'Pitcairn Islands';
  countries(179).country_name := 'Poland';
  countries(180).country_name := 'Portugal';
  countries(181).country_name := 'Puerto Rico';
  countries(182).country_name := 'Qatar';
  countries(183).country_name := 'Réunion';
  countries(184).country_name := 'Romania';
  countries(185).country_name := 'Russia';
  countries(186).country_name := 'Rwanda';
  countries(187).country_name := 'Samoa';
  countries(188).country_name := 'San Marino';
  countries(189).country_name := 'São Tomé and Príncipe';
  countries(190).country_name := 'Saudi Arabia';
  countries(191).country_name := 'Senegal';
  countries(192).country_name := 'Serbia';
  countries(193).country_name := 'Seychelles';
  countries(194).country_name := 'Sierra Leone';
  countries(195).country_name := 'Singapore';
  countries(196).country_name := 'Sint Maarten';
  countries(197).country_name := 'Slovakia';
  countries(198).country_name := 'Slovenia';
  countries(199).country_name := 'Solomon Islands';
  countries(200).country_name := 'Somalia';
  countries(201).country_name := 'South Africa';
  countries(202).country_name := 'South Georgia and South Sandwich Islands';
  countries(203).country_name := 'South Korea';
  countries(204).country_name := 'South Sudan';
  countries(205).country_name := 'Spain';
  countries(206).country_name := 'Sri Lanka';
  countries(207).country_name := 'St. Barthélemy';
  countries(208).country_name := 'St. Helena';
  countries(209).country_name := 'St. Kitts and Nevis';
  countries(210).country_name := 'St. Lucia';
  countries(211).country_name := 'St. Martin';
  countries(212).country_name := 'St. Pierre and Miquelon';
  countries(213).country_name := 'St. Vincent and Grenadines';
  countries(214).country_name := 'Sudan';
  countries(215).country_name := 'Suriname';
  countries(216).country_name := 'Svalbard and Jan Mayen';
  countries(217).country_name := 'Swaziland';
  countries(218).country_name := 'Sweden';
  countries(219).country_name := 'Switzerland';
  countries(220).country_name := 'Syria';
  countries(221).country_name := 'Taiwan';
  countries(222).country_name := 'Tajikistan';
  countries(223).country_name := 'Tanzania';
  countries(224).country_name := 'Thailand';
  countries(225).country_name := 'Timor-Leste';
  countries(226).country_name := 'Togo';
  countries(227).country_name := 'Tokelau';
  countries(228).country_name := 'Tonga';
  countries(229).country_name := 'Trinidad and Tobago';
  countries(230).country_name := 'Tristan da Cunha';
  countries(231).country_name := 'Tunisia';
  countries(232).country_name := 'Turkey';
  countries(233).country_name := 'Turkmenistan';
  countries(234).country_name := 'Turks and Caicos Islands';
  countries(235).country_name := 'Tuvalu';
  countries(236).country_name := 'U.S. Outlying Islands';
  countries(237).country_name := 'U.S. Virgin Islands';
  countries(238).country_name := 'Uganda';
  countries(239).country_name := 'Ukraine';
  countries(240).country_name := 'United Arab Emirates';
  countries(241).country_name := 'United Kingdom';
  countries(242).country_name := 'United States';
  countries(243).country_name := 'Uruguay';
  countries(244).country_name := 'Uzbekistan';
  countries(245).country_name := 'Vanuatu';
  countries(246).country_name := 'Vatican City';
  countries(247).country_name := 'Venezuela';
  countries(248).country_name := 'Vietnam';
  countries(249).country_name := 'Wallis and Futuna';
  countries(250).country_name := 'Western Sahara';
  countries(251).country_name := 'Yemen';
  countries(252).country_name := 'Zambia';
  countries(253).country_name := 'Zimbabwe';

  -- Short names of countries.
  countries(1).country_short := 'AF';
  countries(2).country_short := 'AX';
  countries(3).country_short := 'AL';
  countries(4).country_short := 'DZ';
  countries(5).country_short := 'AS';
  countries(6).country_short := 'AD';
  countries(7).country_short := 'AO';
  countries(8).country_short := 'AI';
  countries(9).country_short := 'AQ';
  countries(10).country_short := 'AG';
  countries(11).country_short := 'AR';
  countries(12).country_short := 'AM';
  countries(13).country_short := 'AW';
  countries(14).country_short := 'AC';
  countries(15).country_short := 'AU';
  countries(16).country_short := 'AT';
  countries(17).country_short := 'AZ';
  countries(18).country_short := 'BS';
  countries(19).country_short := 'BH';
  countries(20).country_short := 'BD';
  countries(21).country_short := 'BB';
  countries(22).country_short := 'BY';
  countries(23).country_short := 'BE';
  countries(24).country_short := 'BZ';
  countries(25).country_short := 'BJ';
  countries(26).country_short := 'BM';
  countries(27).country_short := 'BT';
  countries(28).country_short := 'BO';
  countries(29).country_short := 'BA';
  countries(30).country_short := 'BW';
  countries(31).country_short := 'BR';
  countries(32).country_short := 'IO';
  countries(33).country_short := 'VG';
  countries(34).country_short := 'BN';
  countries(35).country_short := 'BG';
  countries(36).country_short := 'BF';
  countries(37).country_short := 'BI';
  countries(38).country_short := 'KH';
  countries(39).country_short := 'CM';
  countries(40).country_short := 'CA';
  countries(41).country_short := 'IC';
  countries(42).country_short := 'CV';
  countries(43).country_short := 'BQ';
  countries(44).country_short := 'KY';
  countries(45).country_short := 'CF';
  countries(46).country_short := 'EA';
  countries(47).country_short := 'TD';
  countries(48).country_short := 'CL';
  countries(49).country_short := 'CN';
  countries(50).country_short := 'CX';
  countries(51).country_short := 'CC';
  countries(52).country_short := 'CO';
  countries(53).country_short := 'KM';
  countries(54).country_short := 'CG';
  countries(55).country_short := 'CD';
  countries(56).country_short := 'CK';
  countries(57).country_short := 'CR';
  countries(58).country_short := 'CI';
  countries(59).country_short := 'HR';
  countries(60).country_short := 'CU';
  countries(61).country_short := 'CW';
  countries(62).country_short := 'CY';
  countries(63).country_short := 'CZ';
  countries(64).country_short := 'DK';
  countries(65).country_short := 'DG';
  countries(66).country_short := 'DJ';
  countries(67).country_short := 'DM';
  countries(68).country_short := 'DO';
  countries(69).country_short := 'EC';
  countries(70).country_short := 'EG';
  countries(71).country_short := 'SV';
  countries(72).country_short := 'GQ';
  countries(73).country_short := 'ER';
  countries(74).country_short := 'EE';
  countries(75).country_short := 'ET';
  countries(76).country_short := 'FK';
  countries(77).country_short := 'FO';
  countries(78).country_short := 'FJ';
  countries(79).country_short := 'FI';
  countries(80).country_short := 'FR';
  countries(81).country_short := 'GF';
  countries(82).country_short := 'PF';
  countries(83).country_short := 'TF';
  countries(84).country_short := 'GA';
  countries(85).country_short := 'GM';
  countries(86).country_short := 'GE';
  countries(87).country_short := 'DE';
  countries(88).country_short := 'GH';
  countries(89).country_short := 'GI';
  countries(90).country_short := 'GR';
  countries(91).country_short := 'GL';
  countries(92).country_short := 'GD';
  countries(93).country_short := 'GP';
  countries(94).country_short := 'GU';
  countries(95).country_short := 'GT';
  countries(96).country_short := 'GG';
  countries(97).country_short := 'GN';
  countries(98).country_short := 'GW';
  countries(99).country_short := 'GY';
  countries(100).country_short := 'HT';
  countries(101).country_short := 'HN';
  countries(102).country_short := 'HK';
  countries(103).country_short := 'HU';
  countries(104).country_short := 'IS';
  countries(105).country_short := 'IN';
  countries(106).country_short := 'ID';
  countries(107).country_short := 'IR';
  countries(108).country_short := 'IQ';
  countries(109).country_short := 'IE';
  countries(110).country_short := 'IM';
  countries(111).country_short := 'IL';
  countries(112).country_short := 'IT';
  countries(113).country_short := 'JM';
  countries(114).country_short := 'JP';
  countries(115).country_short := 'JE';
  countries(116).country_short := 'JO';
  countries(117).country_short := 'KZ';
  countries(118).country_short := 'KE';
  countries(119).country_short := 'KI';
  countries(120).country_short := 'XK';
  countries(121).country_short := 'KW';
  countries(122).country_short := 'KG';
  countries(123).country_short := 'LA';
  countries(124).country_short := 'LV';
  countries(125).country_short := 'LB';
  countries(126).country_short := 'LS';
  countries(127).country_short := 'LR';
  countries(128).country_short := 'LY';
  countries(129).country_short := 'LI';
  countries(130).country_short := 'LT';
  countries(131).country_short := 'LU';
  countries(132).country_short := 'MO';
  countries(133).country_short := 'MK';
  countries(134).country_short := 'MG';
  countries(135).country_short := 'MW';
  countries(136).country_short := 'MY';
  countries(137).country_short := 'MV';
  countries(138).country_short := 'ML';
  countries(139).country_short := 'MT';
  countries(140).country_short := 'MH';
  countries(141).country_short := 'MQ';
  countries(142).country_short := 'MR';
  countries(143).country_short := 'MU';
  countries(144).country_short := 'YT';
  countries(145).country_short := 'MX';
  countries(146).country_short := 'FM';
  countries(147).country_short := 'MD';
  countries(148).country_short := 'MC';
  countries(149).country_short := 'MN';
  countries(150).country_short := 'ME';
  countries(151).country_short := 'MS';
  countries(152).country_short := 'MA';
  countries(153).country_short := 'MZ';
  countries(154).country_short := 'MM';
  countries(155).country_short := 'NA';
  countries(156).country_short := 'NR';
  countries(157).country_short := 'NP';
  countries(158).country_short := 'NL';
  countries(159).country_short := 'NC';
  countries(160).country_short := 'NZ';
  countries(161).country_short := 'NI';
  countries(162).country_short := 'NE';
  countries(163).country_short := 'NG';
  countries(164).country_short := 'NU';
  countries(165).country_short := 'NF';
  countries(166).country_short := 'KP';
  countries(167).country_short := 'MP';
  countries(168).country_short := 'NO';
  countries(169).country_short := 'OM';
  countries(170).country_short := 'PK';
  countries(171).country_short := 'PW';
  countries(172).country_short := 'PS';
  countries(173).country_short := 'PA';
  countries(174).country_short := 'PG';
  countries(175).country_short := 'PY';
  countries(176).country_short := 'PE';
  countries(177).country_short := 'PH';
  countries(178).country_short := 'PN';
  countries(179).country_short := 'PL';
  countries(180).country_short := 'PT';
  countries(181).country_short := 'PR';
  countries(182).country_short := 'QA';
  countries(183).country_short := 'RE';
  countries(184).country_short := 'RO';
  countries(185).country_short := 'RU';
  countries(186).country_short := 'RW';
  countries(187).country_short := 'WS';
  countries(188).country_short := 'SM';
  countries(189).country_short := 'ST';
  countries(190).country_short := 'SA';
  countries(191).country_short := 'SN';
  countries(192).country_short := 'RS';
  countries(193).country_short := 'SC';
  countries(194).country_short := 'SL';
  countries(195).country_short := 'SG';
  countries(196).country_short := 'SX';
  countries(197).country_short := 'SK';
  countries(198).country_short := 'SI';
  countries(199).country_short := 'SB';
  countries(200).country_short := 'SO';
  countries(201).country_short := 'ZA';
  countries(202).country_short := 'GS';
  countries(203).country_short := 'KR';
  countries(204).country_short := 'SS';
  countries(205).country_short := 'ES';
  countries(206).country_short := 'LK';
  countries(207).country_short := 'BL';
  countries(208).country_short := 'SH';
  countries(209).country_short := 'KN';
  countries(210).country_short := 'LC';
  countries(211).country_short := 'MF';
  countries(212).country_short := 'PM';
  countries(213).country_short := 'VC';
  countries(214).country_short := 'SD';
  countries(215).country_short := 'SR';
  countries(216).country_short := 'SJ';
  countries(217).country_short := 'SZ';
  countries(218).country_short := 'SE';
  countries(219).country_short := 'CH';
  countries(220).country_short := 'SY';
  countries(221).country_short := 'TW';
  countries(222).country_short := 'TJ';
  countries(223).country_short := 'TZ';
  countries(224).country_short := 'TH';
  countries(225).country_short := 'TL';
  countries(226).country_short := 'TG';
  countries(227).country_short := 'TK';
  countries(228).country_short := 'TO';
  countries(229).country_short := 'TT';
  countries(230).country_short := 'TA';
  countries(231).country_short := 'TN';
  countries(232).country_short := 'TR';
  countries(233).country_short := 'TM';
  countries(234).country_short := 'TC';
  countries(235).country_short := 'TV';
  countries(236).country_short := 'UM';
  countries(237).country_short := 'VI';
  countries(238).country_short := 'UG';
  countries(239).country_short := 'UA';
  countries(240).country_short := 'AE';
  countries(241).country_short := 'GB';
  countries(242).country_short := 'US';
  countries(243).country_short := 'UY';
  countries(244).country_short := 'UZ';
  countries(245).country_short := 'VU';
  countries(246).country_short := 'VA';
  countries(247).country_short := 'VE';
  countries(248).country_short := 'VN';
  countries(249).country_short := 'WF';
  countries(250).country_short := 'EH';
  countries(251).country_short := 'YE';
  countries(252).country_short := 'ZM';
  countries(253).country_short := 'ZW';

end location_data;
/
