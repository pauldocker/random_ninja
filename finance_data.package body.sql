create or replace package body finance_data

as

begin

  dbms_application_info.set_client_info('finance_data');
  dbms_session.set_identifier('finance_data');

  -- Init Objects
  currencies := currency_list(null);
  currencies.extend(252);
  creditcards := creditcard_list(null);
  creditcards.extend(17);
  account_types := account_type_list(null);
  finance_data.account_types.extend(3);
  exchanges := exchange_list(null);
  exchanges.extend(33);

  -- Init external data.
  init_data := finance_data_account.npg_version;
  init_data := finance_data_exchange.npg_version;

  -- Credit cards
  creditcards(1).cc_name := 'American Express';
  creditcards(1).cc_shortname := 'amex';
  creditcards(1).cc_prefix := 34;
  creditcards(1).cc_length := 15;
  creditcards(2).cc_name := 'Bankcard';
  creditcards(2).cc_shortname := 'bankcard';
  creditcards(2).cc_prefix := 5610;
  creditcards(2).cc_length := 16;
  creditcards(3).cc_name := 'China UnionPay';
  creditcards(3).cc_shortname := 'chinaunion';
  creditcards(3).cc_prefix := 62;
  creditcards(3).cc_length := 16;
  creditcards(4).cc_name := 'Diners Club Carte Blanche';
  creditcards(4).cc_shortname := 'dccarte';
  creditcards(4).cc_prefix := 300;
  creditcards(4).cc_length := 14;
  creditcards(5).cc_name := 'Diners Club enRoute';
  creditcards(5).cc_shortname := 'dcenroute';
  creditcards(5).cc_prefix := 2014;
  creditcards(5).cc_length := 15;
  creditcards(6).cc_name := 'Diners Club International';
  creditcards(6).cc_shortname := 'dcintl';
  creditcards(6).cc_prefix := 36;
  creditcards(6).cc_length := 14;
  creditcards(7).cc_name := 'Diners Club United States and Canada';
  creditcards(7).cc_shortname := 'dcusc';
  creditcards(7).cc_prefix := 54;
  creditcards(7).cc_length := 16;
  creditcards(8).cc_name := 'Discover Card';
  creditcards(8).cc_shortname := 'discover';
  creditcards(8).cc_prefix := 6011;
  creditcards(8).cc_length := 16;
  creditcards(9).cc_name := 'InstaPayment';
  creditcards(9).cc_shortname := 'instapay';
  creditcards(9).cc_prefix := 637;
  creditcards(9).cc_length := 16;
  creditcards(10).cc_name := 'JCB';
  creditcards(10).cc_shortname := 'jcb';
  creditcards(10).cc_prefix := 3528;
  creditcards(10).cc_length := 16;
  creditcards(11).cc_name := 'Laser';
  creditcards(11).cc_shortname := 'laser';
  creditcards(11).cc_prefix := 6304;
  creditcards(11).cc_length := 16;
  creditcards(12).cc_name := 'Maestro';
  creditcards(12).cc_shortname := 'maestro';
  creditcards(12).cc_prefix := 5018;
  creditcards(12).cc_length := 16;
  creditcards(13).cc_name := 'Mastercard';
  creditcards(13).cc_shortname := 'mc';
  creditcards(13).cc_prefix := 51;
  creditcards(13).cc_length := 16;
  creditcards(14).cc_name := 'Solo';
  creditcards(14).cc_shortname := 'solo';
  creditcards(14).cc_prefix := 6334;
  creditcards(14).cc_length := 16;
  creditcards(15).cc_name := 'Switch';
  creditcards(15).cc_shortname := 'switch';
  creditcards(15).cc_prefix := 4903;
  creditcards(15).cc_length := 16;
  creditcards(16).cc_name := 'Visa';
  creditcards(16).cc_shortname := 'visa';
  creditcards(16).cc_prefix := 4;
  creditcards(16).cc_length := 16;
  creditcards(17).cc_name := 'Visa Electron';
  creditcards(17).cc_shortname := 'electron';
  creditcards(17).cc_prefix := 4026;
  creditcards(17).cc_length := 16;

  -- Add currency long name data
  currencies(1).currency_name := 'Afghan afghani';
  currencies(2).currency_name := 'European euro';
  currencies(3).currency_name := 'European euro';
  currencies(4).currency_name := 'Albanian lek';
  currencies(5).currency_name := 'Algerian dinar';
  currencies(6).currency_name := 'United States dollar';
  currencies(7).currency_name := 'European euro';
  currencies(8).currency_name := 'Angolan kwanza';
  currencies(9).currency_name := 'East Caribbean dollar';
  currencies(10).currency_name := 'East Caribbean dollar';
  currencies(11).currency_name := 'Argentine peso';
  currencies(12).currency_name := 'Armenian dram';
  currencies(13).currency_name := 'Aruban florin';
  currencies(14).currency_name := 'Saint Helena pound';
  currencies(15).currency_name := 'Australian dollar';
  currencies(16).currency_name := 'European euro';
  currencies(17).currency_name := 'Azerbaijani manat';
  currencies(18).currency_name := 'Bahamian dollar';
  currencies(19).currency_name := 'Bahraini dinar';
  currencies(20).currency_name := 'Bangladeshi taka';
  currencies(21).currency_name := 'Barbadian dollar';
  currencies(22).currency_name := 'Belarusian ruble';
  currencies(23).currency_name := 'European euro';
  currencies(24).currency_name := 'Belize dollar';
  currencies(25).currency_name := 'West African CFA franc';
  currencies(26).currency_name := 'Bermudian dollar';
  currencies(27).currency_name := 'Bhutanese ngultrum';
  currencies(28).currency_name := 'Bolivian boliviano';
  currencies(29).currency_name := 'United States dollar';
  currencies(30).currency_name := 'Bosnia and Herzegovina convertible mark';
  currencies(31).currency_name := 'Botswana pula';
  currencies(32).currency_name := 'Brazilian real';
  currencies(33).currency_name := 'United States dollar';
  currencies(34).currency_name := 'United States dollar';
  currencies(35).currency_name := 'Brunei dollar';
  currencies(36).currency_name := 'Bulgarian lev';
  currencies(37).currency_name := 'West African CFA franc';
  currencies(38).currency_name := 'Burundi franc';
  currencies(39).currency_name := 'Cape Verdean escudo';
  currencies(40).currency_name := 'Cambodian riel';
  currencies(41).currency_name := 'Central African CFA franc';
  currencies(42).currency_name := 'Canadian dollar';
  currencies(43).currency_name := 'United States dollar';
  currencies(44).currency_name := 'Cayman Islands dollar';
  currencies(45).currency_name := 'Central African CFA franc';
  currencies(46).currency_name := 'Central African CFA franc';
  currencies(47).currency_name := 'Chilean peso';
  currencies(48).currency_name := 'Chinese Yuan Renminbi';
  currencies(49).currency_name := 'Australian dollar';
  currencies(50).currency_name := 'Australian dollar';
  currencies(51).currency_name := 'Colombian peso';
  currencies(52).currency_name := 'Comorian franc';
  currencies(53).currency_name := 'Congolese franc';
  currencies(54).currency_name := 'Central African CFA franc';
  currencies(55).currency_name := 'Cook Islands dollar';
  currencies(56).currency_name := 'Costa Rican colon';
  currencies(57).currency_name := 'West African CFA franc';
  currencies(58).currency_name := 'Croatian kuna';
  currencies(59).currency_name := 'Cuban peso';
  currencies(60).currency_name := 'Netherlands Antillean guilder';
  currencies(61).currency_name := 'European euro';
  currencies(62).currency_name := 'Czech koruna';
  currencies(63).currency_name := 'Danish krone';
  currencies(64).currency_name := 'Djiboutian franc';
  currencies(65).currency_name := 'East Caribbean dollar';
  currencies(66).currency_name := 'Dominican peso';
  currencies(67).currency_name := 'United States dollar';
  currencies(68).currency_name := 'Egyptian pound';
  currencies(69).currency_name := 'United States dollar';
  currencies(70).currency_name := 'Central African CFA franc';
  currencies(71).currency_name := 'Eritrean nakfa';
  currencies(72).currency_name := 'European euro';
  currencies(73).currency_name := 'Ethiopian birr';
  currencies(74).currency_name := 'Falkland Islands pound';
  currencies(75).currency_name := 'Faroese krona';
  currencies(76).currency_name := 'Fijian dollar';
  currencies(77).currency_name := 'European euro';
  currencies(78).currency_name := 'European euro';
  currencies(79).currency_name := 'European euro';
  currencies(80).currency_name := 'CFP franc';
  currencies(81).currency_name := 'Central African CFA franc';
  currencies(82).currency_name := 'Gambian dalasi';
  currencies(83).currency_name := 'Georgian lari';
  currencies(84).currency_name := 'European euro';
  currencies(85).currency_name := 'Ghanaian cedi';
  currencies(86).currency_name := 'Gibraltar pound';
  currencies(87).currency_name := 'European euro';
  currencies(88).currency_name := 'Danish krone';
  currencies(89).currency_name := 'East Caribbean dollar';
  currencies(90).currency_name := 'European euro';
  currencies(91).currency_name := 'United States dollar';
  currencies(92).currency_name := 'Guatemalan quetzal';
  currencies(93).currency_name := 'Guernsey Pound';
  currencies(94).currency_name := 'Guinean franc';
  currencies(95).currency_name := 'West African CFA franc';
  currencies(96).currency_name := 'Guyanese dollar';
  currencies(97).currency_name := 'Haitian gourde';
  currencies(98).currency_name := 'Honduran lempira';
  currencies(99).currency_name := 'Hong Kong dollar';
  currencies(100).currency_name := 'Hungarian forint';
  currencies(101).currency_name := 'Icelandic krona';
  currencies(102).currency_name := 'Indian rupee';
  currencies(103).currency_name := 'Indonesian rupiah';
  currencies(104).currency_name := 'SDR (Special Drawing Right)';
  currencies(105).currency_name := 'Iranian rial';
  currencies(106).currency_name := 'Iraqi dinar';
  currencies(107).currency_name := 'European euro';
  currencies(108).currency_name := 'Manx pound';
  currencies(109).currency_name := 'Israeli new shekel';
  currencies(110).currency_name := 'European euro';
  currencies(111).currency_name := 'Jamaican dollar';
  currencies(112).currency_name := 'Japanese yen';
  currencies(113).currency_name := 'Jersey pound';
  currencies(114).currency_name := 'Jordanian dinar';
  currencies(115).currency_name := 'Kazakhstani tenge';
  currencies(116).currency_name := 'Kenyan shilling';
  currencies(117).currency_name := 'Australian dollar';
  currencies(118).currency_name := 'European euro';
  currencies(119).currency_name := 'Kuwaiti dinar';
  currencies(120).currency_name := 'Kyrgyzstani som';
  currencies(121).currency_name := 'Lao kip';
  currencies(122).currency_name := 'European euro';
  currencies(123).currency_name := 'Lebanese pound';
  currencies(124).currency_name := 'Lesotho loti';
  currencies(125).currency_name := 'Liberian dollar';
  currencies(126).currency_name := 'Libyan dinar';
  currencies(127).currency_name := 'Swiss franc';
  currencies(128).currency_name := 'European euro';
  currencies(129).currency_name := 'European euro';
  currencies(130).currency_name := 'Macanese pataca';
  currencies(131).currency_name := 'Macedonian denar';
  currencies(132).currency_name := 'Malagasy ariary';
  currencies(133).currency_name := 'Malawian kwacha';
  currencies(134).currency_name := 'Malaysian ringgit';
  currencies(135).currency_name := 'Maldivian rufiyaa';
  currencies(136).currency_name := 'West African CFA franc';
  currencies(137).currency_name := 'European euro';
  currencies(138).currency_name := 'United States dollar';
  currencies(139).currency_name := 'European euro';
  currencies(140).currency_name := 'Mauritanian ouguiya';
  currencies(141).currency_name := 'Mauritian rupee';
  currencies(142).currency_name := 'European euro';
  currencies(143).currency_name := 'Mexican peso';
  currencies(144).currency_name := 'United States dollar';
  currencies(145).currency_name := 'Moldovan leu';
  currencies(146).currency_name := 'European euro';
  currencies(147).currency_name := 'Mongolian tugrik';
  currencies(148).currency_name := 'European euro';
  currencies(149).currency_name := 'East Caribbean dollar';
  currencies(150).currency_name := 'Moroccan dirham';
  currencies(151).currency_name := 'Mozambican metical';
  currencies(152).currency_name := 'Myanmar kyat';
  currencies(153).currency_name := 'Namibian dollar';
  currencies(154).currency_name := 'Australian dollar';
  currencies(155).currency_name := 'Nepalese rupee';
  currencies(156).currency_name := 'European euro';
  currencies(157).currency_name := 'CFP franc';
  currencies(158).currency_name := 'New Zealand dollar';
  currencies(159).currency_name := 'Nicaraguan cordoba';
  currencies(160).currency_name := 'West African CFA franc';
  currencies(161).currency_name := 'Nigerian naira';
  currencies(162).currency_name := 'New Zealand dollar';
  currencies(163).currency_name := 'Australian dollar';
  currencies(164).currency_name := 'United States dollar';
  currencies(165).currency_name := 'North Korean won';
  currencies(166).currency_name := 'Norwegian krone';
  currencies(167).currency_name := 'Omani rial';
  currencies(168).currency_name := 'Pakistani rupee';
  currencies(169).currency_name := 'United States dollar';
  currencies(170).currency_name := 'Israeli new shekel';
  currencies(171).currency_name := 'United States dollar';
  currencies(172).currency_name := 'Papua New Guinean kina';
  currencies(173).currency_name := 'Paraguayan guarani';
  currencies(174).currency_name := 'Peruvian sol';
  currencies(175).currency_name := 'Philippine peso';
  currencies(176).currency_name := 'New Zealand dollar';
  currencies(177).currency_name := 'Polish zloty';
  currencies(178).currency_name := 'European euro';
  currencies(179).currency_name := 'United States dollar';
  currencies(180).currency_name := 'Qatari riyal';
  currencies(181).currency_name := 'European euro';
  currencies(182).currency_name := 'Romanian leu';
  currencies(183).currency_name := 'Russian ruble';
  currencies(184).currency_name := 'Rwandan franc';
  currencies(185).currency_name := 'United States dollar';
  currencies(186).currency_name := 'European euro';
  currencies(187).currency_name := 'Saint Helena pound';
  currencies(188).currency_name := 'East Caribbean dollar';
  currencies(189).currency_name := 'East Caribbean dollar';
  currencies(190).currency_name := 'European euro';
  currencies(191).currency_name := 'European euro';
  currencies(192).currency_name := 'East Caribbean dollar';
  currencies(193).currency_name := 'Samoan tala';
  currencies(194).currency_name := 'European euro';
  currencies(195).currency_name := 'Sao Tome and Principe dobra';
  currencies(196).currency_name := 'Saudi Arabian riyal';
  currencies(197).currency_name := 'West African CFA franc';
  currencies(198).currency_name := 'Serbian dinar';
  currencies(199).currency_name := 'Seychellois rupee';
  currencies(200).currency_name := 'Sierra Leonean leone';
  currencies(201).currency_name := 'Singapore dollar';
  currencies(202).currency_name := 'United States dollar';
  currencies(203).currency_name := 'Netherlands Antillean guilder';
  currencies(204).currency_name := 'European euro';
  currencies(205).currency_name := 'European euro';
  currencies(206).currency_name := 'Solomon Islands dollar';
  currencies(207).currency_name := 'Somali shilling';
  currencies(208).currency_name := 'South African rand';
  currencies(209).currency_name := 'Pound sterling';
  currencies(210).currency_name := 'South Korean won';
  currencies(211).currency_name := 'South Sudanese pound';
  currencies(212).currency_name := 'European euro';
  currencies(213).currency_name := 'Sri Lankan rupee';
  currencies(214).currency_name := 'Sudanese pound';
  currencies(215).currency_name := 'Surinamese dollar';
  currencies(216).currency_name := 'Norwegian krone';
  currencies(217).currency_name := 'Swazi lilangeni';
  currencies(218).currency_name := 'Swedish krona';
  currencies(219).currency_name := 'Swiss franc';
  currencies(220).currency_name := 'Syrian pound';
  currencies(221).currency_name := 'New Taiwan dollar';
  currencies(222).currency_name := 'Tajikistani somoni';
  currencies(223).currency_name := 'Tanzanian shilling';
  currencies(224).currency_name := 'Thai baht';
  currencies(225).currency_name := 'United States dollar';
  currencies(226).currency_name := 'West African CFA franc';
  currencies(227).currency_name := 'New Zealand dollar';
  currencies(228).currency_name := 'Tongan pa’anga';
  currencies(229).currency_name := 'Trinidad and Tobago dollar';
  currencies(230).currency_name := 'Pound sterling';
  currencies(231).currency_name := 'Tunisian dinar';
  currencies(232).currency_name := 'Turkish lira';
  currencies(233).currency_name := 'Turkmen manat';
  currencies(234).currency_name := 'United States dollar';
  currencies(235).currency_name := 'Australian dollar';
  currencies(236).currency_name := 'Ugandan shilling';
  currencies(237).currency_name := 'Ukrainian hryvnia';
  currencies(238).currency_name := 'UAE dirham';
  currencies(239).currency_name := 'Pound sterling';
  currencies(240).currency_name := 'United States dollar';
  currencies(241).currency_name := 'Uruguayan peso';
  currencies(242).currency_name := 'United States dollar';
  currencies(243).currency_name := 'Uzbekistani som';
  currencies(244).currency_name := 'Vanuatu vatu';
  currencies(245).currency_name := 'European euro';
  currencies(246).currency_name := 'Venezuelan bolivar';
  currencies(247).currency_name := 'Vietnamese dong';
  currencies(248).currency_name := 'United States dollar';
  currencies(249).currency_name := 'CFP franc';
  currencies(250).currency_name := 'Yemeni rial';
  currencies(251).currency_name := 'Zambian kwacha';
  currencies(252).currency_name := 'United States dollar';

  -- Add currency ISO form.
  currencies(1).iso_currency := 'AFN';
  currencies(2).iso_currency := 'EUR';
  currencies(3).iso_currency := 'EUR';
  currencies(4).iso_currency := 'ALL';
  currencies(5).iso_currency := 'DZD';
  currencies(6).iso_currency := 'USD';
  currencies(7).iso_currency := 'EUR';
  currencies(8).iso_currency := 'AOA';
  currencies(9).iso_currency := 'XCD';
  currencies(10).iso_currency := 'XCD';
  currencies(11).iso_currency := 'ARS';
  currencies(12).iso_currency := 'AMD';
  currencies(13).iso_currency := 'AWG';
  currencies(14).iso_currency := 'SHP';
  currencies(15).iso_currency := 'AUD';
  currencies(16).iso_currency := 'EUR';
  currencies(17).iso_currency := 'AZN';
  currencies(18).iso_currency := 'BSD';
  currencies(19).iso_currency := 'BHD';
  currencies(20).iso_currency := 'BDT';
  currencies(21).iso_currency := 'BBD';
  currencies(22).iso_currency := 'BYN';
  currencies(23).iso_currency := 'EUR';
  currencies(24).iso_currency := 'BZD';
  currencies(25).iso_currency := 'XOF';
  currencies(26).iso_currency := 'BMD';
  currencies(27).iso_currency := 'BTN';
  currencies(28).iso_currency := 'BOB';
  currencies(29).iso_currency := 'USD';
  currencies(30).iso_currency := 'BAM';
  currencies(31).iso_currency := 'BWP';
  currencies(32).iso_currency := 'BRL';
  currencies(33).iso_currency := 'USD';
  currencies(34).iso_currency := 'USD';
  currencies(35).iso_currency := 'BND';
  currencies(36).iso_currency := 'BGN';
  currencies(37).iso_currency := 'XOF';
  currencies(38).iso_currency := 'BIF';
  currencies(39).iso_currency := 'CVE';
  currencies(40).iso_currency := 'KHR';
  currencies(41).iso_currency := 'XAF';
  currencies(42).iso_currency := 'CAD';
  currencies(43).iso_currency := 'USD';
  currencies(44).iso_currency := 'KYD';
  currencies(45).iso_currency := 'XAF';
  currencies(46).iso_currency := 'XAF';
  currencies(47).iso_currency := 'CLP';
  currencies(48).iso_currency := 'CNY';
  currencies(49).iso_currency := 'AUD';
  currencies(50).iso_currency := 'AUD';
  currencies(51).iso_currency := 'COP';
  currencies(52).iso_currency := 'KMF';
  currencies(53).iso_currency := 'CDF';
  currencies(54).iso_currency := 'XAF';
  currencies(55).iso_currency := 'none';
  currencies(56).iso_currency := 'CRC';
  currencies(57).iso_currency := 'XOF';
  currencies(58).iso_currency := 'HRK';
  currencies(59).iso_currency := 'CUP';
  currencies(60).iso_currency := 'ANG';
  currencies(61).iso_currency := 'EUR';
  currencies(62).iso_currency := 'CZK';
  currencies(63).iso_currency := 'DKK';
  currencies(64).iso_currency := 'DJF';
  currencies(65).iso_currency := 'XCD';
  currencies(66).iso_currency := 'DOP';
  currencies(67).iso_currency := 'USD';
  currencies(68).iso_currency := 'EGP';
  currencies(69).iso_currency := 'USD';
  currencies(70).iso_currency := 'XAF';
  currencies(71).iso_currency := 'ERN';
  currencies(72).iso_currency := 'EUR';
  currencies(73).iso_currency := 'ETB';
  currencies(74).iso_currency := 'FKP';
  currencies(75).iso_currency := 'none';
  currencies(76).iso_currency := 'FJD';
  currencies(77).iso_currency := 'EUR';
  currencies(78).iso_currency := 'EUR';
  currencies(79).iso_currency := 'EUR';
  currencies(80).iso_currency := 'XPF';
  currencies(81).iso_currency := 'XAF';
  currencies(82).iso_currency := 'GMD';
  currencies(83).iso_currency := 'GEL';
  currencies(84).iso_currency := 'EUR';
  currencies(85).iso_currency := 'GHS';
  currencies(86).iso_currency := 'GIP';
  currencies(87).iso_currency := 'EUR';
  currencies(88).iso_currency := 'DKK';
  currencies(89).iso_currency := 'XCD';
  currencies(90).iso_currency := 'EUR';
  currencies(91).iso_currency := 'USD';
  currencies(92).iso_currency := 'GTQ';
  currencies(93).iso_currency := 'GGP';
  currencies(94).iso_currency := 'GNF';
  currencies(95).iso_currency := 'XOF';
  currencies(96).iso_currency := 'GYD';
  currencies(97).iso_currency := 'HTG';
  currencies(98).iso_currency := 'HNL';
  currencies(99).iso_currency := 'HKD';
  currencies(100).iso_currency := 'HUF';
  currencies(101).iso_currency := 'ISK';
  currencies(102).iso_currency := 'INR';
  currencies(103).iso_currency := 'IDR';
  currencies(104).iso_currency := 'XDR';
  currencies(105).iso_currency := 'IRR';
  currencies(106).iso_currency := 'IQD';
  currencies(107).iso_currency := 'EUR';
  currencies(108).iso_currency := 'IMP';
  currencies(109).iso_currency := 'ILS';
  currencies(110).iso_currency := 'EUR';
  currencies(111).iso_currency := 'JMD';
  currencies(112).iso_currency := 'JPY';
  currencies(113).iso_currency := 'JEP';
  currencies(114).iso_currency := 'JOD';
  currencies(115).iso_currency := 'KZT';
  currencies(116).iso_currency := 'KES';
  currencies(117).iso_currency := 'AUD';
  currencies(118).iso_currency := 'EUR';
  currencies(119).iso_currency := 'KWD';
  currencies(120).iso_currency := 'KGS';
  currencies(121).iso_currency := 'LAK';
  currencies(122).iso_currency := 'EUR';
  currencies(123).iso_currency := 'LBP';
  currencies(124).iso_currency := 'LSL';
  currencies(125).iso_currency := 'LRD';
  currencies(126).iso_currency := 'LYD';
  currencies(127).iso_currency := 'CHF';
  currencies(128).iso_currency := 'EUR';
  currencies(129).iso_currency := 'EUR';
  currencies(130).iso_currency := 'MOP';
  currencies(131).iso_currency := 'MKD';
  currencies(132).iso_currency := 'MGA';
  currencies(133).iso_currency := 'MWK';
  currencies(134).iso_currency := 'MYR';
  currencies(135).iso_currency := 'MVR';
  currencies(136).iso_currency := 'XOF';
  currencies(137).iso_currency := 'EUR';
  currencies(138).iso_currency := 'USD';
  currencies(139).iso_currency := 'EUR';
  currencies(140).iso_currency := 'MRO';
  currencies(141).iso_currency := 'MUR';
  currencies(142).iso_currency := 'EUR';
  currencies(143).iso_currency := 'MXN';
  currencies(144).iso_currency := 'USD';
  currencies(145).iso_currency := 'MDL';
  currencies(146).iso_currency := 'EUR';
  currencies(147).iso_currency := 'MNT';
  currencies(148).iso_currency := 'EUR';
  currencies(149).iso_currency := 'XCD';
  currencies(150).iso_currency := 'MAD';
  currencies(151).iso_currency := 'MZN';
  currencies(152).iso_currency := 'MMK';
  currencies(153).iso_currency := 'NAD';
  currencies(154).iso_currency := 'AUD';
  currencies(155).iso_currency := 'NPR';
  currencies(156).iso_currency := 'EUR';
  currencies(157).iso_currency := 'XPF';
  currencies(158).iso_currency := 'NZD';
  currencies(159).iso_currency := 'NIO';
  currencies(160).iso_currency := 'XOF';
  currencies(161).iso_currency := 'NGN';
  currencies(162).iso_currency := 'NZD';
  currencies(163).iso_currency := 'AUD';
  currencies(164).iso_currency := 'USD';
  currencies(165).iso_currency := 'KPW';
  currencies(166).iso_currency := 'NOK';
  currencies(167).iso_currency := 'OMR';
  currencies(168).iso_currency := 'PKR';
  currencies(169).iso_currency := 'USD';
  currencies(170).iso_currency := 'ILS';
  currencies(171).iso_currency := 'USD';
  currencies(172).iso_currency := 'PGK';
  currencies(173).iso_currency := 'PYG';
  currencies(174).iso_currency := 'PEN';
  currencies(175).iso_currency := 'PHP';
  currencies(176).iso_currency := 'NZD';
  currencies(177).iso_currency := 'PLN';
  currencies(178).iso_currency := 'EUR';
  currencies(179).iso_currency := 'USD';
  currencies(180).iso_currency := 'QAR';
  currencies(181).iso_currency := 'EUR';
  currencies(182).iso_currency := 'RON';
  currencies(183).iso_currency := 'RUB';
  currencies(184).iso_currency := 'RWF';
  currencies(185).iso_currency := 'USD';
  currencies(186).iso_currency := 'EUR';
  currencies(187).iso_currency := 'SHP';
  currencies(188).iso_currency := 'XCD';
  currencies(189).iso_currency := 'XCD';
  currencies(190).iso_currency := 'EUR';
  currencies(191).iso_currency := 'EUR';
  currencies(192).iso_currency := 'XCD';
  currencies(193).iso_currency := 'WST';
  currencies(194).iso_currency := 'EUR';
  currencies(195).iso_currency := 'STD';
  currencies(196).iso_currency := 'SAR';
  currencies(197).iso_currency := 'XOF';
  currencies(198).iso_currency := 'RSD';
  currencies(199).iso_currency := 'SCR';
  currencies(200).iso_currency := 'SLL';
  currencies(201).iso_currency := 'SGD';
  currencies(202).iso_currency := 'USD';
  currencies(203).iso_currency := 'ANG';
  currencies(204).iso_currency := 'EUR';
  currencies(205).iso_currency := 'EUR';
  currencies(206).iso_currency := 'SBD';
  currencies(207).iso_currency := 'SOS';
  currencies(208).iso_currency := 'ZAR';
  currencies(209).iso_currency := 'GBP';
  currencies(210).iso_currency := 'KRW';
  currencies(211).iso_currency := 'SSP';
  currencies(212).iso_currency := 'EUR';
  currencies(213).iso_currency := 'LKR';
  currencies(214).iso_currency := 'SDG';
  currencies(215).iso_currency := 'SRD';
  currencies(216).iso_currency := 'NOK';
  currencies(217).iso_currency := 'SZL';
  currencies(218).iso_currency := 'SEK';
  currencies(219).iso_currency := 'CHF';
  currencies(220).iso_currency := 'SYP';
  currencies(221).iso_currency := 'TWD';
  currencies(222).iso_currency := 'TJS';
  currencies(223).iso_currency := 'TZS';
  currencies(224).iso_currency := 'THB';
  currencies(225).iso_currency := 'USD';
  currencies(226).iso_currency := 'XOF';
  currencies(227).iso_currency := 'NZD';
  currencies(228).iso_currency := 'TOP';
  currencies(229).iso_currency := 'TTD';
  currencies(230).iso_currency := 'GBP';
  currencies(231).iso_currency := 'TND';
  currencies(232).iso_currency := 'TRY';
  currencies(233).iso_currency := 'TMT';
  currencies(234).iso_currency := 'USD';
  currencies(235).iso_currency := 'AUD';
  currencies(236).iso_currency := 'UGX';
  currencies(237).iso_currency := 'UAH';
  currencies(238).iso_currency := 'AED';
  currencies(239).iso_currency := 'GBP';
  currencies(240).iso_currency := 'USD';
  currencies(241).iso_currency := 'UYU';
  currencies(242).iso_currency := 'USD';
  currencies(243).iso_currency := 'UZS';
  currencies(244).iso_currency := 'VUV';
  currencies(245).iso_currency := 'EUR';
  currencies(246).iso_currency := 'VEF';
  currencies(247).iso_currency := 'VND';
  currencies(248).iso_currency := 'USD';
  currencies(249).iso_currency := 'XPF';
  currencies(250).iso_currency := 'YER';
  currencies(251).iso_currency := 'ZMW';
  currencies(252).iso_currency := 'USD';

end finance_data;
/
