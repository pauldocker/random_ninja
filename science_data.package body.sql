create or replace package body science_data

as

begin

  g_natural_elements := natural_element_tab();
  g_natural_elements.extend(118);
  g_natural_elements(1).full_name := 'Hydrogen';
  g_natural_elements(1).short_name := 'H';
  g_natural_elements(2).full_name := 'Helium';
  g_natural_elements(2).short_name := 'He';
  g_natural_elements(3).full_name := 'Lithium';
  g_natural_elements(3).short_name := 'Li';
  g_natural_elements(4).full_name := 'Berillium';
  g_natural_elements(4).short_name := 'Be';
  g_natural_elements(5).full_name := 'Boron';
  g_natural_elements(5).short_name := 'B';
  g_natural_elements(6).full_name := 'Carbon';
  g_natural_elements(6).short_name := 'C';
  g_natural_elements(7).full_name := 'Nitrogen';
  g_natural_elements(7).short_name := 'N';
  g_natural_elements(8).full_name := 'Oxygen';
  g_natural_elements(8).short_name := 'O';
  g_natural_elements(9).full_name := 'Fluorine';
  g_natural_elements(9).short_name := 'F';
  g_natural_elements(10).full_name := 'Neon';
  g_natural_elements(10).short_name := 'Ne';
  g_natural_elements(11).full_name := 'Sodium';
  g_natural_elements(11).short_name := 'Na';
  g_natural_elements(12).full_name := 'Magnesium';
  g_natural_elements(12).short_name := 'Mg';
  g_natural_elements(13).full_name := 'Aluminium';
  g_natural_elements(13).short_name := 'Al';
  g_natural_elements(14).full_name := 'Silicon';
  g_natural_elements(14).short_name := 'Si';
  g_natural_elements(15).full_name := 'Phosphorus';
  g_natural_elements(15).short_name := 'P';
  g_natural_elements(16).full_name := 'Sulfur';
  g_natural_elements(16).short_name := 'S';
  g_natural_elements(17).full_name := 'Chlorine';
  g_natural_elements(17).short_name := 'Cl';
  g_natural_elements(18).full_name := 'Argon';
  g_natural_elements(18).short_name := 'Ar';
  g_natural_elements(19).full_name := 'Potassium';
  g_natural_elements(19).short_name := 'K';
  g_natural_elements(20).full_name := 'Calcium';
  g_natural_elements(20).short_name := 'Ca';
  g_natural_elements(21).full_name := 'Scandium';
  g_natural_elements(21).short_name := 'Sc';
  g_natural_elements(22).full_name := 'Titanium';
  g_natural_elements(22).short_name := 'Ti';
  g_natural_elements(23).full_name := 'Vanadium';
  g_natural_elements(23).short_name := 'V';
  g_natural_elements(24).full_name := 'Chromium';
  g_natural_elements(24).short_name := 'Cr';
  g_natural_elements(25).full_name := 'Manganese';
  g_natural_elements(25).short_name := 'Mn';
  g_natural_elements(26).full_name := 'Iron';
  g_natural_elements(26).short_name := 'Fe';
  g_natural_elements(27).full_name := 'Cobalt';
  g_natural_elements(27).short_name := 'Co';
  g_natural_elements(28).full_name := 'Nickel';
  g_natural_elements(28).short_name := 'Ni';
  g_natural_elements(29).full_name := 'Copper';
  g_natural_elements(29).short_name := 'Cu';
  g_natural_elements(30).full_name := 'Zinc';
  g_natural_elements(30).short_name := 'Zn';
  g_natural_elements(31).full_name := 'Gallium';
  g_natural_elements(31).short_name := 'Ga';
  g_natural_elements(32).full_name := 'Germanium';
  g_natural_elements(32).short_name := 'Ge';
  g_natural_elements(33).full_name := 'Arsenic';
  g_natural_elements(33).short_name := 'As';
  g_natural_elements(34).full_name := 'Selenium';
  g_natural_elements(34).short_name := 'Se';
  g_natural_elements(35).full_name := 'Bromine';
  g_natural_elements(35).short_name := 'Br';
  g_natural_elements(36).full_name := 'Krypton';
  g_natural_elements(36).short_name := 'Kr';
  g_natural_elements(37).full_name := 'Rubydum';
  g_natural_elements(37).short_name := 'Rb';
  g_natural_elements(38).full_name := 'Strontium';
  g_natural_elements(38).short_name := 'Sr';
  g_natural_elements(39).full_name := 'Yttrium';
  g_natural_elements(39).short_name := 'Y';
  g_natural_elements(40).full_name := 'Zirconium';
  g_natural_elements(40).short_name := 'Zr';
  g_natural_elements(41).full_name := 'Niobium';
  g_natural_elements(41).short_name := 'Nb';
  g_natural_elements(42).full_name := 'Molybdenom';
  g_natural_elements(42).short_name := 'Mo';
  g_natural_elements(43).full_name := 'Technetium';
  g_natural_elements(43).short_name := 'Tc';
  g_natural_elements(44).full_name := 'Ruthenium';
  g_natural_elements(44).short_name := 'Ru';
  g_natural_elements(45).full_name := 'Rhodium';
  g_natural_elements(45).short_name := 'Rh';
  g_natural_elements(46).full_name := 'Palladium';
  g_natural_elements(46).short_name := 'Pd';
  g_natural_elements(47).full_name := 'Silver';
  g_natural_elements(47).short_name := 'Ag';
  g_natural_elements(48).full_name := 'Cadmium';
  g_natural_elements(48).short_name := 'Cd';
  g_natural_elements(49).full_name := 'Indium';
  g_natural_elements(49).short_name := 'In';
  g_natural_elements(50).full_name := 'Tin';
  g_natural_elements(50).short_name := 'Sn';
  g_natural_elements(51).full_name := 'Antimony';
  g_natural_elements(51).short_name := 'Sb';
  g_natural_elements(52).full_name := 'Tellurium';
  g_natural_elements(52).short_name := 'Te';
  g_natural_elements(53).full_name := 'Iodine';
  g_natural_elements(53).short_name := 'I';
  g_natural_elements(54).full_name := 'Xenon';
  g_natural_elements(54).short_name := 'Xe';
  g_natural_elements(55).full_name := 'Caesium';
  g_natural_elements(55).short_name := 'Cs';
  g_natural_elements(56).full_name := 'Barium';
  g_natural_elements(56).short_name := 'Ba';
  g_natural_elements(57).full_name := 'Lanthanum';
  g_natural_elements(57).short_name := 'La';
  g_natural_elements(58).full_name := 'Cerium';
  g_natural_elements(58).short_name := 'Ce';
  g_natural_elements(59).full_name := 'Praseodymium';
  g_natural_elements(59).short_name := 'Pr';
  g_natural_elements(60).full_name := 'Neodymium';
  g_natural_elements(60).short_name := 'Nd';
  g_natural_elements(61).full_name := 'Promethium';
  g_natural_elements(61).short_name := 'Pm';
  g_natural_elements(62).full_name := 'Samarium';
  g_natural_elements(62).short_name := 'Sm';
  g_natural_elements(63).full_name := 'Europium';
  g_natural_elements(63).short_name := 'Eu';
  g_natural_elements(64).full_name := 'Gadolinium';
  g_natural_elements(64).short_name := 'Gd';
  g_natural_elements(65).full_name := 'Terbium';
  g_natural_elements(65).short_name := 'Tb';
  g_natural_elements(66).full_name := 'Dysprosium';
  g_natural_elements(66).short_name := 'Dy';
  g_natural_elements(67).full_name := 'Holmium';
  g_natural_elements(67).short_name := 'Ho';
  g_natural_elements(68).full_name := 'Erbium';
  g_natural_elements(68).short_name := 'Er';
  g_natural_elements(69).full_name := 'Thulium';
  g_natural_elements(69).short_name := 'Tm';
  g_natural_elements(70).full_name := 'Ytterbium';
  g_natural_elements(70).short_name := 'Yb';
  g_natural_elements(71).full_name := 'Lutetium';
  g_natural_elements(71).short_name := 'Lu';
  g_natural_elements(72).full_name := 'Hafnium';
  g_natural_elements(72).short_name := 'Hf';
  g_natural_elements(73).full_name := 'Tantalum';
  g_natural_elements(73).short_name := 'Ta';
  g_natural_elements(74).full_name := 'Tungsten';
  g_natural_elements(74).short_name := 'W';
  g_natural_elements(75).full_name := 'Rhenium';
  g_natural_elements(75).short_name := 'Re';
  g_natural_elements(76).full_name := 'Osmium';
  g_natural_elements(76).short_name := 'Os';
  g_natural_elements(77).full_name := 'Iridium';
  g_natural_elements(77).short_name := 'Ir';
  g_natural_elements(78).full_name := 'Platinum';
  g_natural_elements(78).short_name := 'Pt';
  g_natural_elements(79).full_name := 'Gold';
  g_natural_elements(79).short_name := 'Au';
  g_natural_elements(80).full_name := 'Mercury';
  g_natural_elements(80).short_name := 'Hg';
  g_natural_elements(81).full_name := 'Thalium';
  g_natural_elements(81).short_name := 'Tl';
  g_natural_elements(82).full_name := 'Lead';
  g_natural_elements(82).short_name := 'Pb';
  g_natural_elements(83).full_name := 'Bismuth';
  g_natural_elements(83).short_name := 'Bi';
  g_natural_elements(84).full_name := 'Polonium';
  g_natural_elements(84).short_name := 'Po';
  g_natural_elements(85).full_name := 'Astatine';
  g_natural_elements(85).short_name := 'At';
  g_natural_elements(86).full_name := 'Radon';
  g_natural_elements(86).short_name := 'Rn';
  g_natural_elements(87).full_name := 'Francium';
  g_natural_elements(87).short_name := 'Fr';
  g_natural_elements(88).full_name := 'Radium';
  g_natural_elements(88).short_name := 'Ra';
  g_natural_elements(89).full_name := 'Actinium';
  g_natural_elements(89).short_name := 'Ac';
  g_natural_elements(90).full_name := 'Thorium';
  g_natural_elements(90).short_name := 'Th';
  g_natural_elements(91).full_name := 'Protactinium';
  g_natural_elements(91).short_name := 'Pa';
  g_natural_elements(92).full_name := 'Uranium';
  g_natural_elements(92).short_name := 'U';
  g_natural_elements(93).full_name := 'Neptunium';
  g_natural_elements(93).short_name := 'Np';
  g_natural_elements(94).full_name := 'Plutonium';
  g_natural_elements(94).short_name := 'Pu';
  g_natural_elements(95).full_name := 'Americium';
  g_natural_elements(95).short_name := 'Am';
  g_natural_elements(96).full_name := 'Curium';
  g_natural_elements(96).short_name := 'Cm';
  g_natural_elements(97).full_name := 'Berkelium';
  g_natural_elements(97).short_name := 'Bk';
  g_natural_elements(98).full_name := 'Californium';
  g_natural_elements(98).short_name := 'Cf';
  g_natural_elements(99).full_name := 'Einsteinium';
  g_natural_elements(99).short_name := 'Es';
  g_natural_elements(100).full_name := 'Fermium';
  g_natural_elements(100).short_name := 'Fm';
  g_natural_elements(101).full_name := 'Mendelevium';
  g_natural_elements(101).short_name := 'Md';
  g_natural_elements(102).full_name := 'Nobelium';
  g_natural_elements(102).short_name := 'No';
  g_natural_elements(103).full_name := 'Lawrencium';
  g_natural_elements(103).short_name := 'Lr';
  g_natural_elements(104).full_name := 'Rutherfordium';
  g_natural_elements(104).short_name := 'Rf';
  g_natural_elements(105).full_name := 'Dubnium';
  g_natural_elements(105).short_name := 'Db';
  g_natural_elements(106).full_name := 'Seaborgium';
  g_natural_elements(106).short_name := 'Sg';
  g_natural_elements(107).full_name := 'Bohrium';
  g_natural_elements(107).short_name := 'Bh';
  g_natural_elements(108).full_name := 'Hassium';
  g_natural_elements(108).short_name := 'Hs';
  g_natural_elements(109).full_name := 'Meitnerium';
  g_natural_elements(109).short_name := 'Mt';
  g_natural_elements(110).full_name := 'Darmstadtium';
  g_natural_elements(110).short_name := 'Ds';
  g_natural_elements(111).full_name := 'Roentgenium';
  g_natural_elements(111).short_name := 'Rg';
  g_natural_elements(112).full_name := 'Copernicium';
  g_natural_elements(112).short_name := 'Cn';
  g_natural_elements(113).full_name := 'Nihonium';
  g_natural_elements(113).short_name := 'Nh';
  g_natural_elements(114).full_name := 'Flerovium';
  g_natural_elements(114).short_name := 'Fl';
  g_natural_elements(115).full_name := 'Moscovium';
  g_natural_elements(115).short_name := 'Mc';
  g_natural_elements(116).full_name := 'Livermorium';
  g_natural_elements(116).short_name := 'Lv';
  g_natural_elements(117).full_name := 'Tennessine';
  g_natural_elements(117).short_name := 'Ts';
  g_natural_elements(118).full_name := 'Oganesson';
  g_natural_elements(118).short_name := 'Og';

  dbms_application_info.set_client_info('science_data');
  dbms_session.set_identifier('science_data');

end science_data;
/
