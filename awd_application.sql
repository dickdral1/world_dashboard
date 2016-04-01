set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.1.00.06'
,p_default_workspace_id=>13486344067975495
,p_default_application_id=>132
,p_default_owner=>'ADC'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 132 - Apex Dashboard Competition
--
-- Application Export:
--   Application:     132
--   Name:            Apex Dashboard Competition
--   Date and Time:   18:25 Friday April 1, 2016
--   Exported By:     ADC
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.1.00.06
--   Instance ID:     102242702772370
--

-- Application Statistics:
--   Pages:                      1
--     Items:                    8
--     Computations:             3
--     Processes:                4
--     Regions:                 21
--     Buttons:                  2
--     Dynamic Actions:          4
--   Shared Components:
--     Logic:
--       Items:                  1
--       Processes:              2
--       Computations:           1
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              11
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Excluded

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,132)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ADC')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Apex Dashboard Competition')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'ADC132')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'512A880AEA95968A48AA443DB18A2C9971BA21B26EF38548A2EF75FC44DFE4B9'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(31730219425146524)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Apex World Dashboard'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'ADC'
,p_last_upd_yyyymmddhh24miss=>'20160331222953'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>8
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29922196020974445)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(29964551045975062)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29964724438975112)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29921932567974435)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29922058023974444)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(29922100673974445)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(32139176927876451)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fill collection'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_coll_name  varchar2(100)   := :APP_COLL_NAME;',
'  procedure a ( p_id in number, p_par_id in number, p_name in varchar2, p_name_german in varchar2 default null',
'              , p_code in varchar2 default null',
'              , p_map_name in varchar2 default null',
'              ) is',
'  begin',
'    apex_collection.add_member',
'        ( l_coll_name ',
'        , p_n001      => p_id',
'        , p_n002      => p_par_id',
'        , p_c001      => p_name ',
'        , p_c002      => p_name_german',
'        , p_c003      => p_code',
'        , p_c004      => nvl(p_map_name, p_name)',
'        );',
'  end;',
'  ',
'  procedure update_value( p_seq_id in number, p_attr_id in number, p_value in varchar2 ) is',
'  begin',
'    apex_collection.update_member_attribute',
'       ( p_collection_name    => :APP_COLL_NAME',
'       , p_seq                => p_seq_id',
'       , p_attr_number        => p_attr_id',
'       , p_attr_value         => p_value',
'       );',
'  end;',
'begin',
'  if not apex_collection.collection_exists(l_coll_name) then',
'    apex_collection.create_or_truncate_collection(l_coll_name);',
'a(1,0,''World'',''World'');',
'a(2,1,''Asia'',''Asia'');',
'a(3,1,''Europe'',''Europe'');',
'a(4,1,''Africa'',''Africa'');',
'a(5,1,''North America'',''North America'');',
'a(6,1,''South America'',''South America'');',
'a(7,1,''Australia'',''Australia'');',
'a(10,7,''Australia'',''Australia'');',
'a(11,7,''Micronesia'',''Micronesia'');',
'a(12,3,''Western Europe'',''Western Europe'');',
'a(13,3,''Eastern Europe'',''Eastern Europe'');',
'a(14,3,''Northern Europe'',''Northern Europe'');',
'a(15,3,''Southern Europe'',''Southern Europe'');',
'a(16,2,''Northern Asia'',''Northern Asia'');',
'a(17,2,''South East Asia'',''South East Asia'');',
'a(18,2,''South Asia'',''South Asia'');',
'a(19,2,''Middle East'',''Middle East'');',
'a(20,2,''Far East'',''Far East'');',
'a(21,5,''Middle America'',''Middle America'');',
'a(22,5,''Caribean'',''Caribean'');',
'a(23,5,''North America'',''North America'');',
'a(24,6,''South America'',''South America'');',
'a(25,4,''North Africa'',''North Africa'');',
'a(26,4,''Southern Africa'',''Southern Africa'');',
'a(27,4,''East Africa'',''East Africa'');',
'a(28,4,''West Africa'',''West Africa'');',
'a(29,4,''Central Africa'',''Central Africa'');',
'a(100,18,''Afghanistan'',''Afghanistan'',''AF'');',
'a(101,15,''Albania'',''Albanien'',''AL'');',
'a(102,25,''Algeria'',''Algerien'',''DZ'');',
'a(103,15,''Andorra'',''Andorra'',''AD'');',
'a(104,26,''Angola'',''Angola'',''AO'');',
'a(105,22,''Antigua and Barbuda'',''Antigua und Barbuda'',''AG'');',
'a(106,24,''Argentina'',''Argentinien'',''AR'');',
'a(107,16,''Armenia'',''Armenien'',''AM'');',
'a(108,16,''Azerbaijan'',''Aserbaidschan'',''AZ'');',
'a(109,10,''Australia'',''Australien'',''AU'');',
'a(110,22,''Bahamas, The'',''Bahamas'',''BS'');',
'a(111,19,''Bahrain'',''Bahrain'',''BH'');',
'a(112,18,''Bangladesh'',''Bangladesch'',''BD'');',
'a(113,22,''Barbados'',''Barbados'',''BB'');',
'a(114,13,''Belgium'',''Belgien'',''BE'');',
'a(115,21,''Belize'',''Belize'',''BZ'');',
'a(116,28,''Benin'',''Benin'',''BJ'');',
'a(117,18,''Bhutan'',''Bhutan'',''BT'');',
'a(118,24,''Bolivia'',''Bolivien, Plurinationaler Staat'',''BO'');',
'a(119,13,''Bosnia and Herzegovina'',''Bosnien und Herzegowina'',''BA'');',
'a(120,26,''Botswana'',''Botsuana'',''BW'');',
'a(121,24,''Brazil'',''Brasilien'',''BR'');',
'a(122,18,''Brunei'',''Brunei Darussalam'',''BN'');',
'a(123,13,''Bulgaria'',''Bulgarien'',''BG'');',
'a(124,28,''Burkina Faso'',''Burkina Faso'',''BF'');',
'a(125,29,''Burundi'',''Burundi'',''BI'');',
'a(126,28,''Cape Verde'',''Cabo Verde'',''CV'');',
'a(127,24,''Chile'',''Chile'',''CL'');',
'a(128,20,''China'',''China'',''CN'');',
'a(129,21,''Costa Rica'',''Costa Rica'',''CR'');',
'a(130,28,''Ivory Coast'',''Cote d''''Ivoire'',''CI'',''Ivory Coast'');',
'a(131,12,''Germany'',''Deutschland'',''DE'');',
'a(132,22,''Dominica'',''Dominica'',''DM'');',
'a(133,22,''Dominican Republic'',''Dominikanische Republik'',''DO'');',
'a(134,27,''Djibouti'',''Dschibuti'',''DJ'');',
'a(135,14,''Denmark'',''Dänemark'',''DK'');',
'a(136,24,''Ecuador'',''Ecuador'',''EC'');',
'a(137,21,''El Salvador'',''El Salvador'',''SV'');',
'a(138,27,''Eritrea'',''Eritrea'',''ER'');',
'a(139,14,''Estonia'',''Estland'',''EE'');',
'a(140,11,''Fiji'',''Fidschi'',''FJ'');',
'a(141,14,''Finland'',''Finnland'',''FI'');',
'a(142,12,''France'',''Frankreich'',''FR'');',
'a(143,28,''Gabon'',''Gabun'',''GA'');',
'a(144,28,''Gambia, The'',''Gambia'',''GM'');',
'a(145,13,''Georgia'',''Georgien'',''GE'');',
'a(146,28,''Ghana'',''Ghana'',''GH'');',
'a(147,23,''Greenland'',''Grenada'',''GL'');',
'a(148,15,''Greece'',''Griechenland'',''GR'');',
'a(149,21,''Guatemala'',''Guatemala'',''GT'');',
'a(150,24,''Guinea'',''Guinea'',''GN'');',
'a(151,28,''Guinea-Bissau'',''Guinea-Bissau'',''GN'');',
'a(152,24,''Guyana'',''Guyana'',''GY'');',
'a(153,22,''Haiti'',''Haiti'',''HT'');',
'a(154,20,''Honduras'',''Honduras'',''HN'');',
'a(155,18,''India'',''Indien'',''IN'');',
'a(156,18,''Indonesia'',''Indonesien'',''ID'');',
'a(157,19,''Iraq'',''Irak'',''IR'');',
'a(158,19,''Iran'',''Iran, Islamische Republik'',''IR'');',
'a(159,12,''Ireland'',''Irland'',''IE'');',
'a(160,12,''Iceland'',''Island'',''IS'');',
'a(161,19,''Israel'',''Israel'',''IL'');',
'a(162,15,''Italy'',''Italien'',''IT'');',
'a(163,22,''Jamaica'',''Jamaika'',''JM'');',
'a(164,20,''Japan'',''Japan'',''JP'');',
'a(165,19,''Yemen'',''Jemen'',''YE'');',
'a(166,19,''Jordan'',''Jordanien'',''JO'');',
'a(167,17,''Cambodia'',''Kambodscha'',''KH'');',
'a(168,28,''Cameroon'',''Kamerun'',''CM'');',
'a(169,23,''Canada'',''Kanada'',''CA'');',
'a(170,16,''Kazakhstan'',''Kasachstan'',''KZ'');',
'a(171,19,''Qatar'',''Katar'',''QA'');',
'a(172,27,''Kenya'',''Kenia'',''KE'');',
'a(173,16,''Kirgisistan'',''Kirgisistan'',''KG'',''Kyrgyzstan'');',
'a(174,11,''Kiribati'',''Kiribati'',''KI'');',
'a(175,24,''Colombia'',''Kolumbien'',''CO'');',
'a(176,26,''Comoros'',''Komoren'',''KM'');',
'a(177,29,''Congo, (Congo  Brazzaville)'',''Kongo, Demokratische Republik'',''CD'',''Zaire'');',
'a(178,29,''Congo, (Congo  Kinshasa)'',''Kongo, Republik'',''CG'',''Congo'');',
'a(179,20,''Korea, North'',''Korea, Demokratische Volksrepublik'',''KP'',''North Korea'');',
'a(180,20,''Korea, South'',''Korea, Republik'',''KR'',''South Korea'');',
'a(181,13,''Croatia'',''Kroatien'',''HR'');',
'a(182,22,''Cuba'',''Kuba'',''CU'');',
'a(183,19,''Kuwait'',''Kuwait'',''KW'');',
'a(184,17,''Laos'',''Laos, Demokratische Volksrepublik'',''LA'');',
'a(185,26,''Lesotho'',''Lesotho'',''LS'');',
'a(186,14,''Latvia'',''Lettland'',''LV'');',
'a(187,19,''Lebanon'',''Libanon'',''LB'');',
'a(188,28,''Liberia'',''Liberia'',''LR'');',
'a(189,25,''Libya'',''Libyen'',''LY'');',
'a(190,12,''Liechtenstein'',''Liechtenstein'',''LI'');',
'a(191,14,''Lithuania'',''Litauen'',''LT'');',
'a(192,12,''Luxembourg'',''Luxemburg'',''LU'');',
'a(193,27,''Madagascar'',''Madagaskar'',''MG'');',
'a(194,29,''Malawi'',''Malawi'',''MW'');',
'a(195,17,''Malaysia'',''Malaysia'',''MY'');',
'a(196,18,''Maldives'',''Malediven'',''MV'');',
'a(197,28,''Mali'',''Mali'',''ML'');',
'a(198,15,''Malta'',''Malta'',''MT'');',
'a(199,25,''Morocco'',''Marokko'',''MA'');',
'a(200,11,''Marshall Islands'',''Marshallinseln'',''MH'');',
'a(201,25,''Mauritania'',''Mauretanien'',''MR'');',
'a(202,27,''Mauritius'',''Mauritius'',''MU'');',
'a(203,15,''Macedonia'',''Mazedonien, ehemalige jugoslawische Republik'',''MK'');',
'a(204,21,''Mexico'',''Mexiko'',''MX'');',
'a(205,11,''Micronesia'',''Mikronesien, Föderierte Staaten von'',''FM'',''Federated States of Micronesia'');',
'a(206,13,''Moldova'',''Moldau, Republik'',''MD'');',
'a(207,12,''Monaco'',''Monaco'',''MC'');',
'a(208,16,''Mongolia'',''Mongolei'',''MN'');',
'a(209,15,''Montenegro'',''Montenegro (ab 03.06.2006)'',''ME'');',
'a(210,15,''Montenegro'',''Montenegro (ab 03062006)'',''ME'');',
'a(211,26,''Mozambique'',''Mosambik'',''MZ'');',
'a(212,17,''Myanmar (Burma)'',''Myanmar'',''MM'');',
'a(213,26,''Namibia'',''Namibia'',''NA'');',
'a(214,11,''Nauru'',''Nauru'',''NR'');',
'a(215,18,''Nepal'',''Nepal'',''NP'');',
'a(216,10,''New Zealand'',''Neuseeland'',''NZ'');',
'a(217,21,''Nicaragua'',''Nicaragua'',''NI'');',
'a(218,12,''Netherlands'',''Niederlande'',''NL'');',
'a(219,28,''Niger'',''Niger'',''NE'');',
'a(220,28,''Nigeria'',''Nigeria'',''NG'');',
'a(221,14,''Norway'',''Norwegen'',''NO'');',
'a(222,19,''Oman'',''Oman'',''OM'');',
'a(223,18,''Pakistan'',''Pakistan'',''PK'');',
'a(224,11,''Palau'',''Palau'',''PW'');',
'a(225,21,''Panama'',''Panama'',''PA'');',
'a(226,18,''Papua New Guinea'',''Papua-Neuguinea'',''PG'');',
'a(227,24,''Paraguay'',''Paraguay'',''PY'');',
'a(228,24,''Peru'',''Peru'',''PE'');',
'a(229,20,''Philippines'',''Philippinen'',''PH'');',
'a(230,13,''Poland'',''Polen'',''PL'');',
'a(231,15,''Portugal'',''Portugal'',''PT'');',
'a(232,29,''Rwanda'',''Ruanda'',''RW'');',
'a(233,13,''Romania'',''Rumänien'',''RO'');',
'a(234,13,''Russia'',''Russische Föderation'',''RU'');',
'a(235,11,''Solomon Islands'',''Salomonen'',''SB'');',
'a(236,28,''Zambia'',''Sambia'',''ZM'');',
'a(237,11,''Samoa'',''Samoa'',''WS'');',
'a(238,15,''San Marino'',''San Marino'',''SM'');',
'a(239,22,''Sao Tome and Principe'',''Sao Tome und Principe'',''ST'');',
'a(240,19,''Saudi Arabia'',''Saudi-Arabien'',''SA'');',
'a(241,14,''Sweden'',''Schweden'',''SE'');',
'a(242,12,''Switzerland'',''Schweiz'',''CH'');',
'a(243,28,''Senegal'',''Senegal'',''SN'');',
'a(244,13,''Serbia'',''Serbien (einschl Kosovo) (03062006-16022008)'',''RS'');',
'a(245,13,''Serbia'',''Serbien (einschl. Kosovo) (03.06.2006-16.02.2008)'',''RS'');',
'a(246,18,''Seychelles'',''Seychellen'',''SC'');',
'a(247,28,''Sierra Leone'',''Sierra Leone'',''SL'');',
'a(248,26,''Zimbabwe'',''Simbabwe'',''ZW'');',
'a(249,17,''Singapore'',''Singapur'',''SG'');',
'a(250,13,''Slovakia'',''Slowakei'',''SK'');',
'a(251,13,''Slovenia'',''Slowenien'',''SI'');',
'a(252,27,''Somalia'',''Somalia'',''SO'',''Somalia'');',
'a(253,15,''Spain'',''Spanien'',''ES'');',
'a(254,18,''Sri Lanka'',''Sri Lanka'',''LK'');',
'a(255,22,''Saint Kitts and Nevis'',''St Kitts und Nevis'',''KN'',''St. Kitts and Nevis'');',
'a(256,22,''Saint Lucia'',''St Lucia'',''LC'');',
'a(257,22,''Saint Vincent and the Grenadines'',''St Vincent und die Grenadinen'',''VC'');',
'a(258,22,''Saint Kitts and Nevis'',''St. Kitts und Nevis'',''KN'');',
'a(259,22,''Saint Lucia'',''St. Lucia'',''LC'',''St. Lucia'');',
'a(260,22,''Saint Vincent and the Grenadines'',''St. Vincent und die Grenadinen'',''VC'');',
'a(262,25,''Sudan'',''Sudan (einschließlich Südsudan) (bis 08072011)'',''SD'',''Sudan'');',
'a(263,24,''Suriname'',''Suriname'',''SR'');',
'a(264,26,''Swaziland'',''Swasiland'',''SZ'');',
'a(265,19,''Syria'',''Syrien'',''SY'');',
'a(266,26,''South Africa'',''Südafrika'',''ZA'');',
'a(267,25,''South Sudan'',''Südsudan (ab 09072011)'',''SS'');',
'a(269,16,''Tajikistan'',''Tadschikistan'',''TJ'');',
'a(270,27,''Tanzania'',''Tansania'',''TZ'',''Tanzania, United Republic of'');',
'a(271,17,''Thailand'',''Thailand'',''TH'');',
'a(272,17,''Timor-Leste (East Timor)'',''Timor-Leste'',''TL'');',
'a(273,28,''Togo'',''Togo'',''TG'');',
'a(274,11,''Tonga'',''Tonga'',''TO'');',
'a(275,22,''Trinidad and Tobago'',''Trinidad und Tobago'',''TT'');',
'a(276,25,''Chad'',''Tschad'',''TD'');',
'a(277,13,''Czech Republic'',''Tschechische Republik'',''CZ'');',
'a(278,25,''Tunisia'',''Tunesien'',''TN'');',
'a(279,16,''Turkmenistan'',''Turkmenistan'',''TM'');',
'a(280,11,''Tuvalu'',''Tuvalu'',''TV'');',
'a(281,19,''Turkey'',''Türkei'',''TR'');',
'a(282,27,''Uganda'',''Uganda'',''UG'');',
'a(283,13,''Ukraine'',''Ukraine'',''UA'');',
'a(284,13,''Hungary'',''Ungarn'',''HU'');',
'a(285,24,''Uruguay'',''Uruguay'',''UY'');',
'a(286,16,''Uzbekistan'',''Usbekistan'',''UZ'');',
'a(287,11,''Vanuatu'',''Vanuatu'',''VU'');',
'a(288,15,''Vatican City'',''Vatikanstadt'',''VA'',''Vatican'');',
'a(289,24,''Venezuela'',''Venezuela, Bolivarische Republik'',''VE'');',
'a(290,19,''United Arab Emirates'',''Vereinigte Arabische Emirate'',''AE'');',
'a(291,23,''United States'',''Vereinigte Staaten'',''US'');',
'a(292,12,''United Kingdom'',''Vereinigtes Königreich'',''GB'');',
'a(293,17,''Vietnam'',''Vietnam'',''VN'');',
'a(294,13,''Belarus'',''Weißrussland'',''BY'',''Byelarus'');',
'a(295,29,''Central African Republic'',''Zentralafrikanische Republik'',''CF'');',
'a(296,15,''Cyprus'',''Zypern'',''CY'');',
'a(297,25,''Egypt'',''Ägypten'',''EG'');',
'a(298,25,''Equatorial Guinea'',''Äquatorialguinea'',''GQ'',''Equatorial Guinea'');',
'a(299,27,''Ethiopia'',''Äthopien'',''ET'');',
'a(300,12,''Austria'',''Österreich'',''AT'');',
'a(310,27,''Somaliland'',''Somaliland'',''SO'');',
'a(311,15,''Northern Cyprus'',''Nordlich Zypern'',''CY'',''Cyprus'');',
'',
'-- start update agricultural data',
'for r in ( select col.seq_id',
'       , country',
'       , max(area_used_for_agriculture)    as area_used_for_agriculture',
'       , max(area_used_for_farmland)    as area_used_for_farmland',
'       , max(area_used_for_bio_cropland)    as area_used_for_bio_cropland',
'       , max(area_used_for_forest)    as area_used_for_forest',
'  from   gdb_world_agriculture_area dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 10, r.area_used_for_agriculture );',
'  update_value( r.seq_id, 11, r.area_used_for_farmland);',
'  update_value( r.seq_id, 12, r.area_used_for_bio_cropland);',
'  update_value( r.seq_id, 13, r.area_used_for_forest);',
'end loop; -- end update agricultural data',
'',
'-- start update population data',
'for r in ',
'( select col.seq_id',
'       , country',
'       , land_area',
'       , population',
'       , population_percent_under_15',
'       , population_percent_betw_15_64',
'       , population_percent_over_64',
'       , population_density',
'       , population_development',
'       , lifespan_at_birth_woman',
'       , lifespan_at_birth_men',
'       , birthrate',
'       , round( ( ( last_population - first_population) / first_population ) * 100, 1)  pct_increase',
'     from ( select country',
'                 , max(land_area)                        over( partition by country)  as land_area',
'                 , max(population)                       over( partition by country)  as population',
'                 , max(population_percent_under_15)      over( partition by country)  as population_percent_under_15',
'                 , max(population_percent_betw_15_64)    over( partition by country)  as population_percent_betw_15_64',
'                 , max(population_percent_over_64)       over( partition by country)  as population_percent_over_64',
'                 , max(population_density)               over( partition by country)  as population_density',
'                 , max(population_development)           over( partition by country)  as population_development',
'                 , max(lifespan_at_birth_woman)          over( partition by country)  as lifespan_at_birth_woman',
'                 , max(lifespan_at_birth_men)            over( partition by country)  as lifespan_at_birth_men',
'                 , max(birthrate)                        over( partition by country)  as birthrate',
'                 , first_value(population) over ( partition by country order by year) as first_population',
'                 , first_value(year)       over ( partition by country order by year) as first_year',
'                 , last_value(population)  over ( partition by country order by year) as last_population',
'                 , last_value(year)        over ( partition by country order by year) as last_year',
'                 , max(year)                             over( partition by country)  as max_year',
'     ',
'            from   gdb_world_population   pop',
'            where  population is not null',
'          ) cnt',
'          join apex_collections      col  on ( col.c002 = cnt.country )',
'  where   collection_name = :APP_COLL_NAME',
'    and   cnt.last_year = cnt.max_year',
'  )',
'loop',
'  update_value( r.seq_id, 14, r.land_area);',
'  update_value( r.seq_id, 15, r.population);',
'  update_value( r.seq_id, 16, r.population_percent_under_15);',
'  update_value( r.seq_id, 17, r.population_percent_betw_15_64);',
'  update_value( r.seq_id, 18, r.population_percent_over_64);',
'  update_value( r.seq_id, 19, r.population_density);',
'  update_value( r.seq_id, 20, r.population_development);',
'  update_value( r.seq_id, 21, r.lifespan_at_birth_woman);',
'  update_value( r.seq_id, 22, r.lifespan_at_birth_men);',
'  update_value( r.seq_id, 23, r.birthrate);',
'  update_value( r.seq_id, 34, r.pct_increase);',
'end loop; -- end update population data',
'',
'-- start update energy consumption data',
'for r in ( select col.seq_id',
'       , country',
'       , max(oil_equivalent_per_inh_in_kg)   as oil_equivalent_per_inh_in_kg',
'       , max(carbon_emisson_per_inh_in_t)    as carbon_emisson_per_inh_in_t',
'  from   gdb_world_energy_consumption dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 24, r.oil_equivalent_per_inh_in_kg);',
'  update_value( r.seq_id, 25, r.carbon_emisson_per_inh_in_t);',
'end loop; -- end update energy consumption data',
'',
'-- start update health data',
'for r in ( select col.seq_id',
'       , country',
'       , max(doctor_frequency_per_10t_inh)  as doctor_frequency_per_10t_inh',
'       , max(hospital_beds_per_10t_inh)     as hospital_beds_per_10t_inh',
'       , max(died_babies_per_1t_livingborn) as died_babies_per_1t_livingborn',
'  from   gdb_world_health dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 26, r.doctor_frequency_per_10t_inh);',
'  update_value( r.seq_id, 27, r.hospital_beds_per_10t_inh);',
'  update_value( r.seq_id, 28, r.died_babies_per_1t_livingborn);',
'end loop; -- end update health data',
'',
'-- start update traffic data',
'for r in ( select col.seq_id',
'       , country',
'       , max(railway_network_length_in_km)              as railway_network_length_in_km',
'       , max(road_network_length_in_km)                 as road_network_length_in_km',
'       , max(road_death_per_100t_inh)                   as road_death_per_100t_inh',
'       , max(oil_price_per_liter_in_dollar)             as oil_price_per_liter_in_dollar',
'       , max(cars_per_1000_inh)                         as cars_per_1000_inh',
'  from   gdb_world_traffic dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 29, r.railway_network_length_in_km);',
'  update_value( r.seq_id, 30, r.road_network_length_in_km);',
'  update_value( r.seq_id, 31, r.road_death_per_100t_inh);',
'  update_value( r.seq_id, 32, r.oil_price_per_liter_in_dollar);',
'  update_value( r.seq_id, 33, r.cars_per_1000_inh);',
'end loop; -- end update traffic data',
'',
'-- start update traffic data',
'for i in 1.. 3 loop',
'for r in ( select par.seq_id',
'       , sum(cnt.c010 * cnt.c014) / sum(cnt.c014)    as  c010',
'       , sum(cnt.c011 * cnt.c014) / sum(cnt.c014)    as  c011',
'       , sum(cnt.c012 * cnt.c010 * cnt.c014) / sum(cnt.c010 * cnt.c014)    as  c012',
'       , sum(cnt.c013 * cnt.c014) / sum(cnt.c014)    as  c013',
'       , sum(cnt.c014)    as  c014   -- land area',
'       , sum(cnt.c015)    as  c015   -- population',
'       , sum(cnt.c016 * cnt.c015) / sum(cnt.c015)    as  c016   -- population_percent_under_15',
'       , sum(cnt.c017 * cnt.c015) / sum(cnt.c015)    as  c017   -- population_percent_betw_15_64',
'       , sum(cnt.c018 * cnt.c015) / sum(cnt.c015)    as  c018   -- population_percent_over_64',
'       , sum(cnt.c019 * cnt.c015) / sum(cnt.c015)    as  c019',
'       , sum(cnt.c020 * cnt.c015) / sum(cnt.c015)    as  c020',
'       , sum(cnt.c021 * cnt.c015) / sum(cnt.c015)    as  c021',
'       , sum(cnt.c022 * cnt.c015) / sum(cnt.c015)    as  c022   -- birth rate',
'       , sum(cnt.c023 * cnt.c015) / sum(cnt.c015)    as  c023',
'       , sum(cnt.c024 * cnt.c015) / sum(cnt.c015)    as  c024   -- energy use per inh',
'       , sum(cnt.c025 * cnt.c015) / sum(cnt.c015)    as  c025   -- carbon emission per inh',
'       , sum(cnt.c026 * cnt.c015) / sum(cnt.c015)    as  c026',
'       , sum(cnt.c027 * cnt.c015) / sum(cnt.c015)    as  c027',
'       , sum(cnt.c028 * cnt.c015) / sum(cnt.c015)    as  c028',
'       , sum(cnt.c029 * cnt.c015) / sum(cnt.c015)    as  c029   -- railroad length',
'       , sum(cnt.c030 * cnt.c015) / sum(cnt.c015)    as  c030   -- road network length',
'       , sum(cnt.c031 * cnt.c015) / sum(cnt.c015)    as  c031   -- road death per 100t inh',
'       , sum(cnt.c032 * cnt.c024) / sum(cnt.c024)    as  c032   -- oil price per liter / multiplied by oil use',
'       , sum(cnt.c033 * cnt.c015) / sum(cnt.c015)    as  c033   -- cars per 1000 inh',
'       , sum(cnt.c034 * cnt.c015) / sum(cnt.c015)    as  c034   -- % population increase ',
'          ',
'  from   apex_collections    par',
'         join apex_collections   cnt on ( par.n001 = cnt.n002 )',
'  where  cnt.collection_name = :APP_COLL_NAME',
'    and  par.collection_name = :APP_COLL_NAME',
'    and  par.c010            is null',
'  group by par.seq_id)',
'loop',
'  update_value( r.seq_id, 10, r.c010);',
'  update_value( r.seq_id, 11, r.c011);',
'  update_value( r.seq_id, 12, r.c012);',
'  update_value( r.seq_id, 13, r.c013);',
'  update_value( r.seq_id, 14, r.c014);',
'  update_value( r.seq_id, 15, r.c015);',
'  update_value( r.seq_id, 16, r.c016);',
'  update_value( r.seq_id, 17, r.c017);',
'  update_value( r.seq_id, 18, r.c018);',
'  update_value( r.seq_id, 19, r.c019);',
'  update_value( r.seq_id, 20, r.c020);',
'  update_value( r.seq_id, 21, r.c021);',
'  update_value( r.seq_id, 22, r.c022);',
'  update_value( r.seq_id, 23, r.c023);',
'  update_value( r.seq_id, 24, r.c024);',
'  update_value( r.seq_id, 25, r.c025);',
'  update_value( r.seq_id, 26, r.c026);',
'  update_value( r.seq_id, 27, r.c027);',
'  update_value( r.seq_id, 28, r.c028);',
'  update_value( r.seq_id, 29, r.c029);',
'  update_value( r.seq_id, 30, r.c030);',
'  update_value( r.seq_id, 31, r.c031);',
'  update_value( r.seq_id, 32, r.c032);',
'  update_value( r.seq_id, 33, r.c033);',
'  update_value( r.seq_id, 34, r.c034);',
'end loop; -- end update traffic data',
'end loop;',
'',
'end if; -- end fill collection',
'',
'end;'))
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(31756468838373336)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUNBURST_DATA'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_template   varchar2(100) := ''{"name":"[name]","value":[value],"color":[color]'';',
'  l_element    varchar2(100) := null;',
'begin',
'  for r in (',
'with val as ( ',
'select c.*',
'     , population    as  value1',
'     , round(oil_equivalent_in_kg/population)   as value2',
'from adc_countries c ',
'), lim as ',
'( select distinct *',
'  from (',
'  select nth_value(oil_equivalent_in_kg/population, round(no_of_c *0.25) ) over () as  limit1',
'       , nth_value(oil_equivalent_in_kg/population, round(no_of_c *0.5 ) ) over () as  limit2',
'       , nth_value(oil_equivalent_in_kg/population, round(no_of_c *0.75) ) over () as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  population is not null and oil_equivalent_in_kg is not null',
'            and  sct_id != 0',
'        )',
'  order by value2',
'  )',
')',
'select cnt.*',
'     , case when value2 > lim.limit3 then 4',
'            when value2 > lim.limit2 then 3',
'            when value2 > lim.limit1 then 2',
'            else  1',
'       end     as color',
'     , nvl(lag(level1)  over (order by rownumber),0)  as previous_level',
'     , nvl(lead(level1) over (order by rownumber),0)  as next_level',
'from (select rownum  as  rownumber, level   as level1, country_name  as name, value1, value2',
'      from  val',
'      connect by parent_id = prior country_id',
'      start with country_id = 3',
'      )  cnt ',
'    , lim  ',
'      ) loop',
'',
'    l_element := replace(l_template,''[name]''  ,r.name );',
'    l_element := replace(l_element ,''[value]'' ,r.value1);',
'    l_element := replace(l_element ,''[color]'' ,r.color);',
'    l_element := l_element ',
'              || case',
'                   when r.next_level = r.level1 then ''}''',
'                   when r.next_level > r.level1 then '',"nodes":[''',
'                   when r.next_level - r.level1 = -1 then ''}''',
'                   when r.next_level - r.level1 = -2 then ''}]}''',
'                   when r.next_level - r.level1 = -3 then ''}]}]}''',
'                   when r.next_level - r.level1 = -4 then ''}]}]}]}''',
'                 end                   ',
'              || case when r.next_level between 1 and r.level1-1 then '']},''',
'                      when r.next_level between 1 and r.level1 then '',''',
'                      else null',
'                 end;',
'    htp.p(l_element);',
'',
'    ',
'  end loop;',
'exception',
'  when others then htp.p(''{"error":"''||sqlerrm||''"}'');',
'end;'))
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(31762386248899492)
,p_name=>'APP_COLL_NAME'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(31762953114901924)
,p_computation_sequence=>10
,p_computation_item=>'APP_COLL_NAME'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'COUNTRY_INFO'
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(29965973638975343)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29922303499974548)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29922462165974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29922522994974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29922678153974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29922754954974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29922841520974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29922966110974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923082936974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923146953974568)
,p_page_template_id=>wwv_flow_api.id(29922303499974548)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29923216138974596)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923296290974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923389238974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923542342974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923646732974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923714357974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923817435974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29923932664974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924022865974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924172108974601)
,p_page_template_id=>wwv_flow_api.id(29923216138974596)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29924268596974601)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924384793974602)
,p_page_template_id=>wwv_flow_api.id(29924268596974601)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924436671974602)
,p_page_template_id=>wwv_flow_api.id(29924268596974601)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29924529240974602)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924593574974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924689457974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924877587974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29924922603974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925042121974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925184358974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925213032974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925306742974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925424264974609)
,p_page_template_id=>wwv_flow_api.id(29924529240974602)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29925586044974609)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925672337974614)
,p_page_template_id=>wwv_flow_api.id(29925586044974609)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925781900974614)
,p_page_template_id=>wwv_flow_api.id(29925586044974609)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925885573974614)
,p_page_template_id=>wwv_flow_api.id(29925586044974609)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29925960926974614)
,p_page_template_id=>wwv_flow_api.id(29925586044974609)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926067847974614)
,p_page_template_id=>wwv_flow_api.id(29925586044974609)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926110654974615)
,p_page_template_id=>wwv_flow_api.id(29925586044974609)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926217784974615)
,p_page_template_id=>wwv_flow_api.id(29925586044974609)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29926317807974615)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926430688974615)
,p_page_template_id=>wwv_flow_api.id(29926317807974615)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926513651974615)
,p_page_template_id=>wwv_flow_api.id(29926317807974615)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926606959974615)
,p_page_template_id=>wwv_flow_api.id(29926317807974615)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29926727323974615)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926827735974633)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29926953101974634)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927011752974634)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927103584974634)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927190101974634)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927317382974634)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927406048974634)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927500125974634)
,p_page_template_id=>wwv_flow_api.id(29926727323974615)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29927593208974634)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927708301974638)
,p_page_template_id=>wwv_flow_api.id(29927593208974634)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927817314974638)
,p_page_template_id=>wwv_flow_api.id(29927593208974634)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29927972843974638)
,p_page_template_id=>wwv_flow_api.id(29927593208974634)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928066568974638)
,p_page_template_id=>wwv_flow_api.id(29927593208974634)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928104673974638)
,p_page_template_id=>wwv_flow_api.id(29927593208974634)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928250653974638)
,p_page_template_id=>wwv_flow_api.id(29927593208974634)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928366407974638)
,p_page_template_id=>wwv_flow_api.id(29927593208974634)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(29928392315974638)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928540433974642)
,p_page_template_id=>wwv_flow_api.id(29928392315974638)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928673126974642)
,p_page_template_id=>wwv_flow_api.id(29928392315974638)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928786931974642)
,p_page_template_id=>wwv_flow_api.id(29928392315974638)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(29959349743974934)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(29959400663974947)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(29959549542974947)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29928806400974651)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29928958115974663)
,p_plug_template_id=>wwv_flow_api.id(29928806400974651)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29930337212974732)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29930463632974732)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29930547620974732)
,p_plug_template_id=>wwv_flow_api.id(29930463632974732)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29930649310974732)
,p_plug_template_id=>wwv_flow_api.id(29930463632974732)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29931362324974734)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29931442887974735)
,p_plug_template_id=>wwv_flow_api.id(29931362324974734)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29931518547974735)
,p_plug_template_id=>wwv_flow_api.id(29931362324974734)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29934777607974755)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29934853504974758)
,p_plug_template_id=>wwv_flow_api.id(29934777607974755)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29934944326974758)
,p_plug_template_id=>wwv_flow_api.id(29934777607974755)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29936871643974777)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29936888191974777)
,p_plug_template_id=>wwv_flow_api.id(29936871643974777)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29937061224974777)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29937120318974777)
,p_plug_template_id=>wwv_flow_api.id(29937061224974777)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29937907596974782)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29938209062974782)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29938326642974783)
,p_plug_template_id=>wwv_flow_api.id(29938209062974782)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29938449024974783)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29938532342974783)
,p_plug_template_id=>wwv_flow_api.id(29938449024974783)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29938603864974783)
,p_plug_template_id=>wwv_flow_api.id(29938449024974783)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29940499904974791)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29940615449974791)
,p_plug_template_id=>wwv_flow_api.id(29940499904974791)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29940750776974791)
,p_plug_template_id=>wwv_flow_api.id(29940499904974791)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29941762159974792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(29942260046974792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(29942348658974792)
,p_plug_template_id=>wwv_flow_api.id(29942260046974792)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29950650189974881)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29952350557974906)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29954478339974909)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29955263620974910)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29956122810974911)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29956648898974911)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29956766831974912)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29956833183974912)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29956949740974913)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29957884083974913)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(29958344123974914)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29942828788974805)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29942948077974811)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29944621491974814)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29946766695974815)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29947170850974817)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29947246375974817)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(29947246375974817)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29948526519974829)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29948734074974863)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(29949689487974864)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31820239560529122)
,p_row_template_name=>'Dashboard Badge'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="db_container">',
'    <div class="db_title">',
'        #TITLE#',
'    </div>',
'    <div class="db_main">',
'       <div class="db_number">',
'           #DATA#',
'        </div> ',
'       <div class="db_text">',
'           #TEXT#',
'        </div>',
'        <i class="fa #ICON_CLASS#"></i>',
'    </div>',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(31822924961628144)
,p_row_template_name=>'Dashboard Badge v2'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="db2_container #CONTAINER_CLASS#">',
'    <div class="db2_main">',
'       <div class="db2_number">',
'           #DATA#',
'        </div> ',
'        <div class="db2_title">',
'           #TITLE#',
'       </div>',
'       <div class="db2_text">',
'           #TEXT#',
'        </div>',
'    </div>',
'    <div class="db2_icon_container">',
'        <i class="fa #ICON_CLASS#"></i>',
'    </div>        ',
'</div>'))
,p_row_template_before_rows=>' '
,p_row_template_after_rows=>' '
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>42
,p_theme_class_id=>7
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29958873412974916)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29958947094974929)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29959025193974929)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29959181317974930)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(29959269294974930)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(29959900240974948)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(29960152931974972)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(29959994019974961)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(29960521784974991)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(29927593208974634)
,p_default_dialog_template=>wwv_flow_api.id(29926317807974615)
,p_error_template=>wwv_flow_api.id(29924268596974601)
,p_printer_friendly_template=>wwv_flow_api.id(29927593208974634)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(29924268596974601)
,p_default_button_template=>wwv_flow_api.id(29959400663974947)
,p_default_region_template=>wwv_flow_api.id(29938449024974783)
,p_default_chart_template=>wwv_flow_api.id(29938449024974783)
,p_default_form_template=>wwv_flow_api.id(29938449024974783)
,p_default_reportr_template=>wwv_flow_api.id(29938449024974783)
,p_default_tabform_template=>wwv_flow_api.id(29938449024974783)
,p_default_wizard_template=>wwv_flow_api.id(29938449024974783)
,p_default_menur_template=>wwv_flow_api.id(29941762159974792)
,p_default_listr_template=>wwv_flow_api.id(29938449024974783)
,p_default_irr_template=>wwv_flow_api.id(29937907596974782)
,p_default_report_template=>wwv_flow_api.id(29947246375974817)
,p_default_label_template=>wwv_flow_api.id(29958947094974929)
,p_default_menu_template=>wwv_flow_api.id(29959900240974948)
,p_default_calendar_template=>wwv_flow_api.id(29959994019974961)
,p_default_list_template=>wwv_flow_api.id(29954478339974909)
,p_default_nav_list_template=>wwv_flow_api.id(29957884083974913)
,p_default_top_nav_list_temp=>wwv_flow_api.id(29957884083974913)
,p_default_side_nav_list_temp=>wwv_flow_api.id(29956833183974912)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(29930463632974732)
,p_default_dialogr_template=>wwv_flow_api.id(29930337212974732)
,p_default_option_label=>wwv_flow_api.id(29958947094974929)
,p_default_required_label=>wwv_flow_api.id(29959181317974930)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(29956766831974912)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>64
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29960197893974982)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>true
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29960287152974986)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(29960468873974986)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200A202A20417065782044617368626F6172640A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290A202A200A202A2054686973204353532066696C65207761732067656E657261';
wwv_flow_api.g_varchar2_table(2) := '746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200A202A200A202A2F0A0A2E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233566';
wwv_flow_api.g_varchar2_table(3) := '356635663B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A20233533353335333B0A7D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0A2020636F6C6F723A202336';
wwv_flow_api.g_varchar2_table(4) := '36363636363B0A7D0A2E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233436343634363B0A7D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233361336133613B0A7D0A';
wwv_flow_api.g_varchar2_table(5) := '2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0A2020636F6C6F723A20233464346434643B0A7D0A0A2E742D416C6572742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572';
wwv_flow_api.g_varchar2_table(6) := '742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77207B0A20206261636B67726F756E642D636F6C6F723A20236666666165353B0A7D0A2E742D41';
wwv_flow_api.g_varchar2_table(7) := '6C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F772068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(8) := '7761726E696E672068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77206833207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761';
wwv_flow_api.g_varchar2_table(9) := '726E696E67202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C6C6F77202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D416C6572742D';
wwv_flow_api.g_varchar2_table(10) := '2D636F6C6F7242472E742D416C6572742D2D73756363657373207B0A20206261636B67726F756E642D636F6C6F723A20236563666265653B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D737563636573732068322C0A2E74';
wwv_flow_api.g_varchar2_table(11) := '2D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373206833207B0A2020636F6C6F723A20233334333433343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373202E742D416C6572';
wwv_flow_api.g_varchar2_table(12) := '742D626F6479207B0A2020636F6C6F723A20233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0A202062';
wwv_flow_api.g_varchar2_table(13) := '61636B67726F756E642D636F6C6F723A20236666656165393B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7265642068322C';
wwv_flow_api.g_varchar2_table(14) := '0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722068332C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564206833207B0A2020636F6C6F723A20233335333533353B0A7D0A2E742D416C';
wwv_flow_api.g_varchar2_table(15) := '6572742D2D636F6C6F7242472E742D416C6572742D2D64616E676572202E742D416C6572742D626F64792C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564202E742D416C6572742D626F6479207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(16) := '233734373437343B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236433653566373B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572';
wwv_flow_api.g_varchar2_table(17) := '742D2D696E666F2068322C0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F206833207B0A2020636F6C6F723A20233236323632363B0A7D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E666F';
wwv_flow_api.g_varchar2_table(18) := '202E742D416C6572742D626F6479207B0A2020636F6C6F723A20233636363636363B0A7D0A0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F';
wwv_flow_api.g_varchar2_table(19) := '6E207B0A2020636F6C6F723A20236666636330303B0A7D0A0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0A2020636F6C6F723A20233463643936343B0A7D0A0A2E742D416C6572742D2D696E666F202E742D416C';
wwv_flow_api.g_varchar2_table(20) := '6572742D69636F6E207B0A2020636F6C6F723A20233235373863663B0A7D0A0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E2C0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(21) := '723A20236539306330303B0A7D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0A2E742D416C65';
wwv_flow_api.g_varchar2_table(22) := '72742D2D77697A617264207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616C657274202E74';
wwv_flow_api.g_varchar2_table(23) := '2D416C6572742D2D70616765207B0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0A';
wwv_flow_api.g_varchar2_table(24) := '20206261636B67726F756E642D636F6C6F723A20726762612837342C203137302C2034342C20302E39293B0A7D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D49636F6E2C0A2E742D416C6572742D2D706167';
wwv_flow_api.g_varchar2_table(25) := '652E742D416C6572742D2D73756363657373202E742D416C6572742D7469746C65207B0A2020636F6C6F723A20234646463B0A7D0A2E742D416C6572742D2D70616765202E742D427574746F6E2D2D636C6F7365416C657274207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(26) := '207267626128302C20302C20302C20302E35293B0A7D0A0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365366536';
wwv_flow_api.g_varchar2_table(27) := '653620696E7365743B0A7D0A2E742D42616467654C6973742061207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6974656D3A686F766572202E742D42';
wwv_flow_api.g_varchar2_table(28) := '616467654C6973742D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(29) := '20233733373337333B0A2020626F782D736861646F773A2030203020302031707820726762612836342C2036342C2036342C20302E312920696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426164';
wwv_flow_api.g_varchar2_table(30) := '67654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C75652061207B0A2020626F782D736861646F773A20302030203020317078202332363764623320696E7365743B0A2020636F6C6F723A20233233373461363B0A7D0A2E';
wwv_flow_api.g_varchar2_table(31) := '742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0A2020626F782D736861646F773A20302030203020347078202332363764623320696E7365743B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(32) := '6E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(33) := '646F773A2030203020302032707820726762612833382C203132352C203137392C20302E3235292C20302030203020317078202332363764623320696E7365743B0A7D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C';
wwv_flow_api.g_varchar2_table(34) := '6973742D6C6162656C207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C7565207B0A2020626F72';
wwv_flow_api.g_varchar2_table(35) := '6465722D636F6C6F723A20233236376462333B0A20207472616E736974696F6E3A20626F782D736861646F7720302E31732C20636F6C6F7220302E31732C206261636B67726F756E642D636F6C6F7220302E33733B0A7D0A2E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(36) := '2D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020347078202332363764623320696E7365743B0A20206261';
wwv_flow_api.g_varchar2_table(37) := '636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20234646463B0A7D0A2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F726564424720612E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(38) := '742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0A2020626F782D736861646F773A20302030203020387078207267626128302C20302C20302C20302E312920696E7365743B0A7D0A0A2E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(39) := '2D666C6F6174202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D666C6578202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D636F6C73202E742D4261';
wwv_flow_api.g_varchar2_table(40) := '6467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D6669786564202E742D42616467654C6973742D6974656D3A61667465722C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(41) := '6974656D3A6166746572207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D42616467654C6973742D2D666C6F6174202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D666C';
wwv_flow_api.g_varchar2_table(42) := '6578202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D636F6C73202E742D42616467654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D6669786564202E742D426164';
wwv_flow_api.g_varchar2_table(43) := '67654C6973742D6974656D3A6265666F72652C0A2E742D42616467654C6973742D2D737461636B6564202E742D42616467654C6973742D6974656D3A6265666F7265207B0A20206261636B67726F756E643A20236536653665363B0A7D0A2E742D426164';
wwv_flow_api.g_varchar2_table(44) := '67654C6973742D2D626F74746F6D426F72646572207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236638663866383B0A7D0A0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0A2020626163';
wwv_flow_api.g_varchar2_table(45) := '6B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233739373937393B';
wwv_flow_api.g_varchar2_table(46) := '0A7D0A2E742D426F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233664366436643B0A7D0A2E742D426F64792D696E666F202E';
wwv_flow_api.g_varchar2_table(47) := '612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20233664366436643B0A7D0A2E742D526567696F6E202E612D4261724368617274202E612D42617243686172';
wwv_flow_api.g_varchar2_table(48) := '742D6974656D202E612D42617243686172742D76616C75652C0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(49) := '233830383038303B0A7D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E612D4261724368617274202E612D42617243686172742D626172207B0A';
wwv_flow_api.g_varchar2_table(50) := '20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0A2E612D42617243686172742D2D636C617373';
wwv_flow_api.g_varchar2_table(51) := '6963202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D4261724368';
wwv_flow_api.g_varchar2_table(52) := '6172742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0A2E612D42617243686172';
wwv_flow_api.g_varchar2_table(53) := '742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0A2020626F726465722D7261646975733A203170783B0A7D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E61';
wwv_flow_api.g_varchar2_table(54) := '2D42617243686172742D626172207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E612D42617243686172742D66696C6C6564207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(55) := '233236376462333B0A7D0A0A626F64792C0A2E742D426F6479207B0A20206261636B67726F756E643A20236638663866383B0A2020636F6C6F723A20233339333933393B0A7D0A61207B0A2020636F6C6F723A20233233373461363B0A7D0A2E742D426F';
wwv_flow_api.g_varchar2_table(56) := '64792D7469746C6520612C0A2E742D426F64792D696E666F2061207B0A2020636F6C6F723A20233166363539313B0A7D0A2E742D426F64792D616374696F6E73207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(57) := '2D426F64792D7469746C65207B0A20206261636B67726F756E642D636F6C6F723A20236530656666383B0A2020636F6C6F723A20233264326432643B0A7D0A2E75692D7769646765742D636F6E74656E74207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(58) := '6F723A20236666666666663B0A7D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0A20';
wwv_flow_api.g_varchar2_table(59) := '20636F6C6F723A20233264326432643B0A7D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E';
wwv_flow_api.g_varchar2_table(60) := '742C0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D73696465207B0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(61) := '66663B0A2020636F6C6F723A20233339333933393B0A7D0A2E617065782D7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D696E666F202E617065782D';
wwv_flow_api.g_varchar2_table(62) := '7264732D636F6E7461696E6572207B0A20206261636B67726F756E642D636F6C6F723A20236530656666383B0A7D0A2E742D426F64792D696E666F207B0A20206261636B67726F756E642D636F6C6F723A20236530656666383B0A7D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(63) := '2D7469746C652E6A732D6869646542726561646372756D6273207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0A7D0A2E742D426F64792D746F70427574746F6E207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(64) := '7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(65) := '0A7D0A2E742D426F64792D746F70427574746F6E3A616374697665202E612D49636F6E207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D426F64792D746F70427574746F6E202E612D49636F6E207B0A2020636F6C6F723A202365366536';
wwv_flow_api.g_varchar2_table(66) := '65363B0A7D0A0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A2020';
wwv_flow_api.g_varchar2_table(67) := '746F703A20343070783B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0A202020206C6566743A20';
wwv_flow_api.g_varchar2_table(68) := '32303070783B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0A202020206D617267';
wwv_flow_api.g_varchar2_table(69) := '696E2D6C6566743A2032303070783B0A20207D0A7D0A2E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20303B0A7D0A0A2E617065782D746F702D6E6176202E742D426F64792D616374696F';
wwv_flow_api.g_varchar2_table(70) := '6E73207B0A2020746F703A20383070783B0A7D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0A2020746F703A20383070783B0A7D0A0A2E742D426F64792D6E6176207B0A202077696474683A2032303070783B0A7D0A0A2E';
wwv_flow_api.g_varchar2_table(71) := '742D426F64792D616374696F6E73207B0A202077696474683A2032303070783B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174';
wwv_flow_api.g_varchar2_table(72) := '653364282D343070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0A7D0A0A406D656469';
wwv_flow_api.g_varchar2_table(73) := '61206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D426F64792D73696465207B0A2020202077696474683A2032343070783B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E6170';
wwv_flow_api.g_varchar2_table(74) := '65782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D6C6566743A20343070783B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070';
wwv_flow_api.g_varchar2_table(75) := '782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283136307078293B0A20207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A7D0A406D65646961206F6E6C79207363';
wwv_flow_api.g_varchar2_table(76) := '7265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(77) := '457870616E646564202E742D426F64792D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A20202E';
wwv_flow_api.g_varchar2_table(78) := '617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832';
wwv_flow_api.g_varchar2_table(79) := '303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A7D0A406D65';
wwv_flow_api.g_varchar2_table(80) := '646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(81) := '792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0A20202E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(82) := '6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B';
wwv_flow_api.g_varchar2_table(83) := '0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0A202020206C';
wwv_flow_api.g_varchar2_table(84) := '6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C65';
wwv_flow_api.g_varchar2_table(85) := '66743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20';
wwv_flow_api.g_varchar2_table(86) := '3070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465';
wwv_flow_api.g_varchar2_table(87) := '2C0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B';
wwv_flow_api.g_varchar2_table(88) := '0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20207D0A20202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(89) := '6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(90) := '202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C65';
wwv_flow_api.g_varchar2_table(91) := '6674202E742D426F64792D73696465207B0A202020206C6566743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74';
wwv_flow_api.g_varchar2_table(92) := '656E74207B0A202020206D617267696E2D6C6566743A2032383070783B0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472';
wwv_flow_api.g_varchar2_table(93) := '616E736C617465283136307078293B0A202020207472616E73666F726D3A207472616E736C61746533642831363070782C20302C2030293B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A203939';
wwv_flow_api.g_varchar2_table(94) := '33707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D6C6566743A20303B0A202020202D';
wwv_flow_api.g_varchar2_table(95) := '7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870';
wwv_flow_api.g_varchar2_table(96) := '616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020';
wwv_flow_api.g_varchar2_table(97) := '207472616E73666F726D3A206E6F6E653B0A202020206D617267696E2D6C6566743A2032303070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(98) := '742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2034343070783B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A2020202074';
wwv_flow_api.g_varchar2_table(99) := '72616E73666F726D3A206E6F6E653B0A20207D0A7D0A0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E74';
wwv_flow_api.g_varchar2_table(100) := '2D426F64792D6E6176202E742D547265654E6176207B0A202077696474683A20343070783B0A7D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0A2E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(101) := '61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0A20206D617267696E2D6C6566743A20343070783B';
wwv_flow_api.g_varchar2_table(102) := '0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0A202020202D77';
wwv_flow_api.g_varchar2_table(103) := '65626B69742D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34307078293B0A202020207472616E73666F726D3A207472616E736C6174655828';
wwv_flow_api.g_varchar2_table(104) := '2D34307078293B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F6479';
wwv_flow_api.g_varchar2_table(105) := '2D736964652C0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265';
wwv_flow_api.g_varchar2_table(106) := '656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0A202020206D617267696E2D6C6566743A20303B0A202020';
wwv_flow_api.g_varchar2_table(107) := '206C6566743A20343070783B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D617267696E2D6C6566';
wwv_flow_api.g_varchar2_table(108) := '743A20303B0A20207D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032';
wwv_flow_api.g_varchar2_table(109) := '383070783B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964';
wwv_flow_api.g_varchar2_table(110) := '65207B0A202020206C6566743A20343070783B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A20303B0A7D0A2E742D5061676542';
wwv_flow_api.g_varchar2_table(111) := '6F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0A20202D7765626B69742D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(112) := '72616E736C6174653364282D32303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C203029';
wwv_flow_api.g_varchar2_table(113) := '3B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C65667420';
wwv_flow_api.g_varchar2_table(114) := '2E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F72';
wwv_flow_api.g_varchar2_table(115) := '6D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(116) := '2D2D686964654C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D6869';
wwv_flow_api.g_varchar2_table(117) := '64654C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(118) := '426F64792D7469746C65207B0A2020202072696768743A20303B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(119) := '742D426F64792D73696465207B0A202020206D617267696E2D6C6566743A20303B0A202020206C6566743A20303B0A20207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0A20202E';
wwv_flow_api.g_varchar2_table(120) := '742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0A202020206D617267696E2D72696768743A2032303070783B0A20207D0A20202E742D5061';
wwv_flow_api.g_varchar2_table(121) := '6765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(122) := '2D2D73686F774C656674202E742D426F64792D6E6176207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A';
wwv_flow_api.g_varchar2_table(123) := '20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0A2020202072696768743A2032303070783B0A20207D0A20202E742D50';
wwv_flow_api.g_varchar2_table(124) := '616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206C6566743A20343070783B0A20207D0A7D0A40';
wwv_flow_api.g_varchar2_table(125) := '6D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20393932707829207B0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F';
wwv_flow_api.g_varchar2_table(126) := '64792D6D61696E207B0A202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A202020202D6D732D7472616E73666F726D3A206E6F6E653B0A202020207472616E73666F726D3A206E6F6E653B0A20207D0A20202E742D50616765426F';
wwv_flow_api.g_varchar2_table(127) := '64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73';
wwv_flow_api.g_varchar2_table(128) := '686F774C656674202E742D426F64792D736964652C0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0A202020202D776562';
wwv_flow_api.g_varchar2_table(129) := '6B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0A202020207472616E73666F726D3A207472616E73';
wwv_flow_api.g_varchar2_table(130) := '6C6174653364282D32303070782C20302C2030293B0A20207D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0A202020206D6172';
wwv_flow_api.g_varchar2_table(131) := '67696E2D6C6566743A20343070782021696D706F7274616E743B0A20207D0A7D0A0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0A20206D617267696E2D72696768743A203070783B0A';
wwv_flow_api.g_varchar2_table(132) := '7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0A202072696768743A203070783B0A7D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64';
wwv_flow_api.g_varchar2_table(133) := '792D616374696F6E73207B0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0A20207472616E';
wwv_flow_api.g_varchar2_table(134) := '73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0A7D0A0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0A20202E742D50616765426F64792D2D73686F774C';
wwv_flow_api.g_varchar2_table(135) := '656674202E742D426F64792D636F6E74656E74207B0A202020206D617267696E2D6C6566743A2032343070783B0A20207D0A7D0A0A2E742D426F64792D636F6E74656E74496E6E6572207B0A20206D617267696E3A206175746F3B0A20206D61782D7769';
wwv_flow_api.g_varchar2_table(136) := '6474683A206175746F3B0A7D0A0A2E742D42726561646372756D622D6974656D3A6166746572207B0A2020636F6C6F723A20726762612834352C2034352C2034352C20302E39393335293B0A7D0A2E742D42726561646372756D622D6974656D202E742D';
wwv_flow_api.g_varchar2_table(137) := '49636F6E3A686F766572207B0A2020636F6C6F723A20233236376462333B0A7D0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D3A6C6173742D636869';
wwv_flow_api.g_varchar2_table(138) := '6C64202E742D42726561646372756D622D6C6162656C207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0A2020636F6C6F723A20233264326432643B0A7D0A0A2E74';
wwv_flow_api.g_varchar2_table(139) := '2D427574746F6E2C0A2E612D427574746F6E207B0A2020626F726465723A206E6F6E653B0A2020636F6C6F723A20233338333833383B0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(140) := '636F6C6F723A20236638663866383B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020626F726465722D7261646975733A203270783B0A2020746578742D736861';
wwv_flow_api.g_varchar2_table(141) := '646F773A206E6F6E653B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C2030203020302031';
wwv_flow_api.g_varchar2_table(142) := '7078207267626128302C20302C20302C20302E3132352920696E7365743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C652C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C65207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(143) := '6E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0A2020746578742D73686164';
wwv_flow_api.g_varchar2_table(144) := '6F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(145) := '73696D706C653A666F6375732C0A2E612D427574746F6E2E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C653A6163746976652C0A2E612D427574746F6E2E742D427574746F';
wwv_flow_api.g_varchar2_table(146) := '6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A2020626F782D736861646F773A20302030203020317078202365366536653620696E7365743B0A7D0A406D656469612073637265';
wwv_flow_api.g_varchar2_table(147) := '656E20616E6420282D6D732D686967682D636F6E74726173743A2061637469766529207B0A20202E742D427574746F6E2C0A20202E612D427574746F6E207B0A20202020626F726465723A2031707820736F6C69643B0A20207D0A7D0A0A2E742D427574';
wwv_flow_api.g_varchar2_table(148) := '746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D686F742C0A2E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D7761726E696E672C0A2E742D427574746F6E2D2D73756363657373207B0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(149) := '6F773A2030203020327078207267626128302C20302C20302C20302E30352920696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D686F742E742D427574746F';
wwv_flow_api.g_varchar2_table(150) := '6E2D2D73696D706C652C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C652C0A2E742D427574746F6E2D2D7375636365';
wwv_flow_api.g_varchar2_table(151) := '73732E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031707820696E7365743B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F7665722C0A2E742D427574746F6E2D2D7761726E696E673A';
wwv_flow_api.g_varchar2_table(152) := '686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(153) := '6F6E2D2D686F743A686F7665722C0A2E742D427574746F6E2D2D64616E6765723A686F7665722C0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A2020626F782D736861646F773A20302032707820317078207267626128302C2030';
wwv_flow_api.g_varchar2_table(154) := '2C20302C20302E31292C20302030203020317078207267626128302C20302C20302C20302E3037352920696E7365743B0A7D0A2E742D427574746F6E3A686F7665722C0A2E612D427574746F6E3A686F766572207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(155) := '6F6C6F723A20236666666666663B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A20207A2D696E6465783A203131303B';
wwv_flow_api.g_varchar2_table(156) := '0A7D0A2E742D427574746F6E3A666F6375732C0A2E612D427574746F6E3A666F6375732C0A2E742D427574746F6E3A6163746976653A666F6375732C0A2E612D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(157) := '302030203020317078202332363764623320696E7365742C20302030203170782032707820726762612833382C203132352C203137392C20302E3235292021696D706F7274616E743B0A7D0A2E742D427574746F6E3A616374697665207B0A2020626163';
wwv_flow_api.g_varchar2_table(158) := '6B67726F756E642D636F6C6F723A20236465646564653B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(159) := '32352920696E7365743B0A20207A2D696E6465783A203130303B0A7D0A2E742D427574746F6E3A6163746976653A666F637573207B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E73';
wwv_flow_api.g_varchar2_table(160) := '65742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365742021696D706F7274616E743B0A7D0A2E742D427574746F6E2E69732D6163746976652C0A2E742D427574746F6E2E69732D6163746976653A6163746976';
wwv_flow_api.g_varchar2_table(161) := '652C0A2E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A2020666F6E742D7765696768743A206E6F726D616C3B0A20';
wwv_flow_api.g_varchar2_table(162) := '20746578742D736861646F773A206E6F6E653B0A20207A2D696E6465783A203130303B0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C203020317078203270782072676261';
wwv_flow_api.g_varchar2_table(163) := '28302C20302C20302C20302E32352920696E7365743B0A7D0A2E742D427574746F6E2E69732D64697361626C65642C0A2E742D427574746F6E2E69732D64697361626C65643A6163746976652C0A2E742D427574746F6E3A64697361626C6564207B0A20';
wwv_flow_api.g_varchar2_table(164) := '206F7061636974793A202E353B0A2020706F696E7465722D6576656E74733A206E6F6E653B0A7D0A0A2E742D427574746F6E2D2D686F742C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D';
wwv_flow_api.g_varchar2_table(165) := '2D686F742C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(166) := '66663B0A2020746578742D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2D2D686F743A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D6275';
wwv_flow_api.g_varchar2_table(167) := '74746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(168) := '6F723A20233337393864353B0A7D0A2E742D427574746F6E2D2D686F743A6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0A626F64792062';
wwv_flow_api.g_varchar2_table(169) := '7574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D686F742E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E';
wwv_flow_api.g_varchar2_table(170) := '75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D6163746976652C0A2E742D42';
wwv_flow_api.g_varchar2_table(171) := '7574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D6163746976652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D4D656E75427574746F6E2E69732D61';
wwv_flow_api.g_varchar2_table(172) := '63746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D4D656E75427574746F6E2E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(173) := '20233164363038393B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F';
wwv_flow_api.g_varchar2_table(174) := '6E2D2D73696D706C652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A2030203020302031';
wwv_flow_api.g_varchar2_table(175) := '7078202332363764623320696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233333356537393B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E';
wwv_flow_api.g_varchar2_table(176) := '742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C65202E742D49636F6E2C0A626F647920627574746F6E2E75692D737461';
wwv_flow_api.g_varchar2_table(177) := '74652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233333356537393B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F';
wwv_flow_api.g_varchar2_table(178) := '6E2D2D73696D706C653A686F7665722C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F7665722C0A626F647920627574746F6E';
wwv_flow_api.g_varchar2_table(179) := '2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C';
wwv_flow_api.g_varchar2_table(180) := '0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F6375732C0A626F647920627574746F6E2E75692D73746174652D64656661756C';
wwv_flow_api.g_varchar2_table(181) := '742E75692D7072696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(182) := '2D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A6163746976652C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D';
wwv_flow_api.g_varchar2_table(183) := '7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(184) := '20317078202332363764623320696E7365743B0A7D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E75692D627574746F';
wwv_flow_api.g_varchar2_table(185) := '6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E742D';
wwv_flow_api.g_varchar2_table(186) := '427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F6479202E75692D73746174652D64656661756C742E';
wwv_flow_api.g_varchar2_table(187) := '75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D7072696F726974792D7072';
wwv_flow_api.g_varchar2_table(188) := '696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(189) := '2D64656661756C742E75692D627574746F6E2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E2C0A626F647920627574746F6E2E75692D73746174652D64656661756C742E75692D70';
wwv_flow_api.g_varchar2_table(190) := '72696F726974792D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D427574746F6E2D2D7072696D617279207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(191) := '6F756E642D636F6C6F723A20236131636565623B0A2020636F6C6F723A20233032303730623B0A7D0A2E742D427574746F6E2D2D7072696D6172793A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236362653466343B0A7D0A2E';
wwv_flow_api.g_varchar2_table(192) := '742D427574746F6E2D2D7072696D6172793A6163746976652C0A2E742D427574746F6E2D2D7072696D6172792E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233736623965323B0A7D0A2E742D427574746F6E2D2D70';
wwv_flow_api.g_varchar2_table(193) := '72696D6172792E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202361316365656220696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(194) := '723A20233564373438323B0A7D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233564373438323B0A7D0A2E742D427574746F6E2D2D7072696D6172792E74';
wwv_flow_api.g_varchar2_table(195) := '2D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(196) := '653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236131636565623B0A2020636F6C6F723A20233032303730623B0A2020626F782D736861646F773A20302030203020317078202361316365656220696E7365743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(197) := '742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C';
wwv_flow_api.g_varchar2_table(198) := '0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233032303730623B0A7D0A0A2E742D427574746F6E2D2D64616E676572207B0A2020626163';
wwv_flow_api.g_varchar2_table(199) := '6B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A2E742D427574746F6E2D2D64616E6765723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666323931643B0A7D';
wwv_flow_api.g_varchar2_table(200) := '0A2E742D427574746F6E2D2D64616E6765723A6163746976652C0A2E742D427574746F6E2D2D64616E6765722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236236303930303B0A7D0A2E742D427574746F6E2D2D64';
wwv_flow_api.g_varchar2_table(201) := '616E6765722E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(202) := '3A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233934323632303B0A7D0A2E742D427574746F6E2D2D64616E6765722E742D4275';
wwv_flow_api.g_varchar2_table(203) := '74746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374';
wwv_flow_api.g_varchar2_table(204) := '697665207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A2020626F782D736861646F773A20302030203020317078202365393063303020696E7365743B0A7D0A2E742D427574';
wwv_flow_api.g_varchar2_table(205) := '746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D427574';
wwv_flow_api.g_varchar2_table(206) := '746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20236666656165393B0A7D0A0A2E742D427574746F6E2D2D7761726E696E67207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(207) := '2D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D427574746F6E2D2D7761726E696E673A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D4275';
wwv_flow_api.g_varchar2_table(208) := '74746F6E2D2D7761726E696E673A6163746976652C0A2E742D427574746F6E2D2D7761726E696E672E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236363613330303B0A7D0A2E742D427574746F6E2D2D7761726E69';
wwv_flow_api.g_varchar2_table(209) := '6E672E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(210) := '3863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233863373330643B0A7D0A2E742D427574746F6E2D2D7761726E696E672E742D427574';
wwv_flow_api.g_varchar2_table(211) := '746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A6163';
wwv_flow_api.g_varchar2_table(212) := '74697665207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A2020626F782D736861646F773A20302030203020317078202366666363303020696E7365743B0A7D0A2E742D4275';
wwv_flow_api.g_varchar2_table(213) := '74746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C0A2E742D';
wwv_flow_api.g_varchar2_table(214) := '427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233030303030303B0A7D0A0A2E742D427574746F6E2D2D73756363657373207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(215) := '6F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D737563636573733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233736653238383B0A7D0A2E';
wwv_flow_api.g_varchar2_table(216) := '742D427574746F6E2D2D737563636573733A6163746976652C0A2E742D427574746F6E2D2D737563636573732E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(217) := '7563636573732E742D427574746F6E2D2D73696D706C65207B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(218) := '723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233333373933663B0A7D0A2E742D427574746F6E2D2D737563636573732E74';
wwv_flow_api.g_varchar2_table(219) := '2D427574746F6E2D2D73696D706C653A686F7665722C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F6375732C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(220) := '653A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020636F6C6F723A20233037316630623B0A2020626F782D736861646F773A20302030203020317078202334636439363420696E7365743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(221) := '742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A686F766572202E742D49636F6E2C0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A666F637573202E742D49636F6E2C';
wwv_flow_api.g_varchar2_table(222) := '0A2E742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C653A616374697665202E742D49636F6E207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D427574746F6E2D2D70696C6C5374617274207B0A202062';
wwv_flow_api.g_varchar2_table(223) := '6F726465722D746F702D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D70696C6C45';
wwv_flow_api.g_varchar2_table(224) := '6E64207B0A2020626F726465722D746F702D6C6566742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(225) := '2D70696C6C207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6869646553686F772E742D427574746F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(226) := '4865616465722D6272616E64696E67202E742D427574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0A20207472616E7369';
wwv_flow_api.g_varchar2_table(227) := '74696F6E3A206E6F6E653B0A2020626F726465722D7261646975733A20303B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976';
wwv_flow_api.g_varchar2_table(228) := '653A666F637573207B0A2020626F782D736861646F773A20302030203020317078202334636133643920696E7365742C20302030203170782032707820726762612837362C203136332C203231372C20302E3235292021696D706F7274616E743B0A7D0A';
wwv_flow_api.g_varchar2_table(229) := '2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976';
wwv_flow_api.g_varchar2_table(230) := '65207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(231) := '2C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(232) := '726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(233) := '2C20302C20302C20302E3235293B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A6265666F7265207B0A2020636F6E74';
wwv_flow_api.g_varchar2_table(234) := '656E743A2027273B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A20303B0A2020626F74746F6D3A20303B0A202072696768743A20303B0A202077696474683A203170783B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(235) := '7267626128302C20302C20302C20302E31293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265652E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(236) := '3A207472616E73706172656E743B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572547265653A686F7665722C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E74';
wwv_flow_api.g_varchar2_table(237) := '2D427574746F6E2D2D686561646572547265653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164';
wwv_flow_api.g_varchar2_table(238) := '65722E742D427574746F6E2D2D6865616465725269676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465';
wwv_flow_api.g_varchar2_table(239) := '7252696768743A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0A7D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768743A6163746976';
wwv_flow_api.g_varchar2_table(240) := '652C0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D427574746F6E2D2D6E61764261';
wwv_flow_api.g_varchar2_table(241) := '72202E742D427574746F6E2D6261646765207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0A7D0A2E742D427574746F6E2D2D68656C70';
wwv_flow_api.g_varchar2_table(242) := '427574746F6E202E612D49636F6E207B0A20206F7061636974793A202E353B0A7D0A2E612D43616C656E6461722D627574746F6E207B0A2020626F726465722D7261646975733A203270783B0A2020636F6C6F723A20233730373037303B0A7D0A0A2E74';
wwv_flow_api.g_varchar2_table(243) := '2D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233338333833383B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279207B0A2020636F6C6F723A20233564373438322021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(244) := '0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0A2020636F6C6F723A20236131636565622021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D42757474';
wwv_flow_api.g_varchar2_table(245) := '6F6E2D2D7761726E696E67207B0A2020636F6C6F723A20233863373330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(246) := '66636330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572207B0A2020636F6C6F723A20233831313330642021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55';
wwv_flow_api.g_varchar2_table(247) := '492E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0A2020636F6C6F723A20236539306330302021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373207B0A2020636F';
wwv_flow_api.g_varchar2_table(248) := '6C6F723A20233333373933662021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0A2020636F6C6F723A20233463643936342021696D706F7274616E743B0A';
wwv_flow_api.g_varchar2_table(249) := '7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74207B0A2020636F6C6F723A20233230346236362021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D4963';
wwv_flow_api.g_varchar2_table(250) := '6F6E207B0A2020636F6C6F723A20233236376462332021696D706F7274616E743B0A7D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D776172';
wwv_flow_api.g_varchar2_table(251) := '6E696E672C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(252) := '2D686F74207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A0A2E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A2020626F72';
wwv_flow_api.g_varchar2_table(253) := '6465722D7261646975733A203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D427574746F6E526567696F6E2D2D77697A6172';
wwv_flow_api.g_varchar2_table(254) := '642C0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A7D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0A20';
wwv_flow_api.g_varchar2_table(255) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(256) := '3A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233264326432643B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(257) := '2D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D526567696F6E202E742D427574746F';
wwv_flow_api.g_varchar2_table(258) := '6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E';
wwv_flow_api.g_varchar2_table(259) := '2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F';
wwv_flow_api.g_varchar2_table(260) := '726465722D7261646975733A20303B0A7D0A0A2E66632D746F6F6C626172207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D72616469';
wwv_flow_api.g_varchar2_table(261) := '75733A2032707820327078203020303B0A7D0A2E66632D746F6F6C6261722068322C0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0A2E6663202E66632D6461792D6E756D626572207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(262) := '3A20233430343034303B0A7D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0A2E66632D76696577202E75692D7769646765742D686561646572207B0A20206261636B67726F756E642D636F6C6F723A202365666566';
wwv_flow_api.g_varchar2_table(263) := '65663B0A2020636F6C6F723A20233364336433643B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A6469762E66632D6167656E64614C697374207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020';
wwv_flow_api.g_varchar2_table(264) := '626F726465722D636F6C6F723A20236562656265623B0A2020636F6C6F723A20233430343034303B0A7D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0A20206261636B67726F756E642D636F6C6F723A20236436643664';
wwv_flow_api.g_varchar2_table(265) := '363B0A2020636F6C6F723A20233364336433643B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A2E6663202E66632D6167656E64614C6973742D646179207B0A2020636F6C6F723A20233364336433643B0A7D0A2E6663202E6663';
wwv_flow_api.g_varchar2_table(266) := '2D6167656E64614C6973742D64617465207B0A2020636F6C6F723A20233633363336333B0A7D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0A2E6663202E66632D6167656E64614C697374202E';
wwv_flow_api.g_varchar2_table(267) := '66632D6576656E742D616C6C2D646179207B0A2020636F6C6F723A20233636363636363B0A7D0A626F6479202E66632074642E66632D746F6461792C0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(268) := '636F6C6F723A20236536653665363B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(269) := '6E642D636F6C6F723A20236632663266323B0A7D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236661666166613B0A7D0A0A2E742D436172642D77726170207B0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(270) := '61646975733A203270783B0A7D0A2E742D436172642D777261703A666F637573207B0A2020626F726465722D636F6C6F723A20233236376462333B0A7D0A2E742D436172642D69636F6E202E742D49636F6E207B0A2020636F6C6F723A20234646463B0A';
wwv_flow_api.g_varchar2_table(271) := '7D0A2E742D436172642D64657363207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D636F6D70616374202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D';
wwv_flow_api.g_varchar2_table(272) := '0A2E742D43617264732D2D636F6D70616374202E742D436172642D64657363207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D696E666F207B0A2020636F6C6F723A20233633363336333B0A7D0A2E742D436172642D746974';
wwv_flow_api.g_varchar2_table(273) := '6C65207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D777261702C0A2E742D436172642D2D6261736963202E742D436172642D77726170207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(274) := '726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6261736963202E742D436172642D69636F6E202E74';
wwv_flow_api.g_varchar2_table(275) := '2D49636F6E207B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6261736963202E742D43617264202E742D436172642D7469746C655772';
wwv_flow_api.g_varchar2_table(276) := '61702C0A2E742D436172642D2D6261736963202E742D436172642D7469746C6557726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D';
wwv_flow_api.g_varchar2_table(277) := '436172642D777261702C0A2E742D436172642D2D6665617475726564202E742D436172642D77726170207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D43617264732D2D6665617475726564202E742D436172';
wwv_flow_api.g_varchar2_table(278) := '64202E742D436172642D69636F6E202E742D49636F6E2C0A2E742D436172642D2D6665617475726564202E742D436172642D69636F6E202E742D49636F6E207B0A2020626F726465722D7261646975733A2031303070783B0A2020636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(279) := '46463B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A7D0A2E742D43617264732D2D6665617475726564202E742D43617264202E742D436172642D626F64792C0A2E742D436172642D2D6665617475726564202E742D436172';
wwv_flow_api.g_varchar2_table(280) := '642D626F6479207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D436C617373696343616C656E6461722D6D6F6E74685469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(281) := '436C617373696343616C656E6461722D646179436F6C756D6E207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020766572746963616C2D616C69676E3A20746F703B0A2020626F726465722D636F6C6F723A2023663266';
wwv_flow_api.g_varchar2_table(282) := '3266323B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D436C617373696343616C656E6461722D646179207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6461792E';
wwv_flow_api.g_varchar2_table(283) := '69732D696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0A20206F7061636974793A202E353B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0A2E742D436C6173736963';
wwv_flow_api.g_varchar2_table(284) := '43616C656E6461722D6461792E69732D696E616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C6173736963';
wwv_flow_api.g_varchar2_table(285) := '43616C656E6461722D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D64617465207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(286) := '233830383038303B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6576656E74207B0A2020636F';
wwv_flow_api.g_varchar2_table(287) := '6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461722D6576656E742061207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C61';
wwv_flow_api.g_varchar2_table(288) := '7373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F';
wwv_flow_api.g_varchar2_table(289) := '6C207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0A2E742D436C617373';
wwv_flow_api.g_varchar2_table(290) := '696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D43';
wwv_flow_api.g_varchar2_table(291) := '6C617373696343616C656E6461722D6461794576656E747320612C0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(292) := '636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0A2E742D43';
wwv_flow_api.g_varchar2_table(293) := '6C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0A20206261636B67726F756E642D636F6C6F723A20236530656666383B0A7D0A2E742D436C617373696343616C';
wwv_flow_api.g_varchar2_table(294) := '656E6461722D6C697374207B0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B';
wwv_flow_api.g_varchar2_table(295) := '0A2020626F726465722D636F6C6F723A20236632663266323B0A7D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020636F6C6F723A20233636';
wwv_flow_api.g_varchar2_table(296) := '363636363B0A7D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E2C0A2E742D436F6D6D656E74732D75736572496D67';
wwv_flow_api.g_varchar2_table(297) := '207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D436F6D6D656E74732D7573657249636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D436F6D6D656E74732D696E666F207B';
wwv_flow_api.g_varchar2_table(298) := '0A2020636F6C6F723A20233636363636363B0A7D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F207B0A';
wwv_flow_api.g_varchar2_table(299) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A2032707820327078203020303B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6D6D656E74732D2D63';
wwv_flow_api.g_varchar2_table(300) := '686174202E742D436F6D6D656E74732D696E666F3A6166746572207B0A2020626F726465722D636F6C6F723A2072676261283234382C203234382C203234382C2030293B0A2020626F726465722D72696768742D636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(301) := '7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D696E666F3A6265666F7265207B0A2020626F726465722D636F6C6F723A2072676261283233322C203233322C203233322C2030293B0A2020626F726465722D7269676874';
wwv_flow_api.g_varchar2_table(302) := '2D636F6C6F723A20236536653665363B0A7D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(303) := '6975733A2030203020327078203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D436F6E66696750616E656C2D61626F7574207B0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0A202063';
wwv_flow_api.g_varchar2_table(304) := '6F6C6F723A20233536353635363B0A7D0A2E742D436F6E66696750616E656C2D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(305) := '234646463B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D6469736162';
wwv_flow_api.g_varchar2_table(306) := '6C6564207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A7D0A2E742D436F6E66696750616E656C2D73657474696E672C0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233733373337';
wwv_flow_api.g_varchar2_table(307) := '333B0A7D0A2E742D436F6E66696750616E656C2D737461747573207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D436F';
wwv_flow_api.g_varchar2_table(308) := '6E66696750616E656C2D617474724C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0A7D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0A202063';
wwv_flow_api.g_varchar2_table(309) := '6F6C6F723A20233233373461363B0A7D0A0A2E742D4469616C6F67526567696F6E2D626F6479207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E742823666666666666203330252C202366666666666629';
wwv_flow_api.g_varchar2_table(310) := '2C202D7765626B69742D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C';
wwv_flow_api.g_varchar2_table(311) := '207267626128302C20302C20302C203029292C202D7765626B69742D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E303529293B0A20206261636B67726F756E643A202D6F';
wwv_flow_api.g_varchar2_table(312) := '2D6C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C202D6F2D6C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020313030252C202D6F2D6C696E6561722D67';
wwv_flow_api.g_varchar2_table(313) := '72616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C202D6F2D6C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(314) := '2E303529293B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2023666666666666292C206C696E6561722D6772616469656E7428236666666666662C20236666666666662037302529203020';
wwv_flow_api.g_varchar2_table(315) := '313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C2072676261';
wwv_flow_api.g_varchar2_table(316) := '28302C20302C20302C20302E30352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A0A2E742D466F6F7465722C0A2E742D466F6F7465722061207B0A2020636F6C6F723A20233030303030303B0A';
wwv_flow_api.g_varchar2_table(317) := '7D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642C0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F';
wwv_flow_api.g_varchar2_table(318) := '6E7461696E657220696E7075745B747970653D2274657874225D2C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E';
wwv_flow_api.g_varchar2_table(319) := '7965735F6E6F2C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C642C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72642C0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(320) := '74436F6E7461696E65722074657874617265612E74657874617265612C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E64';
wwv_flow_api.g_varchar2_table(321) := '6973706C61795F6F6E6C792C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F762C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D2C0A2E742D466F72';
wwv_flow_api.g_varchar2_table(322) := '6D2D74657874617265612C0A2E752D54462D6974656D2D2D746578742C0A2E752D54462D6974656D2D2D74657874617265612C0A2E752D54462D6974656D2D2D646174657069636B65722C0A2E752D54462D6974656D2D2D73656C656374207B0A202062';
wwv_flow_api.g_varchar2_table(323) := '6F726465722D7261646975733A203270783B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(324) := '2D6669656C643A666F6375732C0A2E742D466F726D2D73656C6563743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A666F6375732C0A2E742D466F726D2D696E707574436F';
wwv_flow_api.g_varchar2_table(325) := '6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(326) := '696E7075742E746578745F6669656C643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207465787461726561';
wwv_flow_api.g_varchar2_table(327) := '2E74657874617265613A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F';
wwv_flow_api.g_varchar2_table(328) := '6F6E6C793A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375732C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F';
wwv_flow_api.g_varchar2_table(329) := '6375732C0A2E742D466F726D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D746578743A666F6375732C0A2E752D54462D6974656D2D2D74657874617265613A666F6375732C0A2E752D54462D6974656D2D2D64617465706963';
wwv_flow_api.g_varchar2_table(330) := '6B65723A666F6375732C0A2E752D54462D6974656D2D2D73656C6563743A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F726465722D636F6C6F723A20233236376462';
wwv_flow_api.g_varchar2_table(331) := '332021696D706F7274616E743B0A7D0A2E742D466F726D2D6669656C643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D73656C6563743A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E746169';
wwv_flow_api.g_varchar2_table(332) := '6E657220696E7075745B747970653D2274657874225D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973743A666F6375733A3A2D6D732D76616C75652C0A';
wwv_flow_api.g_varchar2_table(333) := '2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A666F637573';
wwv_flow_api.g_varchar2_table(334) := '3A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E6572207465787461726561';
wwv_flow_api.g_varchar2_table(335) := '2E74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E70757443';
wwv_flow_api.g_varchar2_table(336) := '6F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A666F6375733A3A2D6D732D76616C7565';
wwv_flow_api.g_varchar2_table(337) := '2C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A666F6375733A3A2D6D732D76616C75652C0A2E742D466F726D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D5446';
wwv_flow_api.g_varchar2_table(338) := '2D6974656D2D2D746578743A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D74657874617265613A666F6375733A3A2D6D732D76616C75652C0A2E752D54462D6974656D2D2D646174657069636B65723A666F6375733A3A2D';
wwv_flow_api.g_varchar2_table(339) := '6D732D76616C75652C0A2E752D54462D6974656D2D2D73656C6563743A666F6375733A3A2D6D732D76616C7565207B0A2020636F6C6F723A20233333333333333B0A20200A7D0A2E742D466F726D2D6669656C643A686F7665722C0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(340) := '73656C6563743A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075745B747970653D2274657874225D3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C';
wwv_flow_api.g_varchar2_table(341) := '6973743A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F3A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E746578745F6669656C643A686F766572';
wwv_flow_api.g_varchar2_table(342) := '2C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E70617373776F72643A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722074657874617265612E74657874617265613A686F7665722C0A2E742D466F';
wwv_flow_api.g_varchar2_table(343) := '726D2D696E707574436F6E7461696E657220696E7075742E646174657069636B65723A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C793A686F7665722C0A2E742D466F726D2D696E';
wwv_flow_api.g_varchar2_table(344) := '707574436F6E7461696E657220696E7075742E706F7075705F6C6F763A686F7665722C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563745B6D756C7469706C655D3A686F7665722C0A2E742D466F726D2D74657874617265613A';
wwv_flow_api.g_varchar2_table(345) := '686F7665722C0A2E752D54462D6974656D2D2D746578743A686F7665722C0A2E752D54462D6974656D2D2D74657874617265613A686F7665722C0A2E752D54462D6974656D2D2D646174657069636B65723A686F7665722C0A2E752D54462D6974656D2D';
wwv_flow_api.g_varchar2_table(346) := '2D73656C6563743A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365686F6C64';
wwv_flow_api.g_varchar2_table(347) := '6572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(348) := '3030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F';
wwv_flow_api.g_varchar2_table(349) := '7061636974793A202E35353B0A7D0A2E742D466F726D20696E7075742E66696C65207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D696E707574436F6E7461696E6572207370616E2E646973706C61795F6F6E6C79207B0A20';
wwv_flow_api.g_varchar2_table(350) := '20626F726465722D636F6C6F723A207472616E73706172656E743B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D73656C6563742C0A2E742D466F726D2D696E707574436F6E7461696E65';
wwv_flow_api.g_varchar2_table(351) := '722073656C6563742E73656C6563746C6973742C0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D466F726D2D6669656C642D2D726561644F';
wwv_flow_api.g_varchar2_table(352) := '6E6C79207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D466F726D2D726164696F4C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162';
wwv_flow_api.g_varchar2_table(353) := '656C2C0A2E742D466F726D2D636865636B626F784C6162656C2C0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0A2E742D466F726D2D6C6162656C207B0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(354) := '64346434643B0A7D0A2E742D466F726D2D6572726F72207B0A2020636F6C6F723A20234539323032303B0A7D0A2E742D466F726D2D706F737454657874207B0A2020636F6C6F723A20236363636363633B0A7D0A2E742D466F726D2D2D73656172636820';
wwv_flow_api.g_varchar2_table(355) := '696E7075742E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E707574';
wwv_flow_api.g_varchar2_table(356) := '5B747970653D746578745D2E742D466F726D2D7365617263684669656C64207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236236643965663B0A7D0A2E742D4865726F52656769';
wwv_flow_api.g_varchar2_table(357) := '6F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(358) := '2D636F6C6F723A20233236376462332021696D706F7274616E743B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D7365617263684669656C643A3A2D7765626B69742D696E7075742D';
wwv_flow_api.g_varchar2_table(359) := '706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D466F726D2D73656172636846';
wwv_flow_api.g_varchar2_table(360) := '69656C643A3A2D6D6F7A2D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D4865726F526567696F6E2D666F726D20696E7075745B747970653D746578745D2E742D46';
wwv_flow_api.g_varchar2_table(361) := '6F726D2D7365617263684669656C643A2D6D732D696E7075742D706C616365686F6C646572207B0A2020636F6C6F723A20233030303030303B0A20206F7061636974793A202E35353B0A7D0A2E742D466F726D2D696E707574436F6E7461696E65722069';
wwv_flow_api.g_varchar2_table(362) := '6E7075742E686173446174657069636B65722C0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0A2020626F726465722D746F702D72696768742D7261646975733A20303B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(363) := '626F74746F6D2D72696768742D7261646975733A20303B0A7D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0A2020626F726465722D746F702D';
wwv_flow_api.g_varchar2_table(364) := '6C6566742D7261646975733A20303B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A2020626F726465722D626F74746F6D2D72696768';
wwv_flow_api.g_varchar2_table(365) := '742D7261646975733A203270783B0A7D0A0A2E742D4865616465722D6272616E64696E67207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B2C0A2E742D486561646572';
wwv_flow_api.g_varchar2_table(366) := '202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976652C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D686561646572207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(367) := '6F723A20236666666666663B0A7D0A2E742D4865616465722D6C6F676F2D6C696E6B3A686F7665722C0A2E742D486561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0A2E742D48';
wwv_flow_api.g_varchar2_table(368) := '6561646572202E742D427574746F6E2E742D427574746F6E2D2D6865616465722E742D427574746F6E2D2D6865616465723A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A7D0A2E742D4865616465722D6C6F676F2D';
wwv_flow_api.g_varchar2_table(369) := '6C696E6B3A666F6375732C0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202334636133643920696E7365';
wwv_flow_api.g_varchar2_table(370) := '742C20302030203170782032707820726762612837362C203136332C203231372C20302E3235292021696D706F7274616E743B0A7D0A2E742D4865616465722D6E6176207B0A20206261636B67726F756E642D636F6C6F723A20233139353137343B0A7D';
wwv_flow_api.g_varchar2_table(371) := '0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E61';
wwv_flow_api.g_varchar2_table(372) := '2D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E7420';
wwv_flow_api.g_varchar2_table(373) := '7B0A2020626F726465722D746F702D77696474683A20303B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E3135293B0A';
wwv_flow_api.g_varchar2_table(374) := '7D0A2E742D4865616465722D6E61762D6C697374207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236530656666';
wwv_flow_api.g_varchar2_table(375) := '383B0A2020636F6C6F723A20233130333434613B0A7D0A2E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A20233130333434613B0A7D0A2E742D4865726F526567696F6E2D69636F6E207B0A2020626F726465722D7261646975';
wwv_flow_api.g_varchar2_table(376) := '733A203470783B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4865726F526567696F6E2D2D6665617475726564207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(377) := '723A207472616E73706172656E743B0A7D0A2E742D4865726F526567696F6E2D2D66656174757265642C0A2E742D4865726F526567696F6E2D2D6665617475726564202E742D4865726F526567696F6E2D7469746C65207B0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(378) := '30343034303B0A7D0A0A2E612D495252207B0A2020626F726465722D7261646975733A203270783B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B';
wwv_flow_api.g_varchar2_table(379) := '0A2020636F6C6F723A20233733373337333B0A7D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0A202062';
wwv_flow_api.g_varchar2_table(380) := '6F726465722D746F702D636F6C6F723A20236635663566353B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E612D4952522D66756C6C56696577207B0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(381) := '66663B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E612D4952522D736F7274576964676574207B0A';
wwv_flow_api.g_varchar2_table(382) := '2020626F782D736861646F773A20302032707820347078207267626128302C20302C20302C20302E31293B0A7D0A2E612D4952522D746F6F6C626172207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666';
wwv_flow_api.g_varchar2_table(383) := '2C2023666366636663293B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A7D0A';
wwv_flow_api.g_varchar2_table(384) := '2E612D5265706F72742D70657263656E744368617274207B0A20206261636B67726F756E642D636F6C6F723A20236530656666383B0A7D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0A20202D7765626B69742D626F726465722D';
wwv_flow_api.g_varchar2_table(385) := '746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A20202D6D6F7A2D626F726465';
wwv_flow_api.g_varchar2_table(386) := '722D7261646975732D746F7072696768743A20307078202021696D706F7274616E743B0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D72696768743A203070782021696D706F7274616E743B0A2020626F726465722D746F702D72';
wwv_flow_api.g_varchar2_table(387) := '696768742D7261646975733A203070782021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070782021696D706F7274616E743B0A7D0A2E612D4952522D69636F6E566965775461626C652C0A2E';
wwv_flow_api.g_varchar2_table(388) := '612D4952522D6368617274566965772C0A2E612D4952522D7069766F74566965772C0A2E612D4952522D67726F75704279566965772C0A2E612D4952522D64657461696C56696577207B0A2020626F726465722D746F702D636F6C6F723A202366356635';
wwv_flow_api.g_varchar2_table(389) := '66353B0A7D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D686561646572207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(390) := '6F723A20236661666166613B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A2020626F782D736861646F773A20696E7365742031707820302030203020236536653665363B0A7D0A2E612D4952522D686561646572';
wwv_flow_api.g_varchar2_table(391) := '3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E612D4952522D6865616465722E69732D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233139353137343B0A2020626F72';
wwv_flow_api.g_varchar2_table(392) := '6465722D626F74746F6D3A206E6F6E653B0A7D0A2E612D4952522D6865616465722E69732D6163746976652061207B0A2020636F6C6F723A20236530656666383B0A7D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D68';
wwv_flow_api.g_varchar2_table(393) := '6561646572536F7274207B0A2020636F6C6F723A20236530656666383B0A7D0A2E612D4952522D6865616465722D2D67726F7570207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E612D4952522D7461626C652074';
wwv_flow_api.g_varchar2_table(394) := '72207464207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D4952522D7461626C65207B0A2020626F726465722D636F6C6C617073653A2073657061726174653B0A';
wwv_flow_api.g_varchar2_table(395) := '7D0A2E612D4952522D7461626C652074723A686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0A7D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(396) := '65722D7261646975733A203270783B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F7773207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D746F703A2031707820736F6C696420233139353137343B0A20';
wwv_flow_api.g_varchar2_table(397) := '206261636B67726F756E643A20233232366539653B0A7D0A626F6479202E612D4952522D736F72745769646765742D726F77207B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A2030202D317078203020233139353137';
wwv_flow_api.g_varchar2_table(398) := '3420696E7365743B0A7D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C642C0A2E612D4952522D736F72745769646765742D736561726368203E202E612D49';
wwv_flow_api.g_varchar2_table(399) := '52522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E643A20233139353137343B0A7D0A2E612D4952522D736F72745769646765';
wwv_flow_api.g_varchar2_table(400) := '742D726F773A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233139353137343B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E2C0A626F6479202E612D495252';
wwv_flow_api.g_varchar2_table(401) := '2D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(402) := '3A20233139353137343B0A7D0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F7665722C0A626F6479202E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D62';
wwv_flow_api.g_varchar2_table(403) := '7574746F6E3A6163746976653A666F6375733A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233232366539653B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0A2020626F726465722D626F74746F';
wwv_flow_api.g_varchar2_table(404) := '6D3A2031707820736F6C696420233139353137343B0A7D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0A2020626F726465722D72696768743A206E6F6E653B0A7D0A2E612D4952522D736F7274576964676574207B';
wwv_flow_api.g_varchar2_table(405) := '0A2020626F726465723A206E6F6E653B0A7D0A2E612D4952522D7461626C65207464207B0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0A2020626F726465722D746F703A2031707820736F6C6964202366326632';
wwv_flow_api.g_varchar2_table(406) := '66323B0A7D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E39293B0A7D0A2E612D4952522D736F72745769646765742D7365617263684C';
wwv_flow_api.g_varchar2_table(407) := '6162656C3A6265666F7265207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0A7D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020327078';
wwv_flow_api.g_varchar2_table(408) := '202332363764623320696E7365743B0A7D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0A2020626F726465722D636F6C6F723A20233236376462333B0A2020626F782D736861646F773A20302030203020317078202332363764';
wwv_flow_api.g_varchar2_table(409) := '623320696E7365742C202D32707820302030202332363764623320696E7365742C2032707820302030202332363764623320696E7365742C2030203020327078203020726762612833382C203132352C203137392C20302E35293B0A7D0A2E612D495252';
wwv_flow_api.g_varchar2_table(410) := '2D73696E676C65526F772D6E616D652C0A2E612D4952522D73696E676C65526F772D76616C7565207B0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0A2020636F6C6F723A20233430343034303B0A7D0A2E612D495252';
wwv_flow_api.g_varchar2_table(411) := '2D73696E676C65526F772D76616C7565207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C756520';
wwv_flow_api.g_varchar2_table(412) := '7B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E612D4952522D73696E676C';
wwv_flow_api.g_varchar2_table(413) := '65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0A7D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D7061';
wwv_flow_api.g_varchar2_table(414) := '67696E6174696F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A7D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0A2E612D4952522D636F6E74726F6C734C6162656C207B0A20';
wwv_flow_api.g_varchar2_table(415) := '206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0A20202E69732D6D6178696D697A65642E742D4952522D72656769';
wwv_flow_api.g_varchar2_table(416) := '6F6E202E742D6668742D7468656164202E612D4952522D686561646572207B0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A20207D0A7D0A0A2E742D4C696E6B734C6973742D6974656D2C0A2E742D4C';
wwv_flow_api.g_varchar2_table(417) := '696E6B734C6973742D6C696E6B207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4C696E6B734C6973742D6C696E6B';
wwv_flow_api.g_varchar2_table(418) := '3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A7D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0A2020626F782D736861646F773A20302030203020317078202332363764623320696E';
wwv_flow_api.g_varchar2_table(419) := '7365743B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A20236439643964393B0A7D0A0A2E742D4C696E6B734C6973742D2D73686F774261';
wwv_flow_api.g_varchar2_table(420) := '646765202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E74';
wwv_flow_api.g_varchar2_table(421) := '2D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E74';
wwv_flow_api.g_varchar2_table(422) := '2D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A7D0A';
wwv_flow_api.g_varchar2_table(423) := '0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(424) := '676261283235352C203235352C203235352C20302E35293B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(425) := '3236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0A2020';
wwv_flow_api.g_varchar2_table(426) := '636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0A202062';
wwv_flow_api.g_varchar2_table(427) := '61636B67726F756E643A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C203029';
wwv_flow_api.g_varchar2_table(428) := '2C207267626128302C20302C20302C20302E30313529293B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(429) := '3236376462333B0A7D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0A7D0A2E';
wwv_flow_api.g_varchar2_table(430) := '742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0A2020626F726465722D7261646975733A203470783B0A7D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(431) := '6973742D69636F6E207B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0A2020636F6C6F723A20233263326332633B0A7D0A2E';
wwv_flow_api.g_varchar2_table(432) := '742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B';
wwv_flow_api.g_varchar2_table(433) := '3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0A2E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(434) := '4C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0A2020636F6C6F723A20233339333933393B0A7D0A0A2E742D4C6F67696E2D69636F6E56616C69646174';
wwv_flow_api.g_varchar2_table(435) := '696F6E207B0A20206261636B67726F756E643A20233463643936343B0A2020636F6C6F723A2077686974653B0A7D0A626F6479202E742D4C6F67696E2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4C6F67696E2D7265';
wwv_flow_api.g_varchar2_table(436) := '67696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D4C6F67696E2D6C6F676F2E6661207B0A2020636F6C6F723A20233236376462333B0A7D0A406D65646961206F6E6C792073637265656E20616E6420';
wwv_flow_api.g_varchar2_table(437) := '286D61782D77696474683A20343830707829207B0A20202E742D50616765426F64792D2D6C6F67696E2C0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B0A202020206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(438) := '6666663B0A20207D0A7D0A0A2E742D4D656469614C6973742D6974656D207B0A2020626F726465722D636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D697465';
wwv_flow_api.g_varchar2_table(439) := '6D207B0A2020626F726465722D72696768743A2031707820736F6C696420236439643964393B0A7D0A0A612E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233233373461363B0A7D0A612E742D4D656469614C697374';
wwv_flow_api.g_varchar2_table(440) := '2D6974656D577261703A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A2020636F6C6F723A20233233373461363B0A7D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0A2020';
wwv_flow_api.g_varchar2_table(441) := '626F782D736861646F773A20302030203020317078202332363764623320696E7365743B0A7D0A2E742D4D656469614C6973742D6974656D57726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4D656469614C6973742D62616467';
wwv_flow_api.g_varchar2_table(442) := '652C0A2E742D4D656469614C6973742D64657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D4D656469614C6973742D69636F6E207B0A2020636F6C6F723A20236439643964393B0A7D0A2E742D4D656469614C6973742D2D636F6C';
wwv_flow_api.g_varchar2_table(443) := '73202E742D4D656469614C6973742D6974656D3A6265666F72652C0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0A20206261636B67726F756E642D636F6C6F723A2023653665366536';
wwv_flow_api.g_varchar2_table(444) := '3B0A7D0A2E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20236635666166643B0A20206C696E652D6865696768743A20323070783B0A7D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C';
wwv_flow_api.g_varchar2_table(445) := '207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267696E2D72696768743A203870783B0A20206D617267696E2D6C';
wwv_flow_api.g_varchar2_table(446) := '6566743A202D3470783B0A7D0A2E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20233134343235663B0A2020626F726465722D72696768743A2031707820736F6C696420233164363038393B0A2020626F726465722D6C65';
wwv_flow_api.g_varchar2_table(447) := '66743A2031707820736F6C696420233164363038393B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E612D4D';
wwv_flow_api.g_varchar2_table(448) := '656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D';
wwv_flow_api.g_varchar2_table(449) := '4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20206D617267696E2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E612D4D656E754261722D6974656D2E69';
wwv_flow_api.g_varchar2_table(450) := '732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A2072676261283234352C203235302C203235332C20302E35293B0A7D0A2E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(451) := '756E642D636F6C6F723A20233164363038393B0A7D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233164363038393B0A7D0A0A2E612D4D656E752D636F6E74656E7420';
wwv_flow_api.g_varchar2_table(452) := '7B0A2020626F726465722D7261646975733A203270783B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E752D6974656D536570202E612D4D656E752D68536570617261';
wwv_flow_api.g_varchar2_table(453) := '746F72207B0A2020626F726465722D636F6C6F723A20236466646664663B0A7D0A2E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A7D0A2E612D4D656E75202E612D4D656E752D69';
wwv_flow_api.g_varchar2_table(454) := '74656D2E69732D64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375';
wwv_flow_api.g_varchar2_table(455) := '736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A20233339333933393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F63';
wwv_flow_api.g_varchar2_table(456) := '75736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20233739373937393B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E612D4D656E75202E61';
wwv_flow_api.g_varchar2_table(457) := '2D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233134343235663B0A2020636F6C6F723A20236635666166643B0A7D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F';
wwv_flow_api.g_varchar2_table(458) := '6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7374';
wwv_flow_api.g_varchar2_table(459) := '61747573436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E6973';
wwv_flow_api.g_varchar2_table(460) := '2D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E';
wwv_flow_api.g_varchar2_table(461) := '752D616363656C2C0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020636F6C6F723A20236635666166643B0A7D0A2E612D4D656E';
wwv_flow_api.g_varchar2_table(462) := '75202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E3735293B0A7D0A2E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283234382C';
wwv_flow_api.g_varchar2_table(463) := '203234382C203234382C20302E3935293B0A2020626F726465722D636F6C6F723A20236466646664663B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A2E612D4D656E75426172';
wwv_flow_api.g_varchar2_table(464) := '207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D486561646572202E612D4D656E75426172207B0A20206261636B67726F756E642D636F6C6F723A20233134343235663B0A7D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(465) := '6E207B0A20200A7D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233333333333333B0A20206C696E652D6865696768743A20323070783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(466) := '6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0A2020646973706C61793A20696E6C696E652D626C6F636B3B0A202070616464696E673A2038707820303B0A2020766572746963616C2D616C69676E3A20746F703B0A20206D617267';
wwv_flow_api.g_varchar2_table(467) := '696E2D72696768743A203870783B0A20206D617267696E2D6C6566743A202D3470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A20206261636B67726F756E643A20236632663266323B0A2020626F726465722D7269';
wwv_flow_api.g_varchar2_table(468) := '6768743A2031707820736F6C696420236439643964393B0A2020626F726465722D6C6566743A2031707820736F6C696420236439643964393B0A20206D617267696E2D6C6566743A202D3170783B0A7D0A2E742D526567696F6E202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(469) := '722D6974656D3A66697273742D6368696C64207B0A20206D617267696E2D6C6566743A20303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F';
wwv_flow_api.g_varchar2_table(470) := '6C2C0A2E742D526567696F6E202E612D4D656E754261722E752D72746C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0A2020626F726465723A206E6F6E653B0A20';
wwv_flow_api.g_varchar2_table(471) := '206D617267696E2D72696768743A20303B0A202070616464696E673A203870782038707820387078203470783B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162';
wwv_flow_api.g_varchar2_table(472) := '656C207B0A2020636F6C6F723A20726762612835312C2035312C2035312C20302E35293B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A2023643964396439';
wwv_flow_api.g_varchar2_table(473) := '3B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74';
wwv_flow_api.g_varchar2_table(474) := '207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E202E612D4D656E752D6974';
wwv_flow_api.g_varchar2_table(475) := '656D536570202E612D4D656E752D68536570617261746F72207B0A2020626F726465722D636F6C6F723A20236532653265323B0A7D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(476) := '723A20236266626662663B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D';
wwv_flow_api.g_varchar2_table(477) := '0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(478) := '20233364336433643B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0A2020';
wwv_flow_api.g_varchar2_table(479) := '636F6C6F723A20233763376337633B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E';
wwv_flow_api.g_varchar2_table(480) := '646564207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E';
wwv_flow_api.g_varchar2_table(481) := '612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D73';
wwv_flow_api.g_varchar2_table(482) := '7461747573436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E61';
wwv_flow_api.g_varchar2_table(483) := '2D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E6973';
wwv_flow_api.g_varchar2_table(484) := '2D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E';
wwv_flow_api.g_varchar2_table(485) := '612D4D656E752D616363656C207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612836312C2036312C2036312C20302E373529';
wwv_flow_api.g_varchar2_table(486) := '3B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A2072676261283235322C203235322C203235322C20302E3935293B0A2020626F726465722D636F6C6F723A202365326532';
wwv_flow_api.g_varchar2_table(487) := '65323B0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0A7D0A0A2E742D486561646572207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D486561646572202E612D4D656E';
wwv_flow_api.g_varchar2_table(488) := '754261722D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E';
wwv_flow_api.g_varchar2_table(489) := '3A20746F703B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D486561646572202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(490) := '20233232366539652021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D';
wwv_flow_api.g_varchar2_table(491) := '63757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20233232366539652021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D637572';
wwv_flow_api.g_varchar2_table(492) := '72656E74202E612D4D656E754261722D6C6162656C2C0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(493) := '6F723A20236666666666662021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D486561646572202E612D4D';
wwv_flow_api.g_varchar2_table(494) := '656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233232366539652021696D706F7274616E743B0A7D0A2E742D486561646572202E612D4D656E';
wwv_flow_api.g_varchar2_table(495) := '754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E38293B0A2020626F726465722D636F6C6F723A20233236376462333B';
wwv_flow_api.g_varchar2_table(496) := '0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C20';
wwv_flow_api.g_varchar2_table(497) := '2E612D49636F6E2C0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233337393864353B';
wwv_flow_api.g_varchar2_table(498) := '0A2020626F726465722D636F6C6F723A20233337393864353B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375';
wwv_flow_api.g_varchar2_table(499) := '624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20233463613364393B0A2020626F726465722D636F6C6F723A20233463613364393B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375';
wwv_flow_api.g_varchar2_table(500) := '7272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(501) := '663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(502) := '6F756E642D636F6C6F723A20233934633865383B0A2020626F726465722D636F6C6F723A20233934633865383B0A2020636F6C6F723A20233130333434613B0A7D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(503) := '65722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20233232366539653B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D';
wwv_flow_api.g_varchar2_table(504) := '486561646572202E612D4D656E752D616363656C207B0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F637573';
wwv_flow_api.g_varchar2_table(505) := '65642C0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233164363038392021696D706F7274616E743B0A7D0A2E742D426F6479207B';
wwv_flow_api.g_varchar2_table(506) := '0A20200A20200A20200A20200A20200A20200A7D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233339333933393B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E';
wwv_flow_api.g_varchar2_table(507) := '612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D426F6479202E612D4D656E754261722D697465';
wwv_flow_api.g_varchar2_table(508) := '6D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(509) := '202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D';
wwv_flow_api.g_varchar2_table(510) := '656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D';
wwv_flow_api.g_varchar2_table(511) := '4D656E754261722D6C6162656C207B0A2020636F6C6F723A20233339333933392021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E';
wwv_flow_api.g_varchar2_table(512) := '6465642C0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236466646664662021696D706F7274616E743B0A7D';
wwv_flow_api.g_varchar2_table(513) := '0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(514) := '6F723A20236666666666663B0A2020626F726465722D7261646975733A20313030253B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D73';
wwv_flow_api.g_varchar2_table(515) := '75624D656E75436F6C202E612D49636F6E2C0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(516) := '236238623862383B0A2020626F726465722D636F6C6F723A20236238623862383B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D';
wwv_flow_api.g_varchar2_table(517) := '656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E75';
wwv_flow_api.g_varchar2_table(518) := '2D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233339333933393B0A2020626F726465722D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(519) := '39333933393B0A2020636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B';
wwv_flow_api.g_varchar2_table(520) := '67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(521) := '65722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F';
wwv_flow_api.g_varchar2_table(522) := '6479202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E3735293B0A7D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D426F';
wwv_flow_api.g_varchar2_table(523) := '6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236562656265622021696D706F7274616E743B0A7D0A2E742D426F6479202E612D4D656E75426172203E';
wwv_flow_api.g_varchar2_table(524) := '20756C207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236466646664663B0A7D0A2E742D426F6479202E61';
wwv_flow_api.g_varchar2_table(525) := '2D4D656E754261722D6974656D2E69732D666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(526) := '722D6C6162656C207B0A2020636F6C6F723A20233430343034303B0A2020766572746963616C2D616C69676E3A20746F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020766572746963616C2D616C69676E3A2074';
wwv_flow_api.g_varchar2_table(527) := '6F703B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F63757365642C0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A202365';
wwv_flow_api.g_varchar2_table(528) := '36653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D637572';
wwv_flow_api.g_varchar2_table(529) := '72656E742E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E';
wwv_flow_api.g_varchar2_table(530) := '74202E612D4D656E754261722D6C6162656C2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(531) := '20233430343034302021696D706F7274616E743B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0A2E742D526567696F6E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(532) := '4261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236536653665362021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E754261';
wwv_flow_api.g_varchar2_table(533) := '722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E38293B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020626F72';
wwv_flow_api.g_varchar2_table(534) := '6465722D7261646975733A20313030253B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F';
wwv_flow_api.g_varchar2_table(535) := '6E2C0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0A2020626F72';
wwv_flow_api.g_varchar2_table(536) := '6465722D636F6C6F723A20236266626662663B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E7543';
wwv_flow_api.g_varchar2_table(537) := '6F6C202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E';
wwv_flow_api.g_varchar2_table(538) := '69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D636F6C6F723A20233430343034303B0A2020626F726465722D636F6C6F723A20233430343034303B0A202063';
wwv_flow_api.g_varchar2_table(539) := '6F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(540) := '6F6C6F723A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D776964';
wwv_flow_api.g_varchar2_table(541) := '74683A20303B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(542) := '202E612D4D656E752D616363656C207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D5265';
wwv_flow_api.g_varchar2_table(543) := '67696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D4D656E7542';
wwv_flow_api.g_varchar2_table(544) := '6172203E20756C207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A2E742D52';
wwv_flow_api.g_varchar2_table(545) := '6567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0A2020626F782D736861646F773A206E6F6E653B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(546) := '65722D77696474683A20303B0A20206261636B67726F756E642D636F6C6F723A20233232366539653B0A7D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4865616465722D7573';
wwv_flow_api.g_varchar2_table(547) := '65724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0A20206261636B67726F756E642D636F6C6F723A20233164363038392021696D706F7274616E743B0A7D0A2E742D4865616465722D757365724D656E752E612D4D656E';
wwv_flow_api.g_varchar2_table(548) := '75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A20202D7765626B69742D666F6E742D736D6F6F7468696E673A20616E7469616C69617365643B0A7D0A0A2E742D4E6176696761';
wwv_flow_api.g_varchar2_table(549) := '74696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0A2020626F726465722D7261646975733A2030203020327078203270783B0A20206261636B67726F756E642D636F6C6F723A20233134343235663B0A2020626F726465722D77';
wwv_flow_api.g_varchar2_table(550) := '696474683A20303B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D65787061';
wwv_flow_api.g_varchar2_table(551) := '6E646564207B0A20206261636B67726F756E642D636F6C6F723A20233164363038392021696D706F7274616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D';
wwv_flow_api.g_varchar2_table(552) := '4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0A2020636F6C6F723A20236638663966612021696D706F72';
wwv_flow_api.g_varchar2_table(553) := '74616E743B0A7D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D20';
wwv_flow_api.g_varchar2_table(554) := '612C0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A0A2E742D';
wwv_flow_api.g_varchar2_table(555) := '506F7075704C4F562D6C696E6B7320613A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20233233373461363B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A';
wwv_flow_api.g_varchar2_table(556) := '686F766572207464207B0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0A7D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0A2020';
wwv_flow_api.g_varchar2_table(557) := '6261636B67726F756E642D636F6C6F723A20234641464146413B0A7D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C7473536574';
wwv_flow_api.g_varchar2_table(558) := '2D6C696E6B207B0A2020636F6C6F723A20233233373461363B0A7D0A2E742D506167652D2D706F7075704C4F56207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D506F7075704C4F562D616374696F6E73207B0A2020';
wwv_flow_api.g_varchar2_table(559) := '6261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D506F7075';
wwv_flow_api.g_varchar2_table(560) := '704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(561) := '2E742D506F7075704C4F562D6C696E6B7320612C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D506F7075704C4F562D6C696E6B7320613A68';
wwv_flow_api.g_varchar2_table(562) := '6F766572207B0A20206261636B67726F756E642D636F6C6F723A20233263393264303B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(563) := '39373937393B0A7D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0A2020636F6C6F723A20233664366436643B0A7D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174';
wwv_flow_api.g_varchar2_table(564) := '696F6E207B0A2020636F6C6F723A20233664366436643B0A7D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B';
wwv_flow_api.g_varchar2_table(565) := '0A2020636F6C6F723A20233830383038303B0A7D0A0A2E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E6669656C64646174612062207B0A2020636F6C6F723A20233339';
wwv_flow_api.g_varchar2_table(566) := '333933393B0A7D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0A2020636F6C6F723A20233264326432';
wwv_flow_api.g_varchar2_table(567) := '643B0A7D0A2E742D526567696F6E202E6669656C646461746120622C0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D686561646572207B0A20';
wwv_flow_api.g_varchar2_table(568) := '206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236532653265323B0A7D0A2E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A';
wwv_flow_api.g_varchar2_table(569) := '2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(570) := '6E643A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D737461636B6564207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D737461636B6564203E202E742D526567';
wwv_flow_api.g_varchar2_table(571) := '696F6E2D686561646572207B0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(572) := '636F6C6F723A20236666666666663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0A7D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D52656769';
wwv_flow_api.g_varchar2_table(573) := '6F6E2D7469746C652C0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E2D2D6163';
wwv_flow_api.g_varchar2_table(574) := '63656E7431203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(575) := '6C6F723A20236666326435353B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666363037653B0A7D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(576) := '7469746C652C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E743120';
wwv_flow_api.g_varchar2_table(577) := '3E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D42757474';
wwv_flow_api.g_varchar2_table(578) := '6F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E';
wwv_flow_api.g_varchar2_table(579) := '6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233333393566663B0A7D0A2E742D52';
wwv_flow_api.g_varchar2_table(580) := '6567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E';
wwv_flow_api.g_varchar2_table(581) := '2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74322E74';
wwv_flow_api.g_varchar2_table(582) := '2D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D52';
wwv_flow_api.g_varchar2_table(583) := '6567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A2023666639353030';
wwv_flow_api.g_varchar2_table(584) := '3B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236666616133333B0A7D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D5265';
wwv_flow_api.g_varchar2_table(585) := '67696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(586) := '686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A20';
wwv_flow_api.g_varchar2_table(587) := '20636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D6865616465722C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E74';
wwv_flow_api.g_varchar2_table(588) := '2D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A2020626F726465722D626F74746F6D3A2031707820736F6C696420233261633834353B0A7D0A2E742D526567696F6E2D2D616363656E';
wwv_flow_api.g_varchar2_table(589) := '7434203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D52';
wwv_flow_api.g_varchar2_table(590) := '6567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D6E6F42';
wwv_flow_api.g_varchar2_table(591) := '6F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A20233037316630623B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572';
wwv_flow_api.g_varchar2_table(592) := '2C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A2020626F726465722D62';
wwv_flow_api.g_varchar2_table(593) := '6F74746F6D3A2031707820736F6C696420236138613861633B0A7D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E74';
wwv_flow_api.g_varchar2_table(594) := '352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D526567696F6E2D7469746C652C0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D4275';
wwv_flow_api.g_varchar2_table(595) := '74746F6E2D2D6E6F55492C0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549207B0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(596) := '6666663B0A7D0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A2030';
wwv_flow_api.g_varchar2_table(597) := '2021696D706F7274616E743B0A7D0A2E742D526567696F6E2068322E742D526567696F6E2D7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D526567696F6E2D626F6479207B0A2020636F6C6F723A20233430343034303B0A';
wwv_flow_api.g_varchar2_table(598) := '7D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D7363726F6C6C426F6479203E202E';
wwv_flow_api.g_varchar2_table(599) := '742D526567696F6E2D626F647957726170203E202E742D526567696F6E2D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203330252C2072676261283235352C203235352C203235352C20';
wwv_flow_api.g_varchar2_table(600) := '3029292C206C696E6561722D6772616469656E742872676261283235352C203235352C203235352C2030292C20236666666666662037302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3032';
wwv_flow_api.g_varchar2_table(601) := '35292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(602) := '636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D';
wwv_flow_api.g_varchar2_table(603) := '526567696F6E2D686561646572207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D426F64792D73696465202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(604) := '73706172656E743B0A7D0A2E742D526567696F6E2C0A2E742D526567696F6E2D686561646572207B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D526567696F6E2D2D6E6F4247207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(605) := '723A207472616E73706172656E743B0A7D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A7D0A2E742D526567696F6E2D2D6361726F7573656C';
wwv_flow_api.g_varchar2_table(606) := '202E617065782D7264732D627574746F6E207B0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(607) := '302C20302C20302C20302E3235293B0A2020636F6C6F723A20234646463B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(608) := '626128302C20302C20302C20302E35293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F6E3A6163746976652C0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D627574746F';
wwv_flow_api.g_varchar2_table(609) := '6E3A6163746976653A666F637573207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D6E6578742D726567696F';
wwv_flow_api.g_varchar2_table(610) := '6E207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E617065782D7264732D70726576696F75732D726567696F6E207B0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(611) := '2030203270782032707820303B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D7264732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C69';
wwv_flow_api.g_varchar2_table(612) := '6E6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3435293B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E617065782D72';
wwv_flow_api.g_varchar2_table(613) := '64732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A7D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567';
wwv_flow_api.g_varchar2_table(614) := '696F6E2D6361726F7573656C4C696E6B207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A2020626F726465722D7261646975733A20313030253B0A7D0A0A2E742D5265706F72742D63656C6C';
wwv_flow_api.g_varchar2_table(615) := '2C0A2E742D5265706F72742D636F6C48656164207B0A2020626F726465722D6C6566743A2031707820736F6C696420236536653665363B0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F7274';
wwv_flow_api.g_varchar2_table(616) := '2D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0A2020626F726465722D7269';
wwv_flow_api.g_varchar2_table(617) := '6768743A2031707820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0A2020626F726465722D626F74746F6D3A2031707820736F6C6964';
wwv_flow_api.g_varchar2_table(618) := '20236536653665363B0A7D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0A2020626F726465722D626F74746F6D3A203170';
wwv_flow_api.g_varchar2_table(619) := '7820736F6C696420236536653665363B0A7D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0A2E742D5265706F72742D2D726F7748';
wwv_flow_api.g_varchar2_table(620) := '6967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E642D636F6C6F723A20236661666166612021696D706F';
wwv_flow_api.g_varchar2_table(621) := '7274616E743B0A7D0A2E742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(622) := '2D636F6C6F723A207472616E73706172656E743B0A7D0A0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C20';
wwv_flow_api.g_varchar2_table(623) := '7B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0A202062';
wwv_flow_api.g_varchar2_table(624) := '61636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D536F6369616C466F6F746572207B0A202070616464696E672D746F703A20343870783B0A202070616464696E672D626F74746F';
wwv_flow_api.g_varchar2_table(625) := '6D3A20323470783B0A7D0A2E742D536F6369616C466F6F746572202E726F77207B0A202070616464696E672D746F703A203870783B0A7D0A2E742D536F6369616C466F6F746572202E636F6C207B0A202070616464696E672D626F74746F6D3A20387078';
wwv_flow_api.g_varchar2_table(626) := '3B0A2020746578742D616C69676E3A2063656E7465723B0A20207472616E736974696F6E3A20616C6C202E32733B0A7D0A2E742D536F6369616C466F6F746572202E636F6C3A686F766572207B0A20202D7765626B69742D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(627) := '72616E736C61746559282D387078293B0A20202D6D6F7A2D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6D732D7472616E73666F726D3A207472616E736C61746559282D387078293B0A20202D6F2D7472616E73666F';
wwv_flow_api.g_varchar2_table(628) := '726D3A207472616E736C61746559282D387078293B0A20207472616E73666F726D3A207472616E736C61746559282D387078293B0A2020626F782D736861646F773A203070782038707820347078202D347078207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(629) := '3035293B0A7D0A2E742D536F6369616C466F6F7465722061207B0A20207472616E736974696F6E3A20616C6C202E32733B0A2020646973706C61793A20626C6F636B3B0A2020746578742D6465636F726174696F6E3A206E6F6E653B0A2020746578742D';
wwv_flow_api.g_varchar2_table(630) := '616C69676E3A2063656E7465723B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E38293B0A7D0A2E742D536F6369616C466F6F7465722061202E742D49636F6E207B0A2020646973706C61793A20626C6F636B3B0A20206D6172';
wwv_flow_api.g_varchar2_table(631) := '67696E3A2030206175746F3B0A2020636F6C6F723A20726762612835372C2035372C2035372C20302E34293B0A7D0A2E742D536F6369616C466F6F7465722061202E6661207B0A2020666F6E742D73697A653A20323870783B0A202077696474683A2033';
wwv_flow_api.g_varchar2_table(632) := '3270783B0A20206865696768743A20333270783B0A20206C696E652D6865696768743A20333270783B0A2020746578742D616C69676E3A2063656E7465723B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E207B0A202077696474';
wwv_flow_api.g_varchar2_table(633) := '683A20333270783B0A20206865696768743A20333270783B0A20206C696E652D6865696768743A20333270783B0A7D0A2E742D536F6369616C466F6F7465722061202E612D49636F6E3A6265666F7265207B0A2020666F6E742D73697A653A2033327078';
wwv_flow_api.g_varchar2_table(634) := '3B0A7D0A2E742D536F6369616C466F6F74657220613A686F7665722C0A2E742D536F6369616C466F6F74657220613A686F766572202E742D49636F6E207B0A2020636F6C6F723A20233233373461363B0A7D0A2E742D536561726368526573756C74732D';
wwv_flow_api.g_varchar2_table(635) := '64657363207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D536561726368526573756C74732D64617465207B0A2020636F6C6F723A20233663366336633B0A7D0A2E742D536561726368526573756C74732D6D697363207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(636) := '6F723A20233663366336633B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64657363207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465';
wwv_flow_api.g_varchar2_table(637) := '207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D626C6F636B48656164';
wwv_flow_api.g_varchar2_table(638) := '6572207B0A2020636F6C6F723A20233430343034303B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A7D0A2E742D5374617475734C6973742D68656164657254657874416C742C0A2E742D5374617475734C6973742D617474';
wwv_flow_api.g_varchar2_table(639) := '722C0A2E742D5374617475734C6973742D7465787444657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D5374617475734C6973742D6974656D5469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D537461';
wwv_flow_api.g_varchar2_table(640) := '7475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0A2020636F6C6F723A20233730373037303B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(641) := '46463B0A7D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(642) := '3A2032707820327078203020303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0A2020626F726465722D7261646975733A20323470783B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(643) := '6F6C6F723A20236666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D5374617475734C6973742D';
wwv_flow_api.g_varchar2_table(644) := '6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D64616E676572202E742D5374617475';
wwv_flow_api.g_varchar2_table(645) := '734C6973742D6D61726B65722C0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(646) := '2D636F6C6F723A20236666336233303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D6D61726B6572207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(647) := '6F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0A20';
wwv_flow_api.g_varchar2_table(648) := '206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572';
wwv_flow_api.g_varchar2_table(649) := '207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61';
wwv_flow_api.g_varchar2_table(650) := '726B6572207B0A2020636F6C6F723A20234130413041303B0A7D0A0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B2C0A2E617065782D726473202E617065782D726473';
wwv_flow_api.g_varchar2_table(651) := '2D73656C65637465642061207B0A2020626F782D736861646F773A2030202D3270782030202336316165646520696E7365743B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F6375732C0A2E617065782D72647320';
wwv_flow_api.g_varchar2_table(652) := '613A666F637573207B0A2020626F782D736861646F773A20302030203020327078202336316165646520696E7365743B0A7D0A2E742D546162732D2D70696C6C207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428236638';
wwv_flow_api.g_varchar2_table(653) := '663866382C2023663466346634293B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D426F6479202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F64792D';
wwv_flow_api.g_varchar2_table(654) := '7469746C65202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233664366436643B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A2023366436';
wwv_flow_api.g_varchar2_table(655) := '6436643B0A7D0A2E742D526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D49636F6E207B0A2020636F6C6F723A20233830383038303B0A7D0A';
wwv_flow_api.g_varchar2_table(656) := '2E742D426F6479202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A';
wwv_flow_api.g_varchar2_table(657) := '2020636F6C6F723A20233264326432643B0A7D0A2E742D426F64792D696E666F202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D526567696F6E202E742D546162732D';
wwv_flow_api.g_varchar2_table(658) := '2D70696C6C202E742D546162732D6C696E6B2C0A2E742D427574746F6E526567696F6E202E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D70696C6C202E';
wwv_flow_api.g_varchar2_table(659) := '742D546162732D6C696E6B3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(660) := '3436393646433B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D69';
wwv_flow_api.g_varchar2_table(661) := '74656D3A66697273742D6368696C64202E742D546162732D6C696E6B207B0A2020626F726465722D7261646975733A2032707820302030203270783B0A7D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D61637469766520';
wwv_flow_api.g_varchar2_table(662) := '2E742D546162732D6C696E6B207B0A20206261636B67726F756E642D636F6C6F723A20234646463B0A7D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D546162732D2D7369';
wwv_flow_api.g_varchar2_table(663) := '6D706C65202E742D546162732D6C696E6B2C0A2E617065782D7264732061207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F7665722C0A2E617065782D7264732061';
wwv_flow_api.g_varchar2_table(664) := '3A686F766572207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0A7D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A6163746976652C0A2E617065782D72647320';
wwv_flow_api.g_varchar2_table(665) := '613A616374697665207B0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0A7D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(666) := '2E617065782D7264732061207B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D7469746C65202E617065782D7264';
wwv_flow_api.g_varchar2_table(667) := '7320612C0A2E742D426F64792D696E666F202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D426F64792D696E666F202E617065782D7264732061207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D5265';
wwv_flow_api.g_varchar2_table(668) := '67696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B2C0A2E742D526567696F6E202E617065782D7264732061207B0A2020636F6C6F723A20233430343034303B0A7D0A2E617065782D7264732D686F7665722E6C65667420';
wwv_flow_api.g_varchar2_table(669) := '61207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023653065666638203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A20206261636B';
wwv_flow_api.g_varchar2_table(670) := '67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023653065666638203530252C2072676261283235352C203235352C203235352C2030292031303025293B0A20200A7D0A2E617065782D7264732D686F7665722E7269';
wwv_flow_api.g_varchar2_table(671) := '6768742061207B0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236530656666382030252C2072676261283235352C203235352C203235352C2030292031252C20236530656666382035';
wwv_flow_api.g_varchar2_table(672) := '3025293B0A20200A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236530656666382030252C2072676261283235352C203235352C203235352C2030292031252C202365306566663820353025293B';
wwv_flow_api.g_varchar2_table(673) := '0A20200A7D0A0A2E612D546167436C6F75642D6C696E6B207B0A2020626F726465722D636F6C6F723A20236632663266323B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E643A20236661666166613B0A20207472';
wwv_flow_api.g_varchar2_table(674) := '616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0A2020636F6C6F723A20233232373161323B0A7D';
wwv_flow_api.g_varchar2_table(675) := '0A2E612D546167436C6F75642D6C696E6B207370616E207B0A20207472616E736974696F6E3A20636F6C6F72202E32733B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0A2020746578742D6465636F726174696F6E3A206E6F6E65';
wwv_flow_api.g_varchar2_table(676) := '3B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020626F726465722D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A2020626F782D736861646F773A20302030203020327078202332';
wwv_flow_api.g_varchar2_table(677) := '363764623320696E7365743B0A7D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E612D546167436C6F75642D636F756E74207B0A2020636F6C6F723A20233636363636';
wwv_flow_api.g_varchar2_table(678) := '363B0A2020666F6E742D7765696768743A203230303B0A7D0A2E742D54696D656C696E65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D54696D656C696E652D757365726E616D652C0A2E742D54696D656C696E652D646174652C0A2E';
wwv_flow_api.g_varchar2_table(679) := '742D54696D656C696E652D64657363207B0A2020636F6C6F723A20233733373337333B0A7D0A2E742D54696D656C696E652D77726170207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D54696D656C696E652D74797065207B0A20206261';
wwv_flow_api.g_varchar2_table(680) := '636B67726F756E642D636F6C6F723A20236632663266323B0A2020636F6C6F723A20233364336433643B0A7D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A';
wwv_flow_api.g_varchar2_table(681) := '2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0A20206261636B67726F756E642D636F6C6F723A20233235373863663B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D65';
wwv_flow_api.g_varchar2_table(682) := '6C696E652D747970652E69732D72656D6F766564207B0A20206261636B67726F756E642D636F6C6F723A20236539306330303B0A2020636F6C6F723A20234646463B0A7D0A2E742D54696D656C696E652D777261703A666F637573207B0A20206F75746C';
wwv_flow_api.g_varchar2_table(683) := '696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202332363764623320696E7365743B0A7D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E6176207B0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(684) := '636F6C6F723A20233139353137343B0A7D0A2E742D526567696F6E207B0A20200A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B';
wwv_flow_api.g_varchar2_table(685) := '0A2020626F782D736861646F773A20302030203020317078202365386538653820696E7365743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D6375';
wwv_flow_api.g_varchar2_table(686) := '7272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(687) := '2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(688) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C';
wwv_flow_api.g_varchar2_table(689) := '6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D';
wwv_flow_api.g_varchar2_table(690) := '0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274';
wwv_flow_api.g_varchar2_table(691) := '616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(692) := '202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E';
wwv_flow_api.g_varchar2_table(693) := '742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0A2E742D526567696F6E202E';
wwv_flow_api.g_varchar2_table(694) := '612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E';
wwv_flow_api.g_varchar2_table(695) := '742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(696) := '2D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(697) := '6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49';
wwv_flow_api.g_varchar2_table(698) := '636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3935293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E6973';
wwv_flow_api.g_varchar2_table(699) := '2D686F766572202E66612C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(700) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(701) := '6C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C';
wwv_flow_api.g_varchar2_table(702) := '6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E';
wwv_flow_api.g_varchar2_table(703) := '742E69732D63757272656E742C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(704) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(705) := '2D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(706) := '746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20233430343034302021696D706F7274616E743B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(707) := '76656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A7D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E6973';
wwv_flow_api.g_varchar2_table(708) := '2D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E61';
wwv_flow_api.g_varchar2_table(709) := '2D54726565566965772D726F772E69732D666F6375736564207B0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54';
wwv_flow_api.g_varchar2_table(710) := '726565566965772D726F772E69732D666F6375736564207B0A2020626F782D736861646F773A20302030203020317078202332613839633420696E7365743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(711) := '76656C202E612D54726565566965772D726F772E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0A2E';
wwv_flow_api.g_varchar2_table(712) := '742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(713) := '723A20233234373761623B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0A2E742D547265654E6176202E612D54';
wwv_flow_api.g_varchar2_table(714) := '726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0A';
wwv_flow_api.g_varchar2_table(715) := '20206261636B67726F756E642D636F6C6F723A20233232366539653B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0A20206261';
wwv_flow_api.g_varchar2_table(716) := '636B67726F756E642D636F6C6F723A20233237383062372021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572';
wwv_flow_api.g_varchar2_table(717) := '202B202E612D54726565566965772D746F67676C652C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0A202063';
wwv_flow_api.g_varchar2_table(718) := '6F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B20';
wwv_flow_api.g_varchar2_table(719) := '2E612D54726565566965772D746F67676C653A686F7665722C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F';
wwv_flow_api.g_varchar2_table(720) := '766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F';
wwv_flow_api.g_varchar2_table(721) := '766572207B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0A202063';
wwv_flow_api.g_varchar2_table(722) := '6F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(723) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(724) := '4C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E6973';
wwv_flow_api.g_varchar2_table(725) := '2D63757272656E742D2D746F70202E66612C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0A2E742D5472';
wwv_flow_api.g_varchar2_table(726) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E';
wwv_flow_api.g_varchar2_table(727) := '742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0A2020636F6C6F723A20696E68657269743B0A7D0A2E742D547265654E6176202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(728) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E';
wwv_flow_api.g_varchar2_table(729) := '74656E742E69732D73656C65637465642C0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(730) := '723A20236666666666663B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0A2020636F6C6F723A2072676261283235352C203235352C20323535';
wwv_flow_api.g_varchar2_table(731) := '2C20302E3735293B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0A2020636F6C6F723A20236666666666662021696D706F7274';
wwv_flow_api.g_varchar2_table(732) := '616E743B0A7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E31733B0A';
wwv_flow_api.g_varchar2_table(733) := '7D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(734) := '65772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D547265654E6176202E612D547265';
wwv_flow_api.g_varchar2_table(735) := '65566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0A2020636F6C6F723A20236666666666663B0A7D0A0A2E742D4469616C6F672D2D77697A617264207B0A20';
wwv_flow_api.g_varchar2_table(736) := '20626F726465723A20236536653665363B0A7D0A2E742D57697A617264207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020626F726465722D7261646975733A203270783B0A7D0A2E742D57697A617264202E742D5769';
wwv_flow_api.g_varchar2_table(737) := '7A6172642D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E742D57697A6172642D2D6D6F64616C207B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F6479202E742D57697A6172642D2D6D6F';
wwv_flow_api.g_varchar2_table(738) := '64616C202E742D57697A6172642D626F6479207B0A20206261636B67726F756E643A206C696E6561722D6772616469656E742823666666666666203430252C2072676261283235352C203235352C203235352C203029292C206C696E6561722D67726164';
wwv_flow_api.g_varchar2_table(739) := '69656E742872676261283235352C203235352C203235352C2030292C20236666666666662036302529203020313030252C206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303235292C207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(740) := '2C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E3032352929203020313030253B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(741) := '7D0A626F6479202E742D57697A6172642D2D6D6F64616C202E742D526567696F6E207B0A20206261636B67726F756E643A20236666666666663B0A7D0A2E742D57697A617264207B0A2020626F726465722D636F6C6F723A20236536653665363B0A7D0A';
wwv_flow_api.g_varchar2_table(742) := '2E742D57697A617264202E742D57697A6172642D686561646572207B0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0A2020626F726465722D636F6C6F723A20236564656465643B0A7D0A2E742D57697A61726453746570732D';
wwv_flow_api.g_varchar2_table(743) := '777261703A6166746572207B0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0A7D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(744) := '2D636F6C6F723A20236363636363633B0A7D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A202334636439';
wwv_flow_api.g_varchar2_table(745) := '36343B0A2020636F6C6F723A20234646463B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0A20206261636B67726F756E642D636F6C6F723A202332363764';
wwv_flow_api.g_varchar2_table(746) := '62333B0A7D0A2E742D57697A61726453746570732D6C6162656C207B0A2020636F6C6F723A20233636363636363B0A7D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C20';
wwv_flow_api.g_varchar2_table(747) := '7B0A2020636F6C6F723A20233430343034303B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20303B0A2020626F7264';
wwv_flow_api.g_varchar2_table(748) := '65722D626F74746F6D2D6C6566742D7261646975733A20303B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(749) := '20233339333933393B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0A2020626F726465722D7261646975733A20313030253B0A7D0A626F6479202E75692D6469616C6F67202E7569';
wwv_flow_api.g_varchar2_table(750) := '2D6469616C6F672D627574746F6E70616E65207B0A2020626F726465722D746F702D636F6C6F723A20234630463046303B0A7D0A0A626F6479202E75692D7769646765742D636F6E74656E74207B0A2020626F726465722D636F6C6F723A202365626562';
wwv_flow_api.g_varchar2_table(751) := '65623B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0A2020636F6C6F723A20233233373461363B0A7D';
wwv_flow_api.g_varchar2_table(752) := '0A626F6479202E75692D7769646765742D686561646572207B0A2020626F726465722D636F6C6F723A20236562656265623B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020636F6C6F723A20233364336433643B0A7D0A';
wwv_flow_api.g_varchar2_table(753) := '626F6479202E75692D7769646765742D6865616465722061207B0A2020636F6C6F723A20233364336433643B0A7D0A0A626F6479202E75692D73746174652D64656661756C742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D';
wwv_flow_api.g_varchar2_table(754) := '73746174652D64656661756C742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A2020636F6C6F723A2023333833';
wwv_flow_api.g_varchar2_table(755) := '3833383B0A7D0A626F6479202E75692D73746174652D64656661756C7420612C0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0A626F';
wwv_flow_api.g_varchar2_table(756) := '6479202E75692D73746174652D61637469766520612C0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0A2020636F6C6F723A2023323337';
wwv_flow_api.g_varchar2_table(757) := '3461363B0A7D0A626F6479202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0A626F6479202E75692D7769646765742D686561646572202E75692D737461';
wwv_flow_api.g_varchar2_table(758) := '74652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D0A626F6479202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D636F';
wwv_flow_api.g_varchar2_table(759) := '6E74656E74202E75692D73746174652D666F6375732C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0A2020626F782D736861646F773A20302030203020317078202332363764623320696E7365';
wwv_flow_api.g_varchar2_table(760) := '742C20302030203170782032707820726762612833382C203132352C203137392C20302E3235292021696D706F7274616E743B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233338333833383B0A7D';
wwv_flow_api.g_varchar2_table(761) := '0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0A20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A2030203020302031';
wwv_flow_api.g_varchar2_table(762) := '7078202332363764623320696E7365742C20302030203170782032707820726762612833382C203132352C203137392C20302E3235292021696D706F7274616E743B0A7D0A626F6479202E75692D73746174652D686F76657220612C0A626F6479202E75';
wwv_flow_api.g_varchar2_table(763) := '692D73746174652D686F76657220613A686F7665722C0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0A626F6479202E75692D73746174652D66';
wwv_flow_api.g_varchar2_table(764) := '6F63757320612C0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0A';
wwv_flow_api.g_varchar2_table(765) := '2020636F6C6F723A20233233373461363B0A7D0A626F6479202E75692D73746174652D6163746976652C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(766) := '2D686561646572202E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0A2020636F6C6F723A20233338333833383B0A7D0A0A626F6479202E75692D73746174652D686967686C696768';
wwv_flow_api.g_varchar2_table(767) := '742C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(768) := '726F756E642D636F6C6F723A20236530656666383B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D73746174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D7374';
wwv_flow_api.g_varchar2_table(769) := '6174652D686967686C6967687420612C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D73746174652D65';
wwv_flow_api.g_varchar2_table(770) := '72726F722C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(771) := '2D636F6C6F723A20236539306330303B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F7220612C0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F72';
wwv_flow_api.g_varchar2_table(772) := '20612C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0A2020636F6C6F723A20236666656165393B0A7D0A626F6479202E75692D73746174652D6572726F722D746578742C0A626F6479202E';
wwv_flow_api.g_varchar2_table(773) := '75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0A2020636F6C6F723A202365393063';
wwv_flow_api.g_varchar2_table(774) := '30303B0A7D0A0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B0A202062';
wwv_flow_api.g_varchar2_table(775) := '61636B67726F756E642D636F6C6F723A207472616E73706172656E743B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D7374';
wwv_flow_api.g_varchar2_table(776) := '6174652D6163746976652C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B';
wwv_flow_api.g_varchar2_table(777) := '0A2020636F6C6F723A20236666666666663B0A2020666F6E742D7765696768743A20626F6C643B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D61637469';
wwv_flow_api.g_varchar2_table(778) := '76652E75692D73746174652D686F7665722C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F766572207B0A20206261636B';
wwv_flow_api.g_varchar2_table(779) := '67726F756E642D636F6C6F723A20233236376462332021696D706F7274616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686F7665722C0A626F64';
wwv_flow_api.g_varchar2_table(780) := '79202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0A20206261636B67726F756E642D636F6C6F723A20236632663266322021696D706F7274616E743B0A7D0A626F';
wwv_flow_api.g_varchar2_table(781) := '6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0A';
wwv_flow_api.g_varchar2_table(782) := '20206F75746C696E653A206E6F6E653B0A2020626F782D736861646F773A20302030203020317078202332363764623320696E7365742C20302030203170782032707820726762612833382C203132352C203137392C20302E3235292021696D706F7274';
wwv_flow_api.g_varchar2_table(783) := '616E743B0A7D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0A626F6479202E75692D646174657069636B657220746420612E75692D';
wwv_flow_api.g_varchar2_table(784) := '73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A626F6479202E75692D646174657069636B6572207468207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(785) := '233830383038303B0A7D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520';
wwv_flow_api.g_varchar2_table(786) := '627574746F6E2C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(787) := '7261646975733A203270783B0A7D0A0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0A20206261636B67726F756E642D636F6C6F723A20236663666366633B0A2020626F726465722D626F74746F6D3A20';
wwv_flow_api.g_varchar2_table(788) := '31707820736F6C696420236532653265323B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0A2020636F6C6F723A20233364336433643B0A7D0A626F6479202E75692D6469616C6F67202E75692D6469616C';
wwv_flow_api.g_varchar2_table(789) := '6F672D636F6E74656E742C0A2E742D4469616C6F672D70616765207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A0A2E742D4469616C6F672D2D77697A6172642E75692D';
wwv_flow_api.g_varchar2_table(790) := '6469616C6F672C0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F';
wwv_flow_api.g_varchar2_table(791) := '672D636F6E74656E74207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D';
wwv_flow_api.g_varchar2_table(792) := '7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A0A626F6479202E75692D636F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479';
wwv_flow_api.g_varchar2_table(793) := '202E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D746F702C0A626F6479202E75';
wwv_flow_api.g_varchar2_table(794) := '692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F647920';
wwv_flow_api.g_varchar2_table(795) := '2E75692D636F726E65722D6C6566742C0A626F6479202E75692D636F726E65722D626C207B0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D636F726E65722D626F74746F6D2C0A626F';
wwv_flow_api.g_varchar2_table(796) := '6479202E75692D636F726E65722D72696768742C0A626F6479202E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A626F6479202E75692D627574746F6E2E75692D63';
wwv_flow_api.g_varchar2_table(797) := '6F726E65722D616C6C207B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A62';
wwv_flow_api.g_varchar2_table(798) := '6F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0A626F6479202E';
wwv_flow_api.g_varchar2_table(799) := '75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0A7D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(800) := '2D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0A2020626F726465722D626F';
wwv_flow_api.g_varchar2_table(801) := '74746F6D2D6C6566742D7261646975733A203270783B0A7D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(802) := '2D627574746F6E2E75692D636F726E65722D6272207B0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0A7D0A0A2E61635F726573756C7473207B0A2020626F726465723A2031707820736F6C6964202364396439';
wwv_flow_api.g_varchar2_table(803) := '64393B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A2020636F6C6F723A20233430343034303B0A7D0A2E61635F6C6F6164696E67207B0A20206261636B67726F756E643A20236666666666662075726C28272E2E2F2E2E2F';
wwv_flow_api.g_varchar2_table(804) := '2E2E2F617065785F75692F696D672F6C65676163792F6C6F6164696E6731367831362E67696627292072696768742063656E746572206E6F2D7265706561743B0A7D0A2E61635F6F6464207B0A20206261636B67726F756E642D636F6C6F723A20236632';
wwv_flow_api.g_varchar2_table(805) := '663266323B0A7D0A626F6479202E61635F6F766572207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C69';
wwv_flow_api.g_varchar2_table(806) := '6E6543686172742D617869732D7469746C652C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334C696E65';
wwv_flow_api.g_varchar2_table(807) := '4368617274202E612D44334C696E6543686172742D61786973202E7469636B20746578742C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973202E7469636B2074657874207B0A202066696C6C3A202338';
wwv_flow_api.g_varchar2_table(808) := '30383038303B0A7D0A626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D61786973206C696E652C0A';
wwv_flow_api.g_varchar2_table(809) := '626F6479202E612D44334C696E654368617274202E612D44334C696E6543686172742D6178697320706174682C0A626F6479202E612D44334261724368617274202E612D44334C696E6543686172742D617869732070617468207B0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(810) := '3A20236536653665363B0A7D0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732D7469746C65207B0A202066696C6C3A20233430343034303B0A7D0A626F6479202E612D44334261724368617274202E612D';
wwv_flow_api.g_varchar2_table(811) := '443342617243686172742D67726964206C696E652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D67726964207B0A20207374726F6B653A20236536653665363B0A7D0A626F6479202E612D443342617243686172';
wwv_flow_api.g_varchar2_table(812) := '74202E612D443342617243686172742D61786973206C696E652C0A626F6479202E612D44334261724368617274202E612D443342617243686172742D617869732070617468207B0A20207374726F6B653A20236363636363633B0A7D0A626F6479202E61';
wwv_flow_api.g_varchar2_table(813) := '2D44334261724368617274202E612D443342617243686172742D61786973202E7469636B2074657874207B0A202066696C6C3A20233830383038303B0A7D0A626F6479202E612D4433546F6F6C746970207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(814) := '723A20233830383038303B0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0A7D0A626F6479202E612D4433546F6F6C7469702D636F6E74656E74207B0A2020626F726465722D746F703A20233939393939393B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(815) := '202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D65787465726E616C2D626F7264657273207B0A2020626F726465722D77696474683A20303B0A7D0A626F6479202E612D443343686172744C6567656E642D697465';
wwv_flow_api.g_varchar2_table(816) := '6D2C0A626F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D6261636B67726F756E64202E612D443343686172744C6567656E642D6C61796F7574207B0A20206261636B67726F756E642D636F6C6F723A2074';
wwv_flow_api.g_varchar2_table(817) := '72616E73706172656E743B0A2020626F726465722D77696474683A20302021696D706F7274616E743B0A7D0A626F6479202E612D443343686172744C6567656E642D6974656D2D76616C7565207B0A2020636F6C6F723A20233636363636363B0A7D0A62';
wwv_flow_api.g_varchar2_table(818) := '6F6479202E612D443343686172744C6567656E642E612D443343686172744C6567656E642D2D7371756172652D636F6C6F72202E612D443343686172744C6567656E642D6974656D2D636F6C6F72207B0A2020626F726465722D7261646975733A203130';
wwv_flow_api.g_varchar2_table(819) := '30253B0A2020626F726465722D72696768742D77696474683A20303B0A7D0A2E742D426F6479207B0A20200A20200A20200A7D0A2E742D426F6479202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C69642023646664666466';
wwv_flow_api.g_varchar2_table(820) := '3B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0A7D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233339333933393B0A';
wwv_flow_api.g_varchar2_table(821) := '7D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233739373937393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236632663266';
wwv_flow_api.g_varchar2_table(822) := '323B0A2020636F6C6F723A20233339333933393B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A2023323637646233';
wwv_flow_api.g_varchar2_table(823) := '3B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A2023666663633030';
wwv_flow_api.g_varchar2_table(824) := '3B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236633663366333B0A7D0A2E742D426F6479202E612D';
wwv_flow_api.g_varchar2_table(825) := '4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236565656565653B0A7D0A2E742D526567696F6E207B0A20200A20200A20200A7D0A2E742D526567696F6E202E612D4D696E6943616C207B0A20';
wwv_flow_api.g_varchar2_table(826) := '20626F726465723A2031707820736F6C696420236536653665363B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E694361';
wwv_flow_api.g_varchar2_table(827) := '6C2D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233830383038303B0A7D0A2E742D526567696F6E202E612D4D696E69';
wwv_flow_api.g_varchar2_table(828) := '43616C2D646179207B0A2020626F726465722D636F6C6F723A20236639663966393B0A2020636F6C6F723A20233430343034303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D';
wwv_flow_api.g_varchar2_table(829) := '64617465207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E694361';
wwv_flow_api.g_varchar2_table(830) := '6C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261';
wwv_flow_api.g_varchar2_table(831) := '636B67726F756E642D636F6C6F723A20236661666166613B0A7D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0A7D0A2E742D426F6479';
wwv_flow_api.g_varchar2_table(832) := '2D616374696F6E73207B0A20200A20200A20200A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236432643264323B0A2020626F726465722D7261646975733A20327078';
wwv_flow_api.g_varchar2_table(833) := '3B0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D61637469';
wwv_flow_api.g_varchar2_table(834) := '6F6E73202E612D4D696E6943616C2D6461794F665765656B207B0A2020636F6C6F723A20233663366336633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A2023653565';
wwv_flow_api.g_varchar2_table(835) := '3565353B0A2020636F6C6F723A20233263326332633B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(836) := '723A20233236376462333B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(837) := '756E642D636F6C6F723A20236666636330303B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(838) := '6F723A20236536653665363B0A7D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236531653165313B0A7D0A2E742D426F64792D696E666F20';
wwv_flow_api.g_varchar2_table(839) := '7B0A20200A20200A20200A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0A2020626F726465723A2031707820736F6C696420236236643965663B0A2020626F726465722D7261646975733A203270783B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(840) := '6E642D636F6C6F723A20236530656666383B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179';
wwv_flow_api.g_varchar2_table(841) := '4F665765656B207B0A2020636F6C6F723A20233664366436643B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0A2020626F726465722D636F6C6F723A20236435653966363B0A2020636F6C6F723A2023326432643264';
wwv_flow_api.g_varchar2_table(842) := '3B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20233236376462333B0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(843) := '666666663B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(844) := '3A20233030303030303B0A7D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0A20206261636B67726F756E642D636F6C6F723A20236437656266373B0A7D0A2E742D426F64792D696E666F202E61';
wwv_flow_api.g_varchar2_table(845) := '2D4D696E6943616C2D6461792E69732D6E756C6C207B0A20206261636B67726F756E642D636F6C6F723A20236366653666353B0A7D0A0A2E742D426F6479202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(846) := '723A20233339333933393B0A7D0A2E742D426F64792D696E666F202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233264326432643B0A7D0A2E742D526567696F6E202E612D44657461696C656443';
wwv_flow_api.g_varchar2_table(847) := '6F6E74656E744C6973742D7469746C652C0A2E742D427574746F6E526567696F6E202E612D44657461696C6564436F6E74656E744C6973742D7469746C65207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C65';
wwv_flow_api.g_varchar2_table(848) := '64436F6E74656E744C6973742D6974656D3A666F637573202E612D44657461696C6564436F6E74656E744C6973742D686561646572207B0A2020626F782D736861646F773A20302030203020317078202331643630383920696E7365743B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(849) := '79202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D657870616E646564202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E642D636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(850) := '66663B0A2020626F782D736861646F773A20302030203020317078202332363764623320696E7365743B0A2020636F6C6F723A20233236376462333B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6974656D2E69732D65';
wwv_flow_api.g_varchar2_table(851) := '7870616E646564202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0A20206261636B67726F756E642D636F6C6F723A20233164363038393B0A2020636F6C6F723A20236666666666663B0A2020626F782D';
wwv_flow_api.g_varchar2_table(852) := '736861646F773A20302030203020317078202331643630383920696E7365743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D6865616465723A686F766572207B0A20206261636B67726F756E642D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(853) := '32663266323B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D69636F6E207B0A2020636F6C6F723A20726762612836342C2036342C2036342C20302E35293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E';
wwv_flow_api.g_varchar2_table(854) := '744C6973742D6261646765207B0A2020636F6C6F723A20233430343034303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D74726967676572207B0A20206261636B67726F756E643A20236666666666663B0A2020636F6C';
wwv_flow_api.g_varchar2_table(855) := '6F723A20726762612836342C2036342C2036342C20302E3735293B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D747269676765723A686F766572207B0A2020636F6C6F723A20233164363038393B0A7D0A626F6479202E';
wwv_flow_api.g_varchar2_table(856) := '612D44657461696C6564436F6E74656E744C6973742D747269676765723A666F637573207B0A2020636F6C6F723A20233164363038393B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(857) := '726F756E642D636F6C6F723A20236666666666663B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F6479207B0A20206261636B67726F756E642D636F6C6F723A2023313434';
wwv_flow_api.g_varchar2_table(858) := '3235663B0A7D0A626F6479202E636F6E74656E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E636F6E7465';
wwv_flow_api.g_varchar2_table(859) := '6E742D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20233631616564653B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C697374';
wwv_flow_api.g_varchar2_table(860) := '2D626F64792D686561646572207B0A20206261636B67726F756E643A20236666666666663B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D6C6162656C207B0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(861) := '303B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742D626F64792D726F772D636F6E74656E74207B0A2020636F6C6F723A20233134343235663B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E';
wwv_flow_api.g_varchar2_table(862) := '612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6166746572207B0A2020626F726465722D636F6C6F723A2023666666666666207472616E7370617265';
wwv_flow_api.g_varchar2_table(863) := '6E743B0A7D0A626F6479202E612D44657461696C6564436F6E74656E744C6973742E612D44657461696C6564436F6E74656E744C6973742D2D746F6F6C746970202E612D44657461696C6564436F6E74656E744C6973742D626F64793A6265666F726520';
wwv_flow_api.g_varchar2_table(864) := '7B0A2020626F726465722D636F6C6F723A2023666666666666207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970207B0A20202D7765626B69742D626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(865) := '203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E612D44657461696C65';
wwv_flow_api.g_varchar2_table(866) := '64436F6E74656E744C6973742D626F6479207B0A20202D7765626B69742D626F726465722D7261646975733A203270783B0A20202D6D6F7A2D626F726465722D7261646975733A203270783B0A2020626F726465722D7261646975733A203270783B0A7D';
wwv_flow_api.g_varchar2_table(867) := '0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6265666F7265207B0A2020626F726465722D636F6C6F723A2023313434323566207472616E73706172656E743B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(868) := '202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D3A6166746572207B0A2020626F726465722D636F6C6F723A2023313434323566207472616E73706172656E743B0A7D0A626F6479202E75692D74';
wwv_flow_api.g_varchar2_table(869) := '6F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E626F74746F6D2E6C696768743A6166746572207B0A2020626F726465722D636F6C6F723A2023656165616561207472616E73706172656E743B0A7D0A626F6479202E75692D74';
wwv_flow_api.g_varchar2_table(870) := '6F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E746F703A6265666F7265207B0A2020626F726465722D636F6C6F723A2023313434323566207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E63';
wwv_flow_api.g_varchar2_table(871) := '6F6E74656E742D746F6F6C746970202E6172726F772E746F703A6166746572207B0A2020626F726465722D636F6C6F723A2023313434323566207472616E73706172656E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F';
wwv_flow_api.g_varchar2_table(872) := '6F6C746970202E6172726F772E6C6566743A6265666F7265207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742023666666666666207472616E73706172656E74207472616E73706172656E743B0A7D0A626F6479202E75692D74';
wwv_flow_api.g_varchar2_table(873) := '6F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E6C6566743A6166746572207B0A2020626F726465722D636F6C6F723A207472616E73706172656E742023313434323566207472616E73706172656E74207472616E7370617265';
wwv_flow_api.g_varchar2_table(874) := '6E743B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6265666F7265207B0A2020626F726465722D636F6C6F723A207472616E73706172656E74207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(875) := '207472616E73706172656E7420726762612836342C2036342C2036342C20302E35293B0A7D0A626F6479202E75692D746F6F6C7469702E636F6E74656E742D746F6F6C746970202E6172726F772E72696768743A6166746572207B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(876) := '2D636F6C6F723A207472616E73706172656E74207472616E73706172656E74207472616E73706172656E7420233134343235663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(877) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C69';
wwv_flow_api.g_varchar2_table(878) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(879) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030';
wwv_flow_api.g_varchar2_table(880) := '202366663630376520696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20';
wwv_flow_api.g_varchar2_table(881) := '206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(882) := '68696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(883) := '682D6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(884) := '646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(885) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(886) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C6973742D777261703A686F76657220';
wwv_flow_api.g_varchar2_table(887) := '7B0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(888) := '6973742D6974656D3A6E74682D6368696C6428203429207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F726564';
wwv_flow_api.g_varchar2_table(889) := '4247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A2020636F6C6F723A20233037316630623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(890) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332616338343520696E';
wwv_flow_api.g_varchar2_table(891) := '7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(892) := '2D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529206120';
wwv_flow_api.g_varchar2_table(893) := '7B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529';
wwv_flow_api.g_varchar2_table(894) := '20612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202361386138616320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467';
wwv_flow_api.g_varchar2_table(895) := '654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(896) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(897) := '73742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(898) := '646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(899) := '682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(900) := '4C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(901) := '6467654C6973742D6974656D3A6E74682D6368696C642820372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A626F6479';
wwv_flow_api.g_varchar2_table(902) := '202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561';
wwv_flow_api.g_varchar2_table(903) := '633866613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282038292061207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(904) := '233032333935323B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C';
wwv_flow_api.g_varchar2_table(905) := '6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(906) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(907) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D';
wwv_flow_api.g_varchar2_table(908) := '42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078';
wwv_flow_api.g_varchar2_table(909) := '20302030202366663662363320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130';
wwv_flow_api.g_varchar2_table(910) := '29207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(911) := '6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(912) := '74656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202338313766653020696E7365743B0A7D0A626F6479202E742D42616467';
wwv_flow_api.g_varchar2_table(913) := '654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D';
wwv_flow_api.g_varchar2_table(914) := '0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(915) := '663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D77';
wwv_flow_api.g_varchar2_table(916) := '7261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247';
wwv_flow_api.g_varchar2_table(917) := '202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C69';
wwv_flow_api.g_varchar2_table(918) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D426164';
wwv_flow_api.g_varchar2_table(919) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030';
wwv_flow_api.g_varchar2_table(920) := '2030202336366166666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920';
wwv_flow_api.g_varchar2_table(921) := '7B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(922) := '682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(923) := '6D3A6E74682D6368696C64282031332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A626F6479202E742D42616467654C';
wwv_flow_api.g_varchar2_table(924) := '6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A62';
wwv_flow_api.g_varchar2_table(925) := '6F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B0A2020636F6C6F723A20233338346333633B';
wwv_flow_api.g_varchar2_table(926) := '0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(927) := '703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E';
wwv_flow_api.g_varchar2_table(928) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(929) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D4261646765';
wwv_flow_api.g_varchar2_table(930) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030';
wwv_flow_api.g_varchar2_table(931) := '202362666266633220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A';
wwv_flow_api.g_varchar2_table(932) := '20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(933) := '6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(934) := '6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E7365743B0A7D0A626F6479202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(935) := '742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(936) := '79202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D';
wwv_flow_api.g_varchar2_table(937) := '0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A';
wwv_flow_api.g_varchar2_table(938) := '686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D';
wwv_flow_api.g_varchar2_table(939) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(940) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A20233335363137353B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C69';
wwv_flow_api.g_varchar2_table(941) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023';
wwv_flow_api.g_varchar2_table(942) := '34396332666120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929207B0A2020';
wwv_flow_api.g_varchar2_table(943) := '6261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(944) := '696C6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(945) := '682D6368696C64282031392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(946) := '2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(947) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F723A20236666666666663B0A7D0A62';
wwv_flow_api.g_varchar2_table(948) := '6F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F';
wwv_flow_api.g_varchar2_table(949) := '766572207B0A2020626F782D736861646F773A2030202D38707820302030202361326131653820696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261';
wwv_flow_api.g_varchar2_table(950) := '6467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(951) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(952) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236562';
wwv_flow_api.g_varchar2_table(953) := '3536373220696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261';
wwv_flow_api.g_varchar2_table(954) := '636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(955) := '6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(956) := '6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D64';
wwv_flow_api.g_varchar2_table(957) := '6173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(958) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(959) := '79202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032332920612E742D42616467654C6973742D777261703A686F7665';
wwv_flow_api.g_varchar2_table(960) := '72207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467';
wwv_flow_api.g_varchar2_table(961) := '654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(962) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(963) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430';
wwv_flow_api.g_varchar2_table(964) := '376320696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529207B0A20206261636B';
wwv_flow_api.g_varchar2_table(965) := '67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(966) := '203235292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(967) := '696C64282032352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173';
wwv_flow_api.g_varchar2_table(968) := '682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A20206261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(969) := '616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(970) := '2E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F76657220';
wwv_flow_api.g_varchar2_table(971) := '7B0A2020626F782D736861646F773A2030202D38707820302030202335326166643620696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C';
wwv_flow_api.g_varchar2_table(972) := '6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(973) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(974) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023623338663030';
wwv_flow_api.g_varchar2_table(975) := '20696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(976) := '6F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(977) := '38292061207B0A2020636F6C6F723A20233032333434613B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(978) := '64282032382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E';
wwv_flow_api.g_varchar2_table(979) := '742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(980) := '67654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(981) := '2D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032392920612E742D42616467654C6973742D777261703A686F766572207B0A';
wwv_flow_api.g_varchar2_table(982) := '2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(983) := '742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(984) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A626F6479202E742D42616467654C6973742D2D646173682E742D42616467654C6973742D2D636F6C6F';
wwv_flow_api.g_varchar2_table(985) := '7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020233735373363652069';
wwv_flow_api.g_varchar2_table(986) := '6E7365743B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C';
wwv_flow_api.g_varchar2_table(987) := '6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666313434303B0A2020636F6C6F723A20236666313434303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(988) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(989) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(990) := '3B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(991) := '6D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030366565363B0A2020636F6C6F723A20233030366565363B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(992) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75';
wwv_flow_api.g_varchar2_table(993) := '652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(994) := '616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(995) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536383630303B0A2020636F6C6F723A2023653638';
wwv_flow_api.g_varchar2_table(996) := '3630303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203329202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(997) := '73742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(998) := '2D6368696C6428203329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(999) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1000) := '723A20233337643535323B0A2020636F6C6F723A20233337643535323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1001) := '3A6E74682D6368696C6428203429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1002) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203429202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233037316630623B0A20206261636B67726F756E642D636F6C6F723A20233463';
wwv_flow_api.g_varchar2_table(1003) := '643936343B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1004) := '6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233831383138373B0A2020636F6C6F723A20233831383138373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1005) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(1006) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1007) := '3B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1008) := '6D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233234396564323B0A2020636F6C6F723A20233234396564323B0A7D0A626F6479202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1009) := '2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75';
wwv_flow_api.g_varchar2_table(1010) := '652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(1011) := '616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D63';
wwv_flow_api.g_varchar2_table(1012) := '6F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236536623830303B0A2020636F6C6F723A2023653662';
wwv_flow_api.g_varchar2_table(1013) := '3830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1014) := '73742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1015) := '2D6368696C6428203729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030303030303B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1016) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1017) := '723A20233431633066393B0A2020636F6C6F723A20233431633066393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D';
wwv_flow_api.g_varchar2_table(1018) := '3A6E74682D6368696C6428203829202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1019) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333935323B0A20206261636B67726F756E642D636F6C6F723A20233561';
wwv_flow_api.g_varchar2_table(1020) := '633866613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1021) := '6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666323331373B0A2020636F6C6F723A20236666323331373B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1022) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D636972';
wwv_flow_api.g_varchar2_table(1023) := '63756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1024) := '3B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1025) := '6D3A6E74682D6368696C642820313029202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233434343164313B0A2020636F6C6F723A20233434343164313B0A7D0A626F6479202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1026) := '2D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1027) := '6C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1028) := '742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1029) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666336536323B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1030) := '236666336536323B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129202E742D4261';
wwv_flow_api.g_varchar2_table(1031) := '6467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1032) := '6D3A6E74682D6368696C642820313129202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1033) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C7565207B0A2020626F7264';
wwv_flow_api.g_varchar2_table(1034) := '65722D636F6C6F723A20233139383766663B0A2020636F6C6F723A20233139383766663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1035) := '73742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1036) := '2D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1037) := '6F6C6F723A20233333393566663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329';
wwv_flow_api.g_varchar2_table(1038) := '202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666613031393B0A2020636F6C6F723A20236666613031393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D426164';
wwv_flow_api.g_varchar2_table(1039) := '67654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D426164';
wwv_flow_api.g_varchar2_table(1040) := '67654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313329202E742D42616467654C6973742D76616C75652061207B0A2020636F';
wwv_flow_api.g_varchar2_table(1041) := '6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1042) := '616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233562646337313B0A2020636F6C6F723A20233562646337313B0A7D0A626F647920';
wwv_flow_api.g_varchar2_table(1043) := '2E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429202E742D42616467654C6973742D77726170202E742D';
wwv_flow_api.g_varchar2_table(1044) := '42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313429';
wwv_flow_api.g_varchar2_table(1045) := '202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233338346333633B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1046) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233938393839';
wwv_flow_api.g_varchar2_table(1047) := '633B0A2020636F6C6F723A20233938393839633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1048) := '642820313529202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42';
wwv_flow_api.g_varchar2_table(1049) := '616467654C6973742D6974656D3A6E74682D6368696C642820313529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D';
wwv_flow_api.g_varchar2_table(1050) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1051) := '6C7565207B0A2020626F726465722D636F6C6F723A20233437623264663B0A2020636F6C6F723A20233437623264663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F72656442';
wwv_flow_api.g_varchar2_table(1052) := '47202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C6172';
wwv_flow_api.g_varchar2_table(1053) := '2E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A2020';
wwv_flow_api.g_varchar2_table(1054) := '6261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1055) := '682D6368696C642820313729202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236666643131393B0A2020636F6C6F723A20236666643131393B0A7D0A626F6479202E742D42616467654C6973742D2D6369';
wwv_flow_api.g_varchar2_table(1056) := '7263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C';
wwv_flow_api.g_varchar2_table(1057) := '0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729202E742D42616467654C6973742D7661';
wwv_flow_api.g_varchar2_table(1058) := '6C75652061207B0A2020636F6C6F723A20233333333333333B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1059) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233632636266613B0A2020636F6C6F723A2023363263';
wwv_flow_api.g_varchar2_table(1060) := '6266613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1061) := '6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74';
wwv_flow_api.g_varchar2_table(1062) := '682D6368696C642820313829202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233335363137353B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1063) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1064) := '6F6C6F723A20236666346134303B0A2020636F6C6F723A20236666346134303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1065) := '74656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F';
wwv_flow_api.g_varchar2_table(1066) := '6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236666666666663B0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1067) := '3A20236666363235393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D';
wwv_flow_api.g_varchar2_table(1068) := '42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233635363364393B0A2020636F6C6F723A20233635363364393B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1069) := '73742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1070) := '73742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1071) := '20236666666666663B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1072) := '4C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236462316133663B0A2020636F6C6F723A20236462316133663B0A7D0A626F6479202E742D42';
wwv_flow_api.g_varchar2_table(1073) := '616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D42616467654C6973742D77726170202E742D42616467';
wwv_flow_api.g_varchar2_table(1074) := '654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129202E742D';
wwv_flow_api.g_varchar2_table(1075) := '42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_api.g_varchar2_table(1076) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233030363263633B0A20';
wwv_flow_api.g_varchar2_table(1077) := '20636F6C6F723A20233030363263633B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1078) := '3229202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D4261646765';
wwv_flow_api.g_varchar2_table(1079) := '4C6973742D6974656D3A6E74682D6368696C642820323229202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A626F64';
wwv_flow_api.g_varchar2_table(1080) := '79202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C756520';
wwv_flow_api.g_varchar2_table(1081) := '7B0A2020626F726465722D636F6C6F723A20236363373730303B0A2020636F6C6F723A20236363373730303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E74';
wwv_flow_api.g_varchar2_table(1082) := '2D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42';
wwv_flow_api.g_varchar2_table(1083) := '616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B';
wwv_flow_api.g_varchar2_table(1084) := '67726F756E642D636F6C6F723A20236536383630303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1085) := '696C642820323429202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233361623434663B0A2020636F6C6F723A20233361623434663B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C';
wwv_flow_api.g_varchar2_table(1086) := '61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F64';
wwv_flow_api.g_varchar2_table(1087) := '79202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429202E742D42616467654C6973742D76616C756520';
wwv_flow_api.g_varchar2_table(1088) := '61207B0A2020636F6C6F723A20233036316330613B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1089) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233733373337373B0A2020636F6C6F723A20233733373337373B';
wwv_flow_api.g_varchar2_table(1090) := '0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323529202E742D42616467654C6973742D';
wwv_flow_api.g_varchar2_table(1091) := '77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1092) := '696C642820323529202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1093) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1094) := '3A20233261383962313B0A2020636F6C6F723A20233261383962313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1095) := '6E74682D6368696C642820323629202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265';
wwv_flow_api.g_varchar2_table(1096) := '644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(1097) := '66393963363B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467';
wwv_flow_api.g_varchar2_table(1098) := '654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236363613330303B0A2020636F6C6F723A20236363613330303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1099) := '636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D';
wwv_flow_api.g_varchar2_table(1100) := '63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20233030';
wwv_flow_api.g_varchar2_table(1101) := '303030303B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1102) := '2D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20233362616264643B0A2020636F6C6F723A20233362616264643B0A7D0A626F6479202E742D4261646765';
wwv_flow_api.g_varchar2_table(1103) := '4C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467654C6973742D77726170202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1104) := '742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829202E742D42616467';
wwv_flow_api.g_varchar2_table(1105) := '654C6973742D76616C75652061207B0A2020636F6C6F723A20233032333434613B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1106) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C7565207B0A2020626F726465722D636F6C6F723A20236464323531623B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1107) := '6F723A20236464323531623B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929202E';
wwv_flow_api.g_varchar2_table(1108) := '742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1109) := '2D6974656D3A6E74682D6368696C642820323929202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A626F6479202E74';
wwv_flow_api.g_varchar2_table(1110) := '2D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C7565207B0A2020';
wwv_flow_api.g_varchar2_table(1111) := '626F726465722D636F6C6F723A20233431343062353B0A2020636F6C6F723A20233431343062353B0A7D0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D42616467654C6973742D2D636F6C6F7265644247202E742D426164';
wwv_flow_api.g_varchar2_table(1112) := '67654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D77726170202E742D42616467654C6973742D76616C75652C0A626F6479202E742D42616467654C6973742D2D63697263756C61722E742D4261646765';
wwv_flow_api.g_varchar2_table(1113) := '4C6973742D2D636F6C6F7265644247202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820333029202E742D42616467654C6973742D76616C75652061207B0A2020636F6C6F723A20236536653665363B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1114) := '6E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203129207B0A20206261636B67726F756E642D636F6C6F723A20236666326435';
wwv_flow_api.g_varchar2_table(1115) := '353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1116) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663630376520696E7365743B0A7D0A';
wwv_flow_api.g_varchar2_table(1117) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203229207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E742D43617264732D2D636F6C6F7269';
wwv_flow_api.g_varchar2_table(1118) := '7A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1119) := '6368696C642820322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333333935666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_api.g_varchar2_table(1120) := '2D42616467654C6973742D6974656D3A6E74682D6368696C6428203329207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1121) := '6E74682D6368696C64282033292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820332920612E742D42616467654C69';
wwv_flow_api.g_varchar2_table(1122) := '73742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666161333320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1123) := '68696C6428203429207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282034292061207B0A202063';
wwv_flow_api.g_varchar2_table(1124) := '6F6C6F723A20233037316630623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820342920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F78';
wwv_flow_api.g_varchar2_table(1125) := '2D736861646F773A2030202D38707820302030202332616338343520696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203529207B0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1126) := '6E642D636F6C6F723A20233865386539333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282035292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43';
wwv_flow_api.g_varchar2_table(1127) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023';
wwv_flow_api.g_varchar2_table(1128) := '61386138616320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203629207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A';
wwv_flow_api.g_varchar2_table(1129) := '2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282036292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1130) := '67654C6973742D6974656D3A6E74682D6368696C642820362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202335666263653420696E7365743B0A7D0A2E742D4361';
wwv_flow_api.g_varchar2_table(1131) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203729207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E74';
wwv_flow_api.g_varchar2_table(1132) := '2D42616467654C6973742D6974656D3A6E74682D6368696C64282037292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1133) := '2820372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202363636133303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467';
wwv_flow_api.g_varchar2_table(1134) := '654C6973742D6974656D3A6E74682D6368696C6428203829207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D63';
wwv_flow_api.g_varchar2_table(1135) := '68696C64282038292061207B0A2020636F6C6F723A20233032333935323B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820382920612E742D42616467654C6973742D7772';
wwv_flow_api.g_varchar2_table(1136) := '61703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202332386237663920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1137) := '203929207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282039292061207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1138) := '20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(1139) := '6F773A2030202D38707820302030202366663662363320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313029207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1140) := '6F6C6F723A20233538353664363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203130292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1141) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020233831';
wwv_flow_api.g_varchar2_table(1142) := '3766653020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313129207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1143) := '742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203131292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1144) := '67654C6973742D6974656D3A6E74682D6368696C64282031312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663861613020696E7365743B0A7D0A2E742D43';
wwv_flow_api.g_varchar2_table(1145) := '617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313229207B0A20206261636B67726F756E642D636F6C6F723A20233333393566663B0A7D0A2E742D43617264732D2D636F6C6F72697A6520';
wwv_flow_api.g_varchar2_table(1146) := '2E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203132292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1147) := '696C64282031322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336366166666620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D';
wwv_flow_api.g_varchar2_table(1148) := '42616467654C6973742D6974656D3A6E74682D6368696C642820313329207B0A20206261636B67726F756E642D636F6C6F723A20236666616133333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A';
wwv_flow_api.g_varchar2_table(1149) := '6E74682D6368696C6428203133292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031332920612E742D4261646765';
wwv_flow_api.g_varchar2_table(1150) := '4C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663935303020696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E7468';
wwv_flow_api.g_varchar2_table(1151) := '2D6368696C642820313429207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203134292061207B';
wwv_flow_api.g_varchar2_table(1152) := '0A2020636F6C6F723A20233338346333633B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031342920612E742D42616467654C6973742D777261703A686F766572207B0A';
wwv_flow_api.g_varchar2_table(1153) := '2020626F782D736861646F773A2030202D38707820302030202334366438356620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313529207B0A20206261';
wwv_flow_api.g_varchar2_table(1154) := '636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203135292061207B0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1155) := '0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031352920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38';
wwv_flow_api.g_varchar2_table(1156) := '707820302030202362666266633220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313629207B0A20206261636B67726F756E642D636F6C6F723A202335';
wwv_flow_api.g_varchar2_table(1157) := '64626265333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203136292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(1158) := '697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202333316139646220696E73';
wwv_flow_api.g_varchar2_table(1159) := '65743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313729207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E742D43617264732D';
wwv_flow_api.g_varchar2_table(1160) := '2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203137292061207B0A2020636F6C6F723A20233333333333333B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D69';
wwv_flow_api.g_varchar2_table(1161) := '74656D3A6E74682D6368696C64282031372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666363303020696E7365743B0A7D0A2E742D43617264732D2D636F';
wwv_flow_api.g_varchar2_table(1162) := '6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829207B0A20206261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D4261646765';
wwv_flow_api.g_varchar2_table(1163) := '4C6973742D6974656D3A6E74682D6368696C6428203138292061207B0A2020636F6C6F723A20233335363137353B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820313829';
wwv_flow_api.g_varchar2_table(1164) := '20612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202334396332666120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(1165) := '742D6974656D3A6E74682D6368696C642820313929207B0A20206261636B67726F756E642D636F6C6F723A20236666363235393B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1166) := '6428203139292061207B0A2020636F6C6F723A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282031392920612E742D42616467654C6973742D777261';
wwv_flow_api.g_varchar2_table(1167) := '703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366663932386320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820';
wwv_flow_api.g_varchar2_table(1168) := '323029207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203230292061207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1169) := '3A20236666666666663B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032302920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(1170) := '61646F773A2030202D38707820302030202361326131653820696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323129207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1171) := '2D636F6C6F723A20236536323934643B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203231292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D4361';
wwv_flow_api.g_varchar2_table(1172) := '7264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032312920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D387078203020302023';
wwv_flow_api.g_varchar2_table(1173) := '65623536373220696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323229207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D';
wwv_flow_api.g_varchar2_table(1174) := '0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203232292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42';
wwv_flow_api.g_varchar2_table(1175) := '616467654C6973742D6974656D3A6E74682D6368696C64282032322920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202331613837666620696E7365743B0A7D0A2E74';
wwv_flow_api.g_varchar2_table(1176) := '2D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323329207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E742D43617264732D2D636F6C6F72697A';
wwv_flow_api.g_varchar2_table(1177) := '65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203233292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D';
wwv_flow_api.g_varchar2_table(1178) := '6368696C64282032332920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202366666130316120696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E';
wwv_flow_api.g_varchar2_table(1179) := '742D42616467654C6973742D6974656D3A6E74682D6368696C642820323429207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D697465';
wwv_flow_api.g_varchar2_table(1180) := '6D3A6E74682D6368696C6428203234292061207B0A2020636F6C6F723A20233036316330613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032342920612E742D426164';
wwv_flow_api.g_varchar2_table(1181) := '67654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202336626430376320696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E';
wwv_flow_api.g_varchar2_table(1182) := '74682D6368696C642820323529207B0A20206261636B67726F756E642D636F6C6F723A20233830383038343B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203235292061';
wwv_flow_api.g_varchar2_table(1183) := '207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032352920612E742D42616467654C6973742D777261703A686F76657220';
wwv_flow_api.g_varchar2_table(1184) := '7B0A2020626F782D736861646F773A2030202D38707820302030202339613961396420696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323629207B0A2020';
wwv_flow_api.g_varchar2_table(1185) := '6261636B67726F756E642D636F6C6F723A20233266393963363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203236292061207B0A2020636F6C6F723A20236536653665';
wwv_flow_api.g_varchar2_table(1186) := '363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032362920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A203020';
wwv_flow_api.g_varchar2_table(1187) := '2D38707820302030202335326166643620696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323729207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1188) := '236536623830303B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203237292061207B0A2020636F6C6F723A20233030303030303B0A7D0A2E742D43617264732D2D636F6C';
wwv_flow_api.g_varchar2_table(1189) := '6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032372920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D3870782030203020236233386630302069';
wwv_flow_api.g_varchar2_table(1190) := '6E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323829207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E742D43617264';
wwv_flow_api.g_varchar2_table(1191) := '732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C6428203238292061207B0A2020636F6C6F723A20233032333434613B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(1192) := '2D6974656D3A6E74682D6368696C64282032382920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337636337653920696E7365743B0A7D0A2E742D43617264732D2D';
wwv_flow_api.g_varchar2_table(1193) := '636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C642820323929207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D426164';
wwv_flow_api.g_varchar2_table(1194) := '67654C6973742D6974656D3A6E74682D6368696C6428203239292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282032';
wwv_flow_api.g_varchar2_table(1195) := '392920612E742D42616467654C6973742D777261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202365623630353920696E7365743B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C';
wwv_flow_api.g_varchar2_table(1196) := '6973742D6974656D3A6E74682D6368696C642820333029207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368';
wwv_flow_api.g_varchar2_table(1197) := '696C6428203330292061207B0A2020636F6C6F723A20236536653665363B0A7D0A2E742D43617264732D2D636F6C6F72697A65202E742D42616467654C6973742D6974656D3A6E74682D6368696C64282033302920612E742D42616467654C6973742D77';
wwv_flow_api.g_varchar2_table(1198) := '7261703A686F766572207B0A2020626F782D736861646F773A2030202D38707820302030202337353733636520696E7365743B0A7D0A2E752D436F6C6F7242472D2D31207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D';
wwv_flow_api.g_varchar2_table(1199) := '0A2E752D436F6C6F7246472D2D31207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F7242472D2D32207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7246472D2D32207B0A';
wwv_flow_api.g_varchar2_table(1200) := '2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F7242472D2D33207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F7246472D2D33207B0A2020636F6C6F723A20236666393530303B';
wwv_flow_api.g_varchar2_table(1201) := '0A7D0A2E752D436F6C6F7242472D2D34207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7246472D2D34207B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F7242472D2D3520';
wwv_flow_api.g_varchar2_table(1202) := '7B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F7246472D2D35207B0A2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F7242472D2D36207B0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1203) := '6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7246472D2D36207B0A2020636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F7242472D2D37207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1204) := '752D436F6C6F7246472D2D37207B0A2020636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F7242472D2D38207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7246472D2D38207B0A2020';
wwv_flow_api.g_varchar2_table(1205) := '636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F7242472D2D39207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F7246472D2D39207B0A2020636F6C6F723A20236666336233303B0A7D';
wwv_flow_api.g_varchar2_table(1206) := '0A2E752D436F6C6F7242472D2D3130207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7246472D2D3130207B0A2020636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F7242472D2D3131';
wwv_flow_api.g_varchar2_table(1207) := '207B0A20206261636B67726F756E642D636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7246472D2D3131207B0A2020636F6C6F723A20236666353737373B0A7D0A2E752D436F6C6F7242472D2D3132207B0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1208) := '2D636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7246472D2D3132207B0A2020636F6C6F723A20233333393566663B0A7D0A2E752D436F6C6F7242472D2D3133207B0A20206261636B67726F756E642D636F6C6F723A2023666661613333';
wwv_flow_api.g_varchar2_table(1209) := '3B0A7D0A2E752D436F6C6F7246472D2D3133207B0A2020636F6C6F723A20236666616133333B0A7D0A2E752D436F6C6F7242472D2D3134207B0A20206261636B67726F756E642D636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7246472D';
wwv_flow_api.g_varchar2_table(1210) := '2D3134207B0A2020636F6C6F723A20233730653138333B0A7D0A2E752D436F6C6F7242472D2D3135207B0A20206261636B67726F756E642D636F6C6F723A20236135613561393B0A7D0A2E752D436F6C6F7246472D2D3135207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1211) := '236135613561393B0A7D0A2E752D436F6C6F7242472D2D3136207B0A20206261636B67726F756E642D636F6C6F723A20233564626265333B0A7D0A2E752D436F6C6F7246472D2D3136207B0A2020636F6C6F723A20233564626265333B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1212) := '6F6C6F7242472D2D3137207B0A20206261636B67726F756E642D636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7246472D2D3137207B0A2020636F6C6F723A20236666643633333B0A7D0A2E752D436F6C6F7242472D2D3138207B0A2020';
wwv_flow_api.g_varchar2_table(1213) := '6261636B67726F756E642D636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7246472D2D3138207B0A2020636F6C6F723A20233762643366623B0A7D0A2E752D436F6C6F7242472D2D3139207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1214) := '723A20236666363235393B0A7D0A2E752D436F6C6F7246472D2D3139207B0A2020636F6C6F723A20236666363235393B0A7D0A2E752D436F6C6F7242472D2D3230207B0A20206261636B67726F756E642D636F6C6F723A20233739373864653B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1215) := '752D436F6C6F7246472D2D3230207B0A2020636F6C6F723A20233739373864653B0A7D0A2E752D436F6C6F7242472D2D3231207B0A20206261636B67726F756E642D636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7246472D2D3231207B';
wwv_flow_api.g_varchar2_table(1216) := '0A2020636F6C6F723A20236536323934643B0A7D0A2E752D436F6C6F7242472D2D3232207B0A20206261636B67726F756E642D636F6C6F723A20233030366565363B0A7D0A2E752D436F6C6F7246472D2D3232207B0A2020636F6C6F723A202330303665';
wwv_flow_api.g_varchar2_table(1217) := '65363B0A7D0A2E752D436F6C6F7242472D2D3233207B0A20206261636B67726F756E642D636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7246472D2D3233207B0A2020636F6C6F723A20236536383630303B0A7D0A2E752D436F6C6F7242';
wwv_flow_api.g_varchar2_table(1218) := '472D2D3234207B0A20206261636B67726F756E642D636F6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7246472D2D3234207B0A2020636F6C6F723A20233434633335613B0A7D0A2E752D436F6C6F7242472D2D3235207B0A20206261636B67';
wwv_flow_api.g_varchar2_table(1219) := '726F756E642D636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7246472D2D3235207B0A2020636F6C6F723A20233830383038343B0A7D0A2E752D436F6C6F7242472D2D3236207B0A20206261636B67726F756E642D636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(1220) := '66393963363B0A7D0A2E752D436F6C6F7246472D2D3236207B0A2020636F6C6F723A20233266393963363B0A7D0A2E752D436F6C6F7242472D2D3237207B0A20206261636B67726F756E642D636F6C6F723A20236536623830303B0A7D0A2E752D436F6C';
wwv_flow_api.g_varchar2_table(1221) := '6F7246472D2D3237207B0A2020636F6C6F723A20236536623830303B0A7D0A2E752D436F6C6F7242472D2D3238207B0A20206261636B67726F756E642D636F6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7246472D2D3238207B0A2020636F';
wwv_flow_api.g_varchar2_table(1222) := '6C6F723A20233531623465313B0A7D0A2E752D436F6C6F7242472D2D3239207B0A20206261636B67726F756E642D636F6C6F723A20236536333532623B0A7D0A2E752D436F6C6F7246472D2D3239207B0A2020636F6C6F723A20236536333532623B0A7D';
wwv_flow_api.g_varchar2_table(1223) := '0A2E752D436F6C6F7242472D2D3330207B0A20206261636B67726F756E642D636F6C6F723A20233466346463313B0A7D0A2E752D436F6C6F7246472D2D3330207B0A2020636F6C6F723A20233466346463313B0A7D0A0A2E752D436F6C6F722D312D4247';
wwv_flow_api.g_varchar2_table(1224) := '2D2D747874207B0A2020636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D66696C6C207B';
wwv_flow_api.g_varchar2_table(1225) := '0A202066696C6C3A20236666326435353B0A7D0A2E752D436F6C6F722D312D42472D2D6272207B0A20207374726F6B653A20236666326435353B0A2020626F726465722D636F6C6F723A20236666326435353B0A7D0A2E752D436F6C6F722D312D46472D';
wwv_flow_api.g_varchar2_table(1226) := '2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D66696C6C207B0A';
wwv_flow_api.g_varchar2_table(1227) := '202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D42472D2D';
wwv_flow_api.g_varchar2_table(1228) := '747874207B0A2020636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D66696C6C207B0A20';
wwv_flow_api.g_varchar2_table(1229) := '2066696C6C3A20233030376166663B0A7D0A2E752D436F6C6F722D322D42472D2D6272207B0A20207374726F6B653A20233030376166663B0A2020626F726465722D636F6C6F723A20233030376166663B0A7D0A2E752D436F6C6F722D322D46472D2D74';
wwv_flow_api.g_varchar2_table(1230) := '7874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D66696C6C207B0A2020';
wwv_flow_api.g_varchar2_table(1231) := '66696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D42472D2D7478';
wwv_flow_api.g_varchar2_table(1232) := '74207B0A2020636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D66696C6C207B0A202066';
wwv_flow_api.g_varchar2_table(1233) := '696C6C3A20236666393530303B0A7D0A2E752D436F6C6F722D332D42472D2D6272207B0A20207374726F6B653A20236666393530303B0A2020626F726465722D636F6C6F723A20236666393530303B0A7D0A2E752D436F6C6F722D332D46472D2D747874';
wwv_flow_api.g_varchar2_table(1234) := '207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D66696C6C207B0A20206669';
wwv_flow_api.g_varchar2_table(1235) := '6C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D342D42472D2D74787420';
wwv_flow_api.g_varchar2_table(1236) := '7B0A2020636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D66696C6C207B0A202066696C';
wwv_flow_api.g_varchar2_table(1237) := '6C3A20233463643936343B0A7D0A2E752D436F6C6F722D342D42472D2D6272207B0A20207374726F6B653A20233463643936343B0A2020626F726465722D636F6C6F723A20233463643936343B0A7D0A2E752D436F6C6F722D342D46472D2D747874207B';
wwv_flow_api.g_varchar2_table(1238) := '0A2020636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D66696C6C207B0A202066696C6C';
wwv_flow_api.g_varchar2_table(1239) := '3A20233037316630623B0A7D0A2E752D436F6C6F722D342D46472D2D6272207B0A20207374726F6B653A20233037316630623B0A2020626F726465722D636F6C6F723A20233037316630623B0A7D0A2E752D436F6C6F722D352D42472D2D747874207B0A';
wwv_flow_api.g_varchar2_table(1240) := '2020636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D66696C6C207B0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1241) := '20233865386539333B0A7D0A2E752D436F6C6F722D352D42472D2D6272207B0A20207374726F6B653A20233865386539333B0A2020626F726465722D636F6C6F723A20233865386539333B0A7D0A2E752D436F6C6F722D352D46472D2D747874207B0A20';
wwv_flow_api.g_varchar2_table(1242) := '20636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D66696C6C207B0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1243) := '236666666666663B0A7D0A2E752D436F6C6F722D352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D42472D2D747874207B0A2020';
wwv_flow_api.g_varchar2_table(1244) := '636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D66696C6C207B0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1245) := '3334616164633B0A7D0A2E752D436F6C6F722D362D42472D2D6272207B0A20207374726F6B653A20233334616164633B0A2020626F726465722D636F6C6F723A20233334616164633B0A7D0A2E752D436F6C6F722D362D46472D2D747874207B0A202063';
wwv_flow_api.g_varchar2_table(1246) := '6F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D362D46472D2D66696C6C207B0A202066696C6C3A202366';
wwv_flow_api.g_varchar2_table(1247) := '66666666663B0A7D0A2E752D436F6C6F722D362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D372D42472D2D747874207B0A2020636F';
wwv_flow_api.g_varchar2_table(1248) := '6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D42472D2D66696C6C207B0A202066696C6C3A20236666';
wwv_flow_api.g_varchar2_table(1249) := '636330303B0A7D0A2E752D436F6C6F722D372D42472D2D6272207B0A20207374726F6B653A20236666636330303B0A2020626F726465722D636F6C6F723A20236666636330303B0A7D0A2E752D436F6C6F722D372D46472D2D747874207B0A2020636F6C';
wwv_flow_api.g_varchar2_table(1250) := '6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D372D46472D2D66696C6C207B0A202066696C6C3A2023303030';
wwv_flow_api.g_varchar2_table(1251) := '3030303B0A7D0A2E752D436F6C6F722D372D46472D2D6272207B0A20207374726F6B653A20233030303030303B0A2020626F726465722D636F6C6F723A20233030303030303B0A7D0A2E752D436F6C6F722D382D42472D2D747874207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1252) := '723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D42472D2D66696C6C207B0A202066696C6C3A202335616338';
wwv_flow_api.g_varchar2_table(1253) := '66613B0A7D0A2E752D436F6C6F722D382D42472D2D6272207B0A20207374726F6B653A20233561633866613B0A2020626F726465722D636F6C6F723A20233561633866613B0A7D0A2E752D436F6C6F722D382D46472D2D747874207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1254) := '3A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D382D46472D2D66696C6C207B0A202066696C6C3A20233032333935';
wwv_flow_api.g_varchar2_table(1255) := '323B0A7D0A2E752D436F6C6F722D382D46472D2D6272207B0A20207374726F6B653A20233032333935323B0A2020626F726465722D636F6C6F723A20233032333935323B0A7D0A2E752D436F6C6F722D392D42472D2D747874207B0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1256) := '20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D42472D2D66696C6C207B0A202066696C6C3A2023666633623330';
wwv_flow_api.g_varchar2_table(1257) := '3B0A7D0A2E752D436F6C6F722D392D42472D2D6272207B0A20207374726F6B653A20236666336233303B0A2020626F726465722D636F6C6F723A20236666336233303B0A7D0A2E752D436F6C6F722D392D46472D2D747874207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1258) := '236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B';
wwv_flow_api.g_varchar2_table(1259) := '0A7D0A2E752D436F6C6F722D392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D42472D2D747874207B0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1260) := '233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D42472D2D66696C6C207B0A202066696C6C3A20233538353664';
wwv_flow_api.g_varchar2_table(1261) := '363B0A7D0A2E752D436F6C6F722D31302D42472D2D6272207B0A20207374726F6B653A20233538353664363B0A2020626F726465722D636F6C6F723A20233538353664363B0A7D0A2E752D436F6C6F722D31302D46472D2D747874207B0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1262) := '723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D66696C6C207B0A202066696C6C3A20236666';
wwv_flow_api.g_varchar2_table(1263) := '666666663B0A7D0A2E752D436F6C6F722D31302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D42472D2D747874207B0A202063';
wwv_flow_api.g_varchar2_table(1264) := '6F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D66696C6C207B0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1265) := '236639303032663B0A7D0A2E752D436F6C6F722D31312D42472D2D6272207B0A20207374726F6B653A20236639303032663B0A2020626F726465722D636F6C6F723A20236639303032663B0A7D0A2E752D436F6C6F722D31312D46472D2D747874207B0A';
wwv_flow_api.g_varchar2_table(1266) := '2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D66696C6C207B0A202066696C';
wwv_flow_api.g_varchar2_table(1267) := '6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31312D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D42472D2D747874';
wwv_flow_api.g_varchar2_table(1268) := '207B0A2020636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D66696C6C207B0A2020';
wwv_flow_api.g_varchar2_table(1269) := '66696C6C3A20233030363263633B0A7D0A2E752D436F6C6F722D31322D42472D2D6272207B0A20207374726F6B653A20233030363263633B0A2020626F726465722D636F6C6F723A20233030363263633B0A7D0A2E752D436F6C6F722D31322D46472D2D';
wwv_flow_api.g_varchar2_table(1270) := '747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D66696C6C207B';
wwv_flow_api.g_varchar2_table(1271) := '0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31322D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D42';
wwv_flow_api.g_varchar2_table(1272) := '472D2D747874207B0A2020636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D66696C';
wwv_flow_api.g_varchar2_table(1273) := '6C207B0A202066696C6C3A20236363373730303B0A7D0A2E752D436F6C6F722D31332D42472D2D6272207B0A20207374726F6B653A20236363373730303B0A2020626F726465722D636F6C6F723A20236363373730303B0A7D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1274) := '332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D';
wwv_flow_api.g_varchar2_table(1275) := '66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31332D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1276) := '722D31342D42472D2D747874207B0A2020636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42';
wwv_flow_api.g_varchar2_table(1277) := '472D2D66696C6C207B0A202066696C6C3A20233261633834353B0A7D0A2E752D436F6C6F722D31342D42472D2D6272207B0A20207374726F6B653A20233261633834353B0A2020626F726465722D636F6C6F723A20233261633834353B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1278) := '6F6C6F722D31342D46472D2D747874207B0A2020636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233130343931393B0A7D0A2E752D436F6C6F722D31';
wwv_flow_api.g_varchar2_table(1279) := '342D46472D2D66696C6C207B0A202066696C6C3A20233130343931393B0A7D0A2E752D436F6C6F722D31342D46472D2D6272207B0A20207374726F6B653A20233130343931393B0A2020626F726465722D636F6C6F723A20233130343931393B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1280) := '752D436F6C6F722D31352D42472D2D747874207B0A2020636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233734373437613B0A7D0A2E752D436F6C6F';
wwv_flow_api.g_varchar2_table(1281) := '722D31352D42472D2D66696C6C207B0A202066696C6C3A20233734373437613B0A7D0A2E752D436F6C6F722D31352D42472D2D6272207B0A20207374726F6B653A20233734373437613B0A2020626F726465722D636F6C6F723A20233734373437613B0A';
wwv_flow_api.g_varchar2_table(1282) := '7D0A2E752D436F6C6F722D31352D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D43';
wwv_flow_api.g_varchar2_table(1283) := '6F6C6F722D31352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(1284) := '663B0A7D0A2E752D436F6C6F722D31362D42472D2D747874207B0A2020636F6C6F723A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233231386562643B0A7D0A2E';
wwv_flow_api.g_varchar2_table(1285) := '752D436F6C6F722D31362D42472D2D66696C6C207B0A202066696C6C3A20233231386562643B0A7D0A2E752D436F6C6F722D31362D42472D2D6272207B0A20207374726F6B653A20233231386562643B0A2020626F726465722D636F6C6F723A20233231';
wwv_flow_api.g_varchar2_table(1286) := '386562643B0A7D0A2E752D436F6C6F722D31362D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A';
wwv_flow_api.g_varchar2_table(1287) := '7D0A2E752D436F6C6F722D31362D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1288) := '236666666666663B0A7D0A2E752D436F6C6F722D31372D42472D2D747874207B0A2020636F6C6F723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236363613330';
wwv_flow_api.g_varchar2_table(1289) := '303B0A7D0A2E752D436F6C6F722D31372D42472D2D66696C6C207B0A202066696C6C3A20236363613330303B0A7D0A2E752D436F6C6F722D31372D42472D2D6272207B0A20207374726F6B653A20236363613330303B0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1290) := '723A20236363613330303B0A7D0A2E752D436F6C6F722D31372D46472D2D747874207B0A2020636F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233161';
wwv_flow_api.g_varchar2_table(1291) := '316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D66696C6C207B0A202066696C6C3A20233161316131613B0A7D0A2E752D436F6C6F722D31372D46472D2D6272207B0A20207374726F6B653A20233161316131613B0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1292) := '6F6C6F723A20233161316131613B0A7D0A2E752D436F6C6F722D31382D42472D2D747874207B0A2020636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1293) := '233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D66696C6C207B0A202066696C6C3A20233238623766393B0A7D0A2E752D436F6C6F722D31382D42472D2D6272207B0A20207374726F6B653A20233238623766393B0A2020626F726465';
wwv_flow_api.g_varchar2_table(1294) := '722D636F6C6F723A20233238623766393B0A7D0A2E752D436F6C6F722D31382D46472D2D747874207B0A2020636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1295) := '723A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D66696C6C207B0A202066696C6C3A20233034356338343B0A7D0A2E752D436F6C6F722D31382D46472D2D6272207B0A20207374726F6B653A20233034356338343B0A2020626F';
wwv_flow_api.g_varchar2_table(1296) := '726465722D636F6C6F723A20233034356338343B0A7D0A2E752D436F6C6F722D31392D42472D2D747874207B0A2020636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6267207B0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1297) := '6F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D66696C6C207B0A202066696C6C3A20236663306430303B0A7D0A2E752D436F6C6F722D31392D42472D2D6272207B0A20207374726F6B653A20236663306430303B0A20';
wwv_flow_api.g_varchar2_table(1298) := '20626F726465722D636F6C6F723A20236663306430303B0A7D0A2E752D436F6C6F722D31392D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6267207B0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1299) := '642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D31392D46472D2D6272207B0A20207374726F6B653A2023666666666666';
wwv_flow_api.g_varchar2_table(1300) := '3B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D42472D2D747874207B0A2020636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6267207B0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1301) := '6F756E642D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D66696C6C207B0A202066696C6C3A20233333333163383B0A7D0A2E752D436F6C6F722D32302D42472D2D6272207B0A20207374726F6B653A2023333333';
wwv_flow_api.g_varchar2_table(1302) := '3163383B0A2020626F726465722D636F6C6F723A20233333333163383B0A7D0A2E752D436F6C6F722D32302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6267207B0A2020626163';
wwv_flow_api.g_varchar2_table(1303) := '6B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32302D46472D2D6272207B0A20207374726F6B653A2023';
wwv_flow_api.g_varchar2_table(1304) := '6666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D42472D2D747874207B0A2020636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6267207B0A2020';
wwv_flow_api.g_varchar2_table(1305) := '6261636B67726F756E642D636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D66696C6C207B0A202066696C6C3A20236666393361383B0A7D0A2E752D436F6C6F722D32312D42472D2D6272207B0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1306) := '3A20236666393361383B0A2020626F726465722D636F6C6F723A20236666393361383B0A7D0A2E752D436F6C6F722D32312D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6267207B';
wwv_flow_api.g_varchar2_table(1307) := '0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32312D46472D2D6272207B0A2020737472';
wwv_flow_api.g_varchar2_table(1308) := '6F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D42472D2D747874207B0A2020636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D62';
wwv_flow_api.g_varchar2_table(1309) := '67207B0A20206261636B67726F756E642D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D66696C6C207B0A202066696C6C3A20233636616666663B0A7D0A2E752D436F6C6F722D32322D42472D2D6272207B0A2020';
wwv_flow_api.g_varchar2_table(1310) := '7374726F6B653A20233636616666663B0A2020626F726465722D636F6C6F723A20233636616666663B0A7D0A2E752D436F6C6F722D32322D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D4647';
wwv_flow_api.g_varchar2_table(1311) := '2D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32322D46472D2D6272207B';
wwv_flow_api.g_varchar2_table(1312) := '0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D42472D2D747874207B0A2020636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D3233';
wwv_flow_api.g_varchar2_table(1313) := '2D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D66696C6C207B0A202066696C6C3A20236666626636363B0A7D0A2E752D436F6C6F722D32332D42472D2D62';
wwv_flow_api.g_varchar2_table(1314) := '72207B0A20207374726F6B653A20236666626636363B0A2020626F726465722D636F6C6F723A20236666626636363B0A7D0A2E752D436F6C6F722D32332D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1315) := '2D32332D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32332D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32332D4647';
wwv_flow_api.g_varchar2_table(1316) := '2D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32342D42472D2D747874207B0A2020636F6C6F723A20236130656261643B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1317) := '6C6F722D32342D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D42472D2D66696C6C207B0A202066696C6C3A20236130656261643B0A7D0A2E752D436F6C6F722D3234';
wwv_flow_api.g_varchar2_table(1318) := '2D42472D2D6272207B0A20207374726F6B653A20236130656261643B0A2020626F726465722D636F6C6F723A20236130656261643B0A7D0A2E752D436F6C6F722D32342D46472D2D747874207B0A2020636F6C6F723A20233139373332383B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1319) := '2D436F6C6F722D32342D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32342D46472D2D66696C6C207B0A202066696C6C3A20233139373332383B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1320) := '2D32342D46472D2D6272207B0A20207374726F6B653A20233139373332383B0A2020626F726465722D636F6C6F723A20233139373332383B0A7D0A2E752D436F6C6F722D32352D42472D2D747874207B0A2020636F6C6F723A20236332633263353B0A7D';
wwv_flow_api.g_varchar2_table(1321) := '0A2E752D436F6C6F722D32352D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D42472D2D66696C6C207B0A202066696C6C3A20236332633263353B0A7D0A2E752D436F';
wwv_flow_api.g_varchar2_table(1322) := '6C6F722D32352D42472D2D6272207B0A20207374726F6B653A20236332633263353B0A2020626F726465722D636F6C6F723A20236332633263353B0A7D0A2E752D436F6C6F722D32352D46472D2D747874207B0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1323) := '3B0A7D0A2E752D436F6C6F722D32352D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32352D46472D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E75';
wwv_flow_api.g_varchar2_table(1324) := '2D436F6C6F722D32352D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D42472D2D747874207B0A2020636F6C6F723A2023386263';
wwv_flow_api.g_varchar2_table(1325) := '6565623B0A7D0A2E752D436F6C6F722D32362D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D42472D2D66696C6C207B0A202066696C6C3A20233862636565623B0A7D';
wwv_flow_api.g_varchar2_table(1326) := '0A2E752D436F6C6F722D32362D42472D2D6272207B0A20207374726F6B653A20233862636565623B0A2020626F726465722D636F6C6F723A20233862636565623B0A7D0A2E752D436F6C6F722D32362D46472D2D747874207B0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1327) := '6666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32362D46472D2D66696C6C207B0A202066696C6C3A2023666666666666';
wwv_flow_api.g_varchar2_table(1328) := '3B0A7D0A2E752D436F6C6F722D32362D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32372D42472D2D747874207B0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1329) := '3A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D42472D2D66696C6C207B0A202066696C6C3A2023666665';
wwv_flow_api.g_varchar2_table(1330) := '3036363B0A7D0A2E752D436F6C6F722D32372D42472D2D6272207B0A20207374726F6B653A20236666653036363B0A2020626F726465722D636F6C6F723A20236666653036363B0A7D0A2E752D436F6C6F722D32372D46472D2D747874207B0A2020636F';
wwv_flow_api.g_varchar2_table(1331) := '6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D66696C6C207B0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1332) := '3333333333333B0A7D0A2E752D436F6C6F722D32372D46472D2D6272207B0A20207374726F6B653A20233333333333333B0A2020626F726465722D636F6C6F723A20233333333333333B0A7D0A2E752D436F6C6F722D32382D42472D2D747874207B0A20';
wwv_flow_api.g_varchar2_table(1333) := '20636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D66696C6C207B0A202066696C6C';
wwv_flow_api.g_varchar2_table(1334) := '3A20236264653966643B0A7D0A2E752D436F6C6F722D32382D42472D2D6272207B0A20207374726F6B653A20236264653966643B0A2020626F726465722D636F6C6F723A20236264653966643B0A7D0A2E752D436F6C6F722D32382D46472D2D74787420';
wwv_flow_api.g_varchar2_table(1335) := '7B0A2020636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D66696C6C207B0A202066';
wwv_flow_api.g_varchar2_table(1336) := '696C6C3A20233035376562363B0A7D0A2E752D436F6C6F722D32382D46472D2D6272207B0A20207374726F6B653A20233035376562363B0A2020626F726465722D636F6C6F723A20233035376562363B0A7D0A2E752D436F6C6F722D32392D42472D2D74';
wwv_flow_api.g_varchar2_table(1337) := '7874207B0A2020636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D66696C6C207B0A';
wwv_flow_api.g_varchar2_table(1338) := '202066696C6C3A20236666396339363B0A7D0A2E752D436F6C6F722D32392D42472D2D6272207B0A20207374726F6B653A20236666396339363B0A2020626F726465722D636F6C6F723A20236666396339363B0A7D0A2E752D436F6C6F722D32392D4647';
wwv_flow_api.g_varchar2_table(1339) := '2D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D66696C6C';
wwv_flow_api.g_varchar2_table(1340) := '207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D32392D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D3330';
wwv_flow_api.g_varchar2_table(1341) := '2D42472D2D747874207B0A2020636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D66';
wwv_flow_api.g_varchar2_table(1342) := '696C6C207B0A202066696C6C3A20236139613865613B0A7D0A2E752D436F6C6F722D33302D42472D2D6272207B0A20207374726F6B653A20236139613865613B0A2020626F726465722D636F6C6F723A20236139613865613B0A7D0A2E752D436F6C6F72';
wwv_flow_api.g_varchar2_table(1343) := '2D33302D46472D2D747874207B0A2020636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6267207B0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0A7D0A2E752D436F6C6F722D33302D4647';
wwv_flow_api.g_varchar2_table(1344) := '2D2D66696C6C207B0A202066696C6C3A20236666666666663B0A7D0A2E752D436F6C6F722D33302D46472D2D6272207B0A20207374726F6B653A20236666666666663B0A2020626F726465722D636F6C6F723A20236666666666663B0A7D0A2E752D666F';
wwv_flow_api.g_varchar2_table(1345) := '6375736564207B0A2020626F782D736861646F773A2030203020302031707820236666326435352C2030203020317078203070782072676261283235352C2034352C2038352C20302E35292021696D706F7274616E743B0A20206F75746C696E653A206E';
wwv_flow_api.g_varchar2_table(1346) := '6F6E653B0A7D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(31828386281790606)
,p_theme_id=>42
,p_file_name=>'15399608123926301.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29929186044974683)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29929307164974732)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29929539695974732)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29930717135974733)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29930890503974733)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29931616250974735)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29932026282974736)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29932643394974736)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29933239682974744)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29933449452974748)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29934323875974755)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29935971177974758)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29937371317974777)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29940880475974791)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29941015130974791)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29941427809974792)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29941836700974792)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29942391458974792)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29943085325974811)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29943270059974814)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29944790479974815)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29945557156974815)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29945835057974815)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29946540379974815)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29946839138974817)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29947383342974824)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29947685817974829)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29947883631974829)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29948880633974863)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29950734269974900)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29951499866974905)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29952535397974908)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29953199707974908)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29953580705974908)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29954263833974909)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29954965990974909)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29957320631974913)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29958418073974914)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29959679630974948)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29960591738975055)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29960882200975055)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29961076770975056)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29961206384975056)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29961422775975056)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29961882020975056)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29962585305975058)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29962971112975059)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29963123179975059)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29963327099975059)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29963519243975059)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29963795590975059)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(29964106460975060)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929068040974670)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929243195974728)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(29929186044974683)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929469215974732)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(29929307164974732)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929657540974732)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(29929539695974732)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929747794974732)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(29929186044974683)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929820883974732)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(29929307164974732)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929939649974732)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(29929186044974683)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29929989749974732)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(29929307164974732)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29930150119974732)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(29929186044974683)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29930220991974732)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29928806400974651)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(29929539695974732)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29930789681974733)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29930463632974732)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29931061684974733)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(29930463632974732)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(29930890503974733)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29931107750974733)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(29930463632974732)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29931236062974733)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(29930463632974732)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(29930890503974733)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29931707895974735)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(29931616250974735)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29931886451974735)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(29931616250974735)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29931968587974736)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(29931616250974735)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932116231974736)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932210899974736)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932296365974736)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932391250974736)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(29931616250974735)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932541560974736)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932780643974736)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932866292974736)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932948463974736)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29932992361974736)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29933092568974744)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29933303331974748)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(29933239682974744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29933504387974748)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29933449452974748)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29933595057974748)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(29933239682974744)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29933734332974749)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29933837433974749)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29933958083974749)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29934055162974754)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29933449452974748)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29934156583974754)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29934228031974755)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29934454779974755)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(29934323875974755)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29934561483974755)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(29934323875974755)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29934656061974755)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29931362324974734)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935040869974758)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935092787974758)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935223253974758)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935288415974758)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935431000974758)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935522683974758)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935637760974758)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935726746974758)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935874181974758)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29935999763974758)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(29935971177974758)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29936166283974776)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(29935971177974758)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29936258058974776)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29933449452974748)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29936358242974776)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29936413462974776)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29936498348974776)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29936675488974776)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29933449452974748)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29936759983974776)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29934777607974755)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29937261403974777)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29937061224974777)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29937434161974777)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29937061224974777)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(29937371317974777)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29937519630974777)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29937061224974777)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(29937371317974777)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29937587286974777)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29937061224974777)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29937766305974777)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29937061224974777)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29937798814974777)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29937061224974777)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(29937371317974777)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29938058281974782)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29937907596974782)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29938146762974782)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29937907596974782)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29938783627974783)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29938791685974783)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29938966911974787)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939069291974788)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(29932026282974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939099198974788)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939232904974788)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939370368974788)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939414180974790)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939574022974790)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(29932643394974736)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939648842974790)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(29933239682974744)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939702741974791)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(29933449452974748)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939878289974791)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(29933239682974744)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939965302974791)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29939994326974791)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29940178700974791)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29940215927974791)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(29933449452974748)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29940357525974791)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29940423172974791)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29938449024974783)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(29930717135974733)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29940957339974791)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29940499904974791)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(29940880475974791)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29941155417974791)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29940499904974791)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(29941015130974791)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29941221142974791)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29940499904974791)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29941359515974792)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29940499904974791)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(29941015130974791)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29941572360974792)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29940499904974791)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(29941427809974792)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29941634424974792)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29940499904974791)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(29941427809974792)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29941947461974792)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29941762159974792)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(29941836700974792)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29942022323974792)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29941762159974792)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29942165648974792)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(29941762159974792)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(29941836700974792)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29942557569974792)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(29942260046974792)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(29942391458974792)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29942664658974792)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29942260046974792)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(29942391458974792)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29942731280974792)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(29942260046974792)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943141325974811)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(29943085325974811)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943287113974814)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943402460974814)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(29943085325974811)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943492947974814)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943646332974814)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(29943085325974811)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943723192974814)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943881045974814)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29943916161974814)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(29943085325974811)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944072852974814)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(29943085325974811)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944153516974814)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944203026974814)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944344104974814)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944390930974814)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944584041974814)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29942948077974811)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944784044974815)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29944918618974815)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(29944790479974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945022193974815)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945092208974815)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(29944790479974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945235349974815)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945342260974815)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(29944790479974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945416691974815)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945604575974815)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(29945557156974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945716870974815)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(29945557156974815)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29945931032974815)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(29945835057974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29946025330974815)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(29945835057974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29946113634974815)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(29945557156974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29946194635974815)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29946309954974815)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(29944790479974815)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29946423415974815)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29946601212974815)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29944621491974814)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(29946540379974815)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29946903516974817)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29946766695974815)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(29946839138974817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29947038363974817)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29946766695974815)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(29946839138974817)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29947470309974829)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(29947383342974824)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29947490606974829)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(29947383342974824)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29947732009974829)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(29947685817974829)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29947984451974829)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(29947883631974829)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29948047802974829)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(29947883631974829)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29948170894974829)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(29947883631974829)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29948269257974829)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(29947685817974829)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29948357824974829)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29948437638974829)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29947246375974817)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(29947883631974829)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29948636238974863)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(29948526519974829)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(29945557156974815)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29948943327974863)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949002559974863)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949148363974863)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949233155974863)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949339315974863)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949390073974863)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949518237974863)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949676532974864)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29948734074974863)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949854765974864)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29949889684974864)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950003884974864)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950142998974864)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950239891974864)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(29943270059974814)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950330052974864)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950400016974864)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950521626974864)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(29949689487974864)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(29948880633974863)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950813272974900)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29950929592974905)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951011283974905)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951176004974905)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951216334974905)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951305472974905)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951401446974905)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951621620974906)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(29951499866974905)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951777580974906)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(29951499866974905)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951830041974906)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29951924128974906)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(29951499866974905)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952083882974906)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952158367974906)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(29951499866974905)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952284102974906)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29950650189974881)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(29951499866974905)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952459733974908)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952658226974908)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(29952535397974908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952693961974908)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952849747974908)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(29952535397974908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29952964551974908)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953019368974908)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(29952535397974908)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953141314974908)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953328511974908)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(29953199707974908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953438654974908)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(29953199707974908)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953595397974908)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(29953580705974908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953705656974908)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(29953580705974908)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953868881974908)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(29953199707974908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29953965220974908)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29954077793974909)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(29952535397974908)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29954144132974909)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29954368458974909)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29952350557974906)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(29954263833974909)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29954568888974909)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29954478339974909)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(29953199707974908)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29954636453974909)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29954478339974909)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29954714811974909)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29954478339974909)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29954875921974909)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29954478339974909)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955017831974910)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29954478339974909)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(29954965990974909)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955105099974910)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29954478339974909)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(29954965990974909)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955349447974910)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955392330974910)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955549374974911)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955616654974911)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955733235974911)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955869026974911)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29955949054974911)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29956058744974911)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(29955263620974910)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29956209376974911)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(29956122810974911)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29956379978974911)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29956122810974911)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29956413974974911)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29956122810974911)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29956548312974911)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29956122810974911)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957063045974913)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29956949740974913)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(29953580705974908)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957157408974913)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29956949740974913)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(29950734269974900)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957199178974913)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29956949740974913)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(29953580705974908)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957474410974913)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29956949740974913)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(29957320631974913)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957554110974913)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29956949740974913)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(29953199707974908)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957651995974913)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29956949740974913)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(29953199707974908)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957733207974913)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(29956949740974913)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(29957320631974913)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29957906397974914)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29957884083974913)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29958054462974914)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29957884083974913)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29958120622974914)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29957884083974913)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29958267079974914)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(29957884083974913)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29958570111974914)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(29958344123974914)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(29958418073974914)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29958601540974914)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(29958344123974914)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(29958418073974914)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29958780543974914)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(29958344123974914)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(29958418073974914)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29959725471974948)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(29959549542974947)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(29959679630974948)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29959791715974948)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(29959549542974947)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(29959679630974948)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29960747798975055)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(29960591738975055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29960948797975055)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(29960882200975055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29961094206975056)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(29961076770975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29961313710975056)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(29961206384975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29961520289975056)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(29961422775975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29961673124975056)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(29960882200975055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29961771320975056)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(29961076770975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29961976880975056)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(29961882020975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962054512975056)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(29961882020975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962146434975056)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(29961882020975056)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962195638975057)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(29960591738975055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962326842975058)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(29961422775975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962473788975058)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(29961206384975056)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962622090975059)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(29962585305975058)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962765011975059)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(29960591738975055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29962812637975059)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(29960591738975055)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29963063804975059)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(29962971112975059)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29963283745975059)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(29963123179975059)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29963392203975059)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(29963327099975059)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29963648654975059)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(29963519243975059)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29963728739975059)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(29963519243975059)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29963905110975059)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(29963795590975059)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29964006359975059)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(29963123179975059)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29964201022975060)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(29964106460975060)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29964304081975060)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(29964387657975060)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(29964106460975060)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(31737108231576746)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(29964847066975135)
,p_name=>'APEX'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(31730219425146524)
,p_name=>'No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(29964634407975062)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(29922196020974445)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(29956833183974912)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(29964551045975062)
,p_nav_bar_list_template_id=>wwv_flow_api.id(29956766831974912)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(29964634407975062)
,p_name=>'Apex World Dashboard'
,p_page_mode=>'NORMAL'
,p_step_title=>'Apex World Dashboard'
,p_step_sub_title=>'Apex World Dashboard'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'https://www.speech2form.com/oj/js/libs/require/require.js',
'https://www.speech2form.com/oj/js/libs/jquery/jquery-2.1.3.min.js',
''))
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var  chartData;',
'var colors = [  '''',''rgb(237,102,71)'',''rgb(250,213,92)'',''rgb(38,125,179)'',''rgb(104,193,130)''];',
'var countryId = [];',
'',
'var list = apex.item(''P1_TYPE'').getValue().split(''|'');',
'var desc1 = list[0];',
'var desc2 = list[1];',
'',
'',
'function init() {',
'// Note changes here may need to be made to the path config block in main.js as well',
'requirejs.config({',
'    // Path mappings for the logical module names',
'    baseUrl: "https://www.speech2form.com/oj/js",',
'    paths: {',
'        ''knockout'': ''libs/knockout/knockout-3.4.0'',',
'        ''jquery'': ''libs/jquery/jquery-2.1.3.min'',',
'        ''jqueryui-amd'': ''libs/jquery/jqueryui-amd-1.11.4.min'',',
'        ''promise'': ''libs/es6-promise/promise-1.0.0.min'',',
'        ''hammerjs'': ''libs/hammer/hammer-2.0.4.min'',',
'        ''ojdnd'': ''libs/dnd-polyfill/dnd-polyfill-1.0.0.min'',',
'',
'        // IMPORTANT: if you are changing ojs mapping after the build (modifying the build results),',
'        // make sure to comment out requirejs.config() call in mainCook.js that specifies the ''bundles'' property',
'        ''ojs'': ''libs/oj/v2.0.0/min'',',
'',
'        ''ojL10n'': ''libs/oj/v2.0.0/ojL10n'',',
'        ''ojtranslations'': ''libs/oj/v2.0.0/resources'',',
'        ''signals'': ''libs/js-signals/signals.min'',',
'        ''app'': ''cookApp'',',
'        ''text'': ''libs/require/text'',',
'        ''lunr'': ''lunr/lunr.min'',',
'        ''taffy'': ''taffy/taffy-min'',',
'        ''mockrest'': ''rest/MockRESTServer'',',
'        ''mocksolr'': ''rest/MockSolrServer'',',
'        ''mockpagingrest'': ''rest/MockPagingRESTServer'',',
'        ''customrest'': ''rest/CustomURLServer'',',
'        ''mockjax'': ''rest/jquery.mockjax'',',
'        ''codeMirror'': ''codeMirror/codemirror.min'',',
'        ''xml'': ''codeMirror/xml.min'',',
'        ''htmlmixed'': ''codeMirror/htmlmixed.min'',',
'        ''javascript'': ''codeMirror/javascript.min'',',
'        ''css'': ''codeMirror/css.min'',',
'        ''activeline'': ''codeMirror/active-line.min'',',
'        ''markselection'': ''codeMirror/mark-selection.min'',',
'        ''matchbrackets'': ''codeMirror/matchbrackets.min'',',
'        ''foldcode'': ''codeMirror/foldcode.min'',',
'        ''foldgutter'': ''codeMirror/foldgutter.min'',',
'        ''xmlfold'': ''codeMirror/xml-fold.min'',',
'        ''commentfold'': ''codeMirror/comment-fold.min'',',
'        ''matchtags'': ''codeMirror/matchtags.min'',',
'        ''bracefold'':''codeMirror/brace-fold.min'',',
'        ''diagramLayouts'':''../cookbook/dataVisualizations/diagram/layouts'',',
'        ''stickyNav'': ''stickyNav''',
'    },',
'    // Shim configurations for modules that do not expose AMD',
'    shim: {',
'        ''jquery'': {',
'            exports: [''jQuery'', ''$'']',
'        },',
'        ''app'':',
'        {',
'          deps: [''jquery'']',
'        },',
'        ''mockrest'':',
'        {',
'          deps: [''mockjax'', ''jquery'']',
'        },',
'        ''mocksolr'':',
'        {',
'          deps: [''mockjax'', ''jquery'', ''taffy'']',
'        },',
'        ''mockpagingrest'':',
'        {',
'            deps: [''mockjax'', ''jquery'']',
'        },',
'        ''customrest'':',
'        {',
'            deps: [''mockjax'', ''jquery'']',
'        },',
'        ''mockjax'':',
'        {',
'          deps: [''jquery'']',
'        }',
'    }',
'});',
'}',
'',
'/******************************************************',
' * Build associative array Country name => Country id',
' *',
' **********************/',
'function fillCountryId()',
'{',
'    $(''#P1_COUNTRY_ID option'').each( function()',
'    {',
'        text = $(this).html();',
'        id   = $(this).attr(''value'');',
'        countryId[text] = id;',
'    });',
'}',
'',
'function process(key,value) {',
'    console.log(key + " : "+value);',
'}',
'',
'',
'/******************************************************',
' * Format as money',
' *',
' **********************/',
'function formatMoney(number)',
'{',
'    var number = Number(number);',
'    var number = number.toFixed(2) + '''';',
'    var x = number.split(''.'');',
'    var x1 = x[0];',
'    var x2 = x.length > 1 ? ''.'' + x[1] : '''';',
'    var rgx = /(\d+)(\d{3})/;',
'    while (rgx.test(x1)) {',
'        x1 = x1.replace(rgx, ''$1'' + '','' + ''$2'');',
'    }',
'    return ''$ '' + x1 + x2;',
'}',
'',
'/******************************************************',
' * Traverse tree to add items',
' *',
' **********************/',
'function traverse(p,o,func) ',
'{',
'',
'   o.label = o.id;',
'   o.shortDesc = "&lt;b&gt;" + o.id',
'                  + "&lt;/b&gt;&lt;br/&gt;"+desc1+": " + display_number(o.value)',
'                  + "&lt;br/&gt;"+desc2+": " + display_number(o.value2);',
'    ',
'   o.color = colors[o.color];',
'  ',
'   if ( o.nodes )',
'   { ',
'      for ( var i in o.nodes )',
'      {',
'          traverse(o.id, o.nodes[i] ,func);',
'      }',
'   }  ',
'}',
'',
'/******************************************************',
' * Display numbers readable',
' *',
' **********************/',
'function display_number(number)',
'{',
'  var sizes = [ {"base":1000,"symbol":"K"}',
'               ,{"base":1000000,"symbol":"M"}',
'               ,{"base":1000000000,"symbol":"G"}',
'               ,{"base":1000000000000,"symbol":"T"}',
'              ];',
'  var display = number.toString();',
'  ',
'  for ( i in sizes )',
'  {',
'    if ( number > sizes[i].base ) ',
'    {',
'      num1 = number / sizes[i].base;',
'      if ( num1 < 10 ) { num2 = Math.round(num1*10)/10; }',
'      else { num2 = Math.round(num1); }',
'      // console.log(number, num1, num2);',
'      display = num2 + sizes[i].symbol;',
'    }',
'  }',
'  return(display);',
'}',
'',
'/******************************************************',
' * Drill-down functionality in Sunburst Chart',
' *',
' **********************/',
'function implement_drill()',
'{',
'   console.log(''implement drill-down'');',
'console.log($(''svg'').find(''g[aria-label]'') );',
'/* (''svg'').find(''g'').has(''text'').each( function() {',
'  country = $(this).find(''text'').html();',
'  $(this).attr(''onclick'',''alert(\''''+country+''\'');'');',
'}); */',
'    ',
'    $(''svg g'').has(''text'').click( function() {',
'      elem = $(this).find(''text'').html();',
'      id = countryId[elem];',
'      if ( id ) ',
'      { ',
'        apex.item(''P1_COUNTRY_ID'').setValue(id);',
'        console.log(''Country ID=''+id);',
'        apex.submit(''DRILL'');',
'      }',
'   });',
'',
'}',
'',
'/******************************************************',
' * Hide navigation bar',
' *',
' **********************/',
'function hide_navbar()',
'{',
'$(''#t_Body_nav'').hide();',
'$(''#t_Button_navControl'').hide();',
'$(''#t_Body_content'').css(''margin-left'',''0px'');',
'}',
'',
'/******************************************************',
' * Sorting default descending',
' *',
' **********************/',
'function sorting_default_desc(regionSelector)',
'{',
'   $(regionSelector+'' .u-Report-sort'').each( function() {',
'      a = $(this).find(''a'');',
'      if ( a && $(this).find(''.u-Report-sortIcon'').length == 0 )',
'      { ',
'         href = $(a).attr(''href'');',
'         if ( href.indexOf(''_desc\'''') < 0 )',
'            { href = href.replace(''\'')'',''_desc\'')''); ',
'              $(a).attr(''href'',href);',
'            }',
'      }',
'   });',
'}',
'',
'/******************************************************',
' * Show more countries in ranking',
' *',
' **********************/',
'function show_more_down(object)',
'{',
'   var tr = $(object).closest(''tr''); ',
'   tr.removeClass(''ranking_between'').addClass(''ranking_show'');',
'   for ( var i=0; i<5; i++ )',
'   {',
'      tr = $(tr).next();',
'       console.log(i,tr);',
'      if ( !$(tr).hasClass() )',
'        { if ( i < 4 )',
'            { $(tr ).addClass(''ranking_show''); } ',
'          else',
'            { $(tr ).addClass(''ranking_between first''); }    ',
'        }',
'   }',
'}',
'',
'function show_more_up(object)',
'{',
'   var tr = $(object).closest(''tr''); ',
'   tr.removeClass(''ranking_between'').addClass(''ranking_show'');',
'   for ( var i=0; i<5; i++ )',
'   {',
'      tr = $(tr).prev();',
'      if ( !$(tr).hasClass() )',
'        { if ( i < 4 )',
'            { $(tr ).addClass(''ranking_show''); } ',
'          else',
'            { $(tr ).addClass(''ranking_between last''); }    ',
'        }',
'   }',
'}',
''))
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'init();',
'',
'var promiseRequire = function(moduleNames) {',
'    var deferred = $.Deferred()',
'    require(moduleNames, function() {',
'        var modules = Array.prototype.slice.apply(arguments)',
'        deferred.resolve(modules)',
'    })',
'    return deferred.promise()',
'}',
'',
'var documentReady = function() {',
'    var deferred = $.Deferred()',
'    $(document).ready(function() {',
'        deferred.resolve()',
'    })',
'    return deferred.promise()',
'}',
'',
'$.when(',
'    promiseRequire([''ojs/ojcore'', ''knockout'', ''jquery'', ''ojs/ojknockout'', ',
'      ''ojs/ojsunburst'',''ojs/ojlegend''])',
',',
'    apex.server.process (''GET_DATA''',
'                         ,{pageItems: "#P1_COUNTRY_ID,#P1_TYPE"',
'                          }',
'                        )   ',
',',
'    documentReady()',
')',
'.then(function(modules, response) {',
'    var data = response[0].result;',
'    var legend = response[0].legend;',
'',
'    var oj = modules[0];',
'    var ko = modules[1];',
'    var $ = modules[2];',
'',
'    console.log(''Retrieved data'')',
'    chartData = data;',
'',
'    var legendSections = [{items : [',
'        {text : legend[0].text, ',
'          color : colors[legend[0].color]},',
'        {text : legend[1].text, ',
'          color : colors[legend[1].color]},',
'        {text : legend[2].text, ',
'          color : colors[legend[2].color]},',
'        {text : legend[3].text, ',
'          color : colors[legend[3].color]}',
'     ]}];',
'     console.log(legendSections);',
'',
'     width = $(''#sunburst-container div'').width();',
'     $(''#legend-container'').width(width);',
' ',
'    ',
'    traverse(null, chartData, process);',
'    ko.applyBindings({nodeValues:ko.observableArray([chartData])}, ',
'      document.getElementById(''sunburst-container''));',
'     ko.applyBindings({legendSections:ko.observableArray(legendSections)},',
'        document.getElementById(''legend-container''));',
'',
'    setTimeout(implement_drill,3000);',
'});',
'',
'fillCountryId();',
'',
'$(''.db2_number'').each( function()',
'{',
'    value = $(this).html();',
'    value = display_number(value); ',
'    $(this).html(value);',
'});',
'',
'// hide_navbar();',
'',
''))
,p_css_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'https://www.speech2form.com/awd/oj.css',
'https://www.speech2form.com/awd/flags.css'))
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*******************************************************************',
' *  hide navigation',
' */',
'.t-Body-nav {',
'    display: none;',
'}',
'#t_Body_content {',
'    margin-left: 0px;',
'}',
'',
'#sunburst .oj-legend {',
'    padding-left: 120px;',
'}',
'',
'.t-Header, .t-Header-branding	{',
'   background-color: #267db3;',
'}',
'',
'.t-Header-logo {',
'    margin-top: 0px!important;',
'}',
'',
'.t-Header-logo-link {',
'    color: #FFF;',
'}',
'',
'.t-Header-branding .t-Button	{',
'   display: none;',
'}',
'',
'',
'/*******************************************************************',
' *  style info blocks',
' */',
'.db2_container {',
'    background-color: rgb(237, 102, 71);',
'    color: white;',
'    float: left;',
'    height: 120px;',
'    margin-right:1%;',
'    padding: 5px;',
'    position: relative;',
'    width: 24%;',
'}',
'',
'.db2_icon_container {',
'    height: 100%;',
'    left: 0;',
'    padding-top: 30px;',
'    position: absolute;',
'    text-align: center;',
'    top: 0;',
'    width: 80px;',
'}',
'',
'.db2_red {',
'    background-color: rgb(237, 102, 71);',
'}',
'.db2_blue {',
'    background-color: rgb(38,125,179);',
'}',
'.db2_green {',
'    background-color: rgb(104,193,130);',
'}',
'.db2_orange {',
'    background-color: rgb(250,213,92);',
'}',
'',
'.db2_main {',
'    border-left: 1px solid white;',
'    left: 80px;',
'    padding: 0 10px;',
'    position: absolute;',
'    top: 5px;',
'    height:110px;',
'}',
'',
'.db2_number {',
'    font-size: 1.8em;',
'    padding: 10px 0 5px;',
'}',
'',
'.db2_container i {',
'    font-size: 50px;',
'}',
'.db2_text {',
'    font-size: 0.8em;',
'    line-height: 1.1em;',
'}',
'',
'@media (max-width: 1200px) {',
'  .db2_container {',
'      height: 140px;',
'  }',
'.db2_icon_container {',
'    padding-top: 40px;',
'}',
'.db2_main {',
'      height: 130px;',
'  }',
'}',
'',
'@media (max-width: 1000px) {',
'  .db2_container {',
'      height: 100px;',
'      width: 48%;',
'      margin-top:10px;',
'  }',
'  .db2_green {',
'      clear: left;',
'  }',
'}',
'',
'@media (max-width: 600px) {',
'  .db2_container {',
'      clear: left;',
'      height: 100px;',
'      width: 98%;',
'  }',
'  .db2_main {',
'      height: 90px;',
'  }',
'}',
'',
'',
'.t-Report-report thead th {',
'    background-color: rgb(38, 125, 179);',
'    color: white;',
'}',
'.t-Report-report thead th a {',
'    color: white;',
'}',
'',
'/*******************************************************************',
' *  styling ranking table',
' */',
'#ranking_table {',
'   border-bottom: 1px solid #E6E6E6;',
'}',
'',
'#report_ranking .t-Report-report tbody tr {',
'   display: none;',
'}',
'',
'#report_ranking .t-Report-report tbody tr.ranking_highlight {',
'    color: white;',
'    display: table-row;',
'}',
'#report_ranking .t-Report-report tbody tr.ranking_highlight td,',
'#report_ranking .t-Report-report tbody tr.ranking_highlight td:hover',
'{',
'    background-color: rgb(104, 193, 130)!important;',
'}',
'#report_ranking .t-Report-report tbody tr.ranking_highlight a {',
'    color: white;',
'}',
'',
'#report_ranking .t-Report-report tbody tr.ranking_between,',
'#report_ranking .t-Report-report tbody tr.ranking_between:hover',
'{',
'    display: table-row;',
'    background-color: #C0C0C0;',
'    color: transparent;',
'}',
'.ranking_between .pop_bars {',
'    display: none;',
'}',
'',
'#report_ranking .t-Report-report tbody tr.ranking_between img {',
'    display: none;',
'}',
'',
'#report_ranking .t-Report-report tbody tr.ranking_between td {',
'    background-color: #C0C0C0;',
'}',
'#report_ranking .t-Report-report tbody tr.ranking_between a {',
'    color: transparent;',
'}',
'',
'#report_ranking i.fa-chevron-up,',
'#report_ranking i.fa-chevron-down',
'{',
'    display: none;',
'}',
'',
'/*',
' * not displayed until implementation',
' *',
'#report_ranking .ranking_between i.fa-chevron-down,',
'#report_ranking .ranking_between i.fa-chevron-up',
'{',
'    color: black;',
'    display: inline;',
'}',
'*/',
'',
'#report_ranking .t-Report-report tbody tr.ranking_show {',
'    display: table-row;',
'}',
'',
'',
'/*******************************************************************',
' *  pop_bars definition',
' */',
'.pop_bars {',
'    width:150px;',
'    height:25px;',
'    color: white;',
'    border: 1px solid #E0E0E0;',
'    background-color: rgb(250,213,92);',
'}',
'',
'',
'[headers=LAND_DISTRIBUTION] .pop_bars {',
'    background-color: #C0C0C0;',
'}',
'',
'.pop_bars div {',
'    float: left;',
'    height: 100%;',
'    text-align: center;',
'}',
'',
'.pop_bars .bar1 {',
'    background-color: rgb(104,193,130);',
'}',
'.pop_bars .bar2 {',
'    background-color: rgb(38,125,179);',
'}',
'.pop_bars .bar3 {',
'    background-color: rgb(250,213,92);',
'    color: #606060;',
'}',
'.pop_bars .bar4 {',
'    background-color: rgb(237, 102, 71);',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ADC'
,p_last_upd_yyyymmddhh24miss=>'20160331222953'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(29848329031411527)
,p_name=>'Country list'
,p_template=>wwv_flow_api.id(29938449024974783)
,p_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'     , country_id',
'from   val, lim',
'order by country_name',
'',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(29947246375974817)
,p_query_num_rows=>250
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29849480729411538)
,p_query_column_id=>1
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29848523782411529)
,p_query_column_id=>2
,p_column_alias=>'COUNTRY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Country name'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29849495193411539)
,p_query_column_id=>3
,p_column_alias=>'VALUE1'
,p_column_display_sequence=>4
,p_column_heading=>'Value1'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(29848463446411528)
,p_query_column_id=>4
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Country id'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32149002886480862)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32151040790480910)
,p_plug_name=>'Sunburst Chart'
,p_region_name=>'sunburst'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_display_column=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_args       apex_application_global.vc_arr2;',
'  l_div varchar2(4000) := null;',
'  function arg(p_index in number) return varchar2 is',
'  begin',
'    return(l_args(p_index));',
'  exception',
'    when others then return(null);',
'  end;',
'begin  ',
'  ',
'  l_div := q''!<div id=''sunburst-container''>',
'    <div data-bind="ojComponent: {',
'            component: ''ojSunburst'', ',
'            animationOnDisplay: ''auto'',',
'            sizeLabel: ''[desc1]'',',
'            colorLabel: ''[desc2]'',',
'            nodeDefaults: {labelDisplay: ''rotated''},',
'            nodes: nodeValues',
'        }" ',
'        style="max-width:650px;width:100%; height:650px;">',
'    </div>',
'</div>',
'<div id=''legend-container''>',
'  <div data-bind="ojComponent: {',
'      component: ''ojLegend'',',
'      orientation: ''horizontal'',',
'      textStyle: ''font-size:14px;'',',
'      sections: legendSections',
'      }"',
'      style="max-width:485px;width:100%; height:40px;margin:auto;">',
'  </div>',
'</div>!'';',
' ',
'  if :P1_TYPE is not null then',
'    l_args := apex_util.string_to_table(:P1_TYPE,''|'');',
'    l_div := replace(l_div,''[desc1]'',nvl(l_args(1),''Text1''));',
'    l_div := replace(l_div,''[desc2]'',nvl(l_args(2),''Text2''));',
'  else',
'    l_div := replace(l_div,''[desc1]'',''Text1'');',
'    l_div := replace(l_div,''[desc2]'',''Text2'');',
'  end if;',
'  htp.p(l_div);',
'',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>':P1_COUNTRY_ID < 100'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32152199377480925)
,p_name=>'Collection'
,p_template=>wwv_flow_api.id(29938449024974783)
,p_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select n001       as  country_id',
'     , n002       as  parent_id',
'     , c001       as  country_name',
'     , c002       as  german_name',
'     , round(c010)       as  perc_agriculture',
'     , c014       as  land_area',
'     , round(c015/1000000)       as  population',
'     , round(c024)               as  oil_consumption_per_inh',
'     , round(c019)               as  population_density',
'     , round(c034,1)             as  pct_increase',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(29947246375974817)
,p_query_num_rows=>250
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32152655397480932)
,p_query_column_id=>1
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Country id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32153714481480935)
,p_query_column_id=>2
,p_column_alias=>'PARENT_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Parent id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32152982300480933)
,p_query_column_id=>3
,p_column_alias=>'COUNTRY_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Country name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32153330141480934)
,p_query_column_id=>4
,p_column_alias=>'GERMAN_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'German name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32154522053480935)
,p_query_column_id=>5
,p_column_alias=>'PERC_AGRICULTURE'
,p_column_display_sequence=>6
,p_column_heading=>'Perc agriculture'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32154954080480936)
,p_query_column_id=>6
,p_column_alias=>'LAND_AREA'
,p_column_display_sequence=>7
,p_column_heading=>'Land area'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32154170176480935)
,p_query_column_id=>7
,p_column_alias=>'POPULATION'
,p_column_display_sequence=>5
,p_column_heading=>'Population'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32155318726480936)
,p_query_column_id=>8
,p_column_alias=>'OIL_CONSUMPTION_PER_INH'
,p_column_display_sequence=>8
,p_column_heading=>'Oil consumption per inh'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32156152662480936)
,p_query_column_id=>9
,p_column_alias=>'POPULATION_DENSITY'
,p_column_display_sequence=>10
,p_column_heading=>'Population density'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32155721984480936)
,p_query_column_id=>10
,p_column_alias=>'PCT_INCREASE'
,p_column_display_sequence=>9
,p_column_heading=>'Pct increase'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32229469539686956)
,p_name=>'Information on '
,p_region_name=>'country_info'
,p_template=>wwv_flow_api.id(29938449024974783)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_css_classes=>'display_number'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with cnt as (',
'select c001    country_name',
'     , c014/100              as  land_area',
'     , to_number(c015)       as  population',
'     , to_number(c011)*c014/10000  as  farmland_area',
'     , to_number(c021)       as  lifespan',
'     , to_number(c024)       as  energy_use_per_inh',
'     , to_number(c025)       as  co2_emission_per_inh',
'     , to_number(c026)       as  doctors',
'     , to_number(c015/c014)  as  population_density',
'     , to_number(c030)       as  length_roads',
'     , to_number(c033)       as  cars',
'     , to_number(c034)       as  population_growth',
'from   apex_collections',
'where  collection_name = ''&APP_COLL_NAME.''',
'  and  n001 = :P1_COUNTRY_ID',
'), src as (',
'select 1  as  sort_order',
'     , ''Population''  title',
'     , population    data',
'     , ''Number of inhabitants''  text',
'     , ''fa-users''   as  icon_class',
'     , ''db2_red''     as  container_class',
'from   cnt',
'union',
'select 2',
'     , ''Land Area''  title',
'     , land_area',
'     , ''Land surface in km2''  text',
'     , ''fa-area-chart''   as  icon_class',
'     , ''db2_blue''     as  container_class',
'from   cnt',
'union',
'select 3',
'     , ''Energy Usage''  title',
'     ,  energy_use_per_inh * population',
'     , ''Total energy in oil equivalents''  text',
'     , ''fa-fire''   as  icon_class',
'     , ''db2_green''     as  container_class',
'from   cnt',
'where  :p1_subject = ''energy''',
'union',
'select 4',
'     , ''CO2 Production''  title',
'     ,  co2_emission_per_inh * population',
'     , ''Total emission of Carbon dioxyde in tons''  text',
'     , ''fa-cloud''   as  icon_class',
'     , ''db2_orange''     as  container_class',
'from   cnt',
'where  :p1_subject = ''energy''',
'union',
'select 3',
'     , ''Population growth''  title',
'     ,  round(population_growth,1)',
'     , ''% population growth in 10 years''  text',
'     , ''fa-line-chart''   as  icon_class',
'     , ''db2_green''     as  container_class',
'from   cnt',
'where  :p1_subject = ''population''',
'union',
'select 4',
'     , ''Population density''  title',
'     ,  round(population/land_area)',
'     , ''Number of people per square kilometer''  text',
'     , ''fa-users''   as  icon_class',
'     , ''db2_orange''     as  container_class',
'from   cnt',
'where  :p1_subject = ''population''',
'union',
'select 3',
'     , ''Farmland''  title',
'     ,  farmland_area',
'     , ''Square kilometers farmland''  text',
'     , ''fa-leaf''   as  icon_class',
'     , ''db2_green''     as  container_class',
'from   cnt',
'where  :p1_subject = ''agriculture''',
'union',
'select 4',
'     , ''Farmland per inh.''  title',
'     ,  round(farmland_area*1000000/population)',
'     , ''Square meter farmland per inhabitant''  text',
'     , ''fa-apple''   as  icon_class',
'     , ''db2_orange''     as  container_class',
'from   cnt',
'where  :p1_subject = ''agriculture''',
'union',
'select 3',
'     , ''Available doctors''  title',
'     ,  round(doctors)',
'     , ''Doctors per 10.000 inhabitants''  text',
'     , ''fa-user-md''   as  icon_class',
'     , ''db2_green''     as  container_class',
'from   cnt',
'where  :p1_subject = ''health''',
'union',
'select 4',
'     , ''Lifespan''  title',
'     ,  round(lifespan)',
'     , ''Average lifespan for females at birth''  text',
'     , ''fa-female''   as  icon_class',
'     , ''db2_orange''     as  container_class',
'from   cnt',
'where  :p1_subject = ''health''',
'union',
'select 3',
'     , ''Car density''  title',
'     ,  round(cars)',
'     , ''Cars per 1.000 inhabitants''  text',
'     , ''fa-car''   as  icon_class',
'     , ''db2_green''     as  container_class',
'from   cnt',
'where  :p1_subject = ''mobility''',
'union',
'select 4',
'     , ''Road network''  title',
'     ,  round(length_roads)',
'     , ''Length of road network in kilometers''  text',
'     , ''fa-road''   as  icon_class',
'     , ''db2_orange''     as  container_class',
'from   cnt',
'where  :p1_subject = ''mobility''',
')',
'select sort_order',
'     , title',
'     , data',
'     , text',
'     , icon_class',
'     , container_class',
'from   src',
'order by 1',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(31822924961628144)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32231786227687019)
,p_query_column_id=>1
,p_column_alias=>'SORT_ORDER'
,p_column_display_sequence=>6
,p_column_heading=>'Sort order'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32229695952686988)
,p_query_column_id=>2
,p_column_alias=>'TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32230094621687018)
,p_query_column_id=>3
,p_column_alias=>'DATA'
,p_column_display_sequence=>2
,p_column_heading=>'Data'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32230518049687018)
,p_query_column_id=>4
,p_column_alias=>'TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32230977910687018)
,p_query_column_id=>5
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32231360967687019)
,p_query_column_id=>6
,p_column_alias=>'CONTAINER_CLASS'
,p_column_display_sequence=>5
,p_column_heading=>'Container class'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32234844585960239)
,p_name=>'Comparison Table'
,p_region_name=>'ranking'
,p_template=>wwv_flow_api.id(29938449024974783)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with cnt as (',
'select c001    country_name',
'     , lower(c003)   as flag',
'     , n001    country_id ',
'     , c014/100    land_area',
'     , to_number(c015)        population',
'     , round(to_number(c015)*100/to_number(c014))         pop_density',
'     , round(to_number(c034),1)  pop_growth',
'     , case when has_pop_distr = ''Y'' then',
'                ''<div class="pop_bars">''',
'                ||''<div class="bar1" style="width:''||under_15||''%" title="Under 15">''||case when under_15 > 18 then round(under_15)||''%'' end||''</div>''',
'                ||''<div class="bar2" style="width:''||middle_aged||''%" title="Between 15 and 64">''||case when middle_aged > 18 then round(middle_aged)||''%'' end||''</div>''',
'                ||''<div class="bar3" style="width:''||over_60||''%" title="Over 64">''||case when over_60 > 18 then round(over_60)||''%'' end||''</div>''',
'                ||''</div>''',
'           else null',
'       end                as  population_distribution',
'     , agriculture',
'     , crop',
'     , bio_crop',
'     , forest',
'     , (100 - agriculture - forest) remaining',
'     , case when has_area_distr = ''Y'' then',
'                ''<div class="pop_bars">''',
'                ||''<div class="bar4" style="width:''||(agriculture - crop)||''%" title="non-crop agricultural">''||case when agriculture - crop   > 18 then round(agriculture-crop)  ||''%'' end||''</div>''',
'                ||''<div class="bar3" style="width:''||(crop -bio_crop)    ||''%" title="non-bio crop">''||case when crop-bio_crop > 18 then round(crop-bio_crop)||''%'' end||''</div>''',
'                ||''<div class="bar2" style="width:''||bio_crop            ||''%" title="biological crop">''||case when bio_crop      > 18 then round(bio_crop)     ||''%'' end||''</div>''',
'                ||''<div class="bar1" style="width:''||forest              ||''%" title="forest">''||case when forest        > 18 then round(forest)       ||''%'' end||''</div>''',
'                ||''</div>''',
'           else null',
'       end                as  land_distribution',
'     , to_number(c024)        energy_use_per_inh',
'     , to_number(c025)        co2_emission_per_inh',
'     , to_number(c032)        oil_price',
'     , to_number(c033)        cars',
'     , to_number(c031)        road_death',
'     , to_number(c030)        road_length',
'     , to_number(c026)        doctors_per_inh',
'     , to_number(c027)        hosp_bed_per_inh',
'     , to_number(c028)        inf_mort',
'     , round((to_number(c021)+to_number(c022))/2)       avg_lifespan',
'',
'',
'     , case when n001 = :P1_COUNTRY_ID then ''ranking_current'' else null end  class',
'from  ( select src.*',
'             , round(l_under_15    / sum_all*99.5,2)       as  under_15',
'             , round(l_middle_aged / sum_all*99.5,2)       as  middle_aged',
'             , round(l_over_60     / sum_all*99.5,2)       as  over_60',
'             , case when l_under_15     is not null',
'                      and l_middle_aged is not null',
'                      and l_over_60     is not null',
'                    then ''Y''',
'                    else ''N''',
'               end                                         as  has_pop_distr',
'             , case when sum_area > 100 then round(l_agriculture *100 / sum_area,1) ',
'                    else l_agriculture',
'               end   agriculture',
'             , case when sum_area > 100 then round(l_crop *100 / sum_area,1)',
'                    else l_crop',
'               end   crop',
'             , case when sum_area > 100 then round(l_bio_crop *100 / sum_area,1) ',
'                    else l_bio_crop',
'               end   bio_crop',
'             , case when sum_area > 100 then round(l_forest *100 / sum_area,1) ',
'                    else l_forest',
'               end   forest',
'             , case when l_agriculture     is not null',
'                      and l_crop is not null',
'                      and l_forest     is not null',
'                    then ''Y''',
'                    else ''N''',
'               end                                        as  has_area_distr',
'        from  ( select col.*',
'                     , round(to_number(c016))    l_under_15',
'                     , round(to_number(c017))    l_middle_aged',
'                     , round(to_number(c018))    l_over_60',
'                     , round(to_number(c016)) + round(to_number(c017)) + round(to_number(c018))    sum_all',
'                     , round(to_number(c010),1)    l_agriculture',
'                     , round(to_number(c011),1)    l_crop',
'                     , round(to_number(c012),1)    l_bio_crop',
'                     , round(to_number(c013),1)    l_forest',
'                     , round(to_number(c013),1) + round(to_number(c010),1)    sum_area',
'                from   apex_collections   col',
'                where  collection_name = ''&APP_COLL_NAME.'' ) src',
'       )',
')	   ',
'select cnt.*',
'     , cnt.country_id as ranking',
'from   cnt',
'where  country_id >= 100',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_display_when_condition=>':P1_COUNTRY_ID >= 100'
,p_display_condition_type=>'PLSQL_EXPRESSION'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(29947246375974817)
,p_query_num_rows=>250
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32235136500960254)
,p_query_column_id=>1
,p_column_alias=>'COUNTRY_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Country Name'
,p_column_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,7:P1_COUNTRY_ID:#COUNTRY_ID#'
,p_column_linktext=>'<span class="#CLASS#">#COUNTRY_NAME#</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32238231041960366)
,p_query_column_id=>2
,p_column_alias=>'FLAG'
,p_column_display_sequence=>2
,p_column_heading=>'Flag'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<img class="flag flag-#FLAG#" src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"/>',
'<i class="fa fa-chevron-up" style="color: black;" onclick="show_more_up(this)"></i>',
'<i class="fa fa-chevron-down" style="color: black;" onclick="show_more_down(this)"></i>'))
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32236224060960307)
,p_query_column_id=>3
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32236612679960314)
,p_query_column_id=>4
,p_column_alias=>'LAND_AREA'
,p_column_display_sequence=>4
,p_column_heading=>'Area'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32237011394960316)
,p_query_column_id=>5
,p_column_alias=>'POPULATION'
,p_column_display_sequence=>5
,p_column_heading=>'Popul.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT not in (''agriculture'')'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334083303174030)
,p_query_column_id=>6
,p_column_alias=>'POP_DENSITY'
,p_column_display_sequence=>14
,p_column_heading=>'Population<br/>density'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'population'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334110279174031)
,p_query_column_id=>7
,p_column_alias=>'POP_GROWTH'
,p_column_display_sequence=>15
,p_column_heading=>'Population<br/> growth'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'population'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32237793520960364)
,p_query_column_id=>8
,p_column_alias=>'POPULATION_DISTRIBUTION'
,p_column_display_sequence=>16
,p_column_heading=>'Population distribution'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'population'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334202873174032)
,p_query_column_id=>9
,p_column_alias=>'AGRICULTURE'
,p_column_display_sequence=>6
,p_column_heading=>'% Agric.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'agriculture'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334377052174033)
,p_query_column_id=>10
,p_column_alias=>'CROP'
,p_column_display_sequence=>7
,p_column_heading=>'% Crop'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'agriculture'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334441147174034)
,p_query_column_id=>11
,p_column_alias=>'BIO_CROP'
,p_column_display_sequence=>8
,p_column_heading=>'% Bio crop'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'agriculture'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334563021174035)
,p_query_column_id=>12
,p_column_alias=>'FOREST'
,p_column_display_sequence=>9
,p_column_heading=>'% Forest'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'agriculture'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334649727174036)
,p_query_column_id=>13
,p_column_alias=>'REMAINING'
,p_column_display_sequence=>10
,p_column_heading=>'Other'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'agriculture'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32334748327174037)
,p_query_column_id=>14
,p_column_alias=>'LAND_DISTRIBUTION'
,p_column_display_sequence=>11
,p_column_heading=>'Land distribution'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P1_SUBJECT'
,p_display_when_condition2=>'agriculture'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32235557227960264)
,p_query_column_id=>15
,p_column_alias=>'ENERGY_USE_PER_INH'
,p_column_display_sequence=>12
,p_column_heading=>'Energy<br/>/inh.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT in (''energy'',''mobility'')'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32237395475960359)
,p_query_column_id=>16
,p_column_alias=>'CO2_EMISSION_PER_INH'
,p_column_display_sequence=>13
,p_column_heading=>'CO2 <br/>per inh'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT in (''energy'',''mobility'')'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32336603897174056)
,p_query_column_id=>17
,p_column_alias=>'OIL_PRICE'
,p_column_display_sequence=>23
,p_column_heading=>'Oil price in $/l'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT in (''energy'',''mobility'')'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32336712300174057)
,p_query_column_id=>18
,p_column_alias=>'CARS'
,p_column_display_sequence=>24
,p_column_heading=>'Cars / 1000 inh'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT in (''energy'',''mobility'')'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32336869986174058)
,p_query_column_id=>19
,p_column_alias=>'ROAD_DEATH'
,p_column_display_sequence=>25
,p_column_heading=>'Road Death / 100.000 inh'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT in (''mobility'')'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32336888449174059)
,p_query_column_id=>20
,p_column_alias=>'ROAD_LENGTH'
,p_column_display_sequence=>26
,p_column_heading=>'Road length in km'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT in (''mobility'')'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32392938935956413)
,p_query_column_id=>21
,p_column_alias=>'DOCTORS_PER_INH'
,p_column_display_sequence=>19
,p_column_heading=>'Doctors per 10K inh'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT = ''health'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32393082618956414)
,p_query_column_id=>22
,p_column_alias=>'HOSP_BED_PER_INH'
,p_column_display_sequence=>20
,p_column_heading=>'Hosp. bed per 10K inh'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT = ''health'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32393170672956415)
,p_query_column_id=>23
,p_column_alias=>'INF_MORT'
,p_column_display_sequence=>21
,p_column_heading=>'Infant mortal.'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT = ''health'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32393285970956416)
,p_query_column_id=>24
,p_column_alias=>'AVG_LIFESPAN'
,p_column_display_sequence=>22
,p_column_heading=>'Avg lifespan'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>':P1_SUBJECT = ''health'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32235899646960303)
,p_query_column_id=>25
,p_column_alias=>'CLASS'
,p_column_display_sequence=>17
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32105116025017417)
,p_query_column_id=>26
,p_column_alias=>'RANKING'
,p_column_display_sequence=>1
,p_column_heading=>'Rank'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32288346762211253)
,p_plug_name=>'Europe Map'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 3',
') where n001 = :P1_COUNTRY_ID',
'    and n001 < 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32288439915211254)
,p_default_chart_type=>'Map'
,p_chart_title=>'Europe'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/europe.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'Y'
,p_chart_xml=>'<?xml version = "1.0" encoding="utf-8" standalone = "yes"?><anychart><settings><animation enabled="false"/><no_data show_waiting_animation="False"><label><text>#NO_DATA_MESSAGE#</text><font family="Verdana" bold="yes" size="10"/></label></no_data></s'
||'ettings><margin left="0" top="0" right="0" bottom="0" /><charts><chart plot_type="Map" name="chart_15860152911347043"> <palettes><palette name="undefPalette"><item color="0xC9DEA4" /><item color="0xC9DEA4" /><item color="0xC9DEA4" /><item color="0xC9'
||'DEA4" /><item color="0xCEE1AB" /><item color="0xCEE1AB" /><item color="0xC9DEA4" /><item color="0xC9DEA4" /><item color="0xC9DEA4" /><item color="0xB7D28A" /><item color="0xA4C671" /><item color="0x98BE5F" /><item color="0x8EB851" /><item color="0xC9'
||'DEA4" /><item color="0xC9DEA4" /></palette></palettes><chart_settings><title text_align="Center" position="Top" ><text>Asia</text><font family="Tahoma" size="14" color="0x000000" /></title><data_plot_background><fill type="Solid" color="0xffffff" opa'
||'city="0" /><border enabled="false"/><corners type="Square"/></data_plot_background><controls><navigation_panel enabled="False"/><zoom_panel enabled="False"/></controls></chart_settings><data_plot_settings enable_3d_mode="false"><map_series source="wo'
||'rld/europe.amap" id_column="REGION_NAME" labels_display_mode="RegionBounds"><projection type="Equirectangular"  /><undefined_map_region palette="undefPalette"><interactivity hoverable="True" use_hand_cursor="False" allow_select="False"/></undefined_m'
||'ap_region><defined_map_region ><tooltip_settings enabled="true"><format><![CDATA[{%Name}{enabled:False} - {%value1}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format><font family="Tahoma" size="10" color="0x000000" /><position anchor'
||'="Float" valign="Top" padding="10" /></tooltip_settings><label_settings enabled="true" mode="Outside" multi_line_align="Center">            <format><![CDATA[{%Name}{enabled:False} -  {%value1}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]'
||'></format><background enabled="false"/><font family="Tahoma" size="10" color="0x000000" /></label_settings></defined_map_region><grid enabled="false"><parallels enabled="false"/><meridians enabled="false"/><background><fill type="Solid" color="0xFFFF'
||'FF" /><border enabled="false"/><corners type="Square"/></background></grid></map_series></data_plot_settings>#DATA#</chart></charts></anychart>'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32288763744211257)
,p_chart_id=>wwv_flow_api.id(32288439915211254)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (( :P1_DIR = ''U'' and value1 < limit1 ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 > limit3 )',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32288851555211258)
,p_chart_id=>wwv_flow_api.id(32288439915211254)
,p_series_seq=>20
,p_series_name=>'Series 2'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit1  and  value1 <  limit2  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit2  and  value1 <  limit3  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32288498576211255)
,p_chart_id=>wwv_flow_api.id(32288439915211254)
,p_series_seq=>30
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit2  and  value1 <  limit3  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit1  and  value1 <  limit2  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
end;
/
begin
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32288606378211256)
,p_chart_id=>wwv_flow_api.id(32288439915211254)
,p_series_seq=>40
,p_series_name=>'Series 4'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (',
'         ( :P1_DIR = ''U'' and value1 >= limit3  ) ',
'                 or ',
'         ( :P1_DIR = ''D'' and value1 < limit1   )',
'       )',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32288954113211259)
,p_plug_name=>'Africa Map'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 4',
') where n001 = :P1_COUNTRY_ID',
'    and n001 < 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32289063691211260)
,p_default_chart_type=>'Map'
,p_chart_title=>'Europe'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/africa.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32332346425174013)
,p_chart_id=>wwv_flow_api.id(32289063691211260)
,p_series_seq=>30
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (( :P1_DIR = ''U'' and value1 < limit1 ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 > limit3 )',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32332411902174014)
,p_chart_id=>wwv_flow_api.id(32289063691211260)
,p_series_seq=>40
,p_series_name=>'Series 2'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit1  and  value1 <  limit2  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit2  and  value1 <  limit3  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32289168763211261)
,p_chart_id=>wwv_flow_api.id(32289063691211260)
,p_series_seq=>50
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit2  and  value1 <  limit3  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit1  and  value1 <  limit2  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32332216200174012)
,p_chart_id=>wwv_flow_api.id(32289063691211260)
,p_series_seq=>60
,p_series_name=>'Series 4'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (',
'         ( :P1_DIR = ''U'' and value1 >= limit3  ) ',
'                 or ',
'         ( :P1_DIR = ''D'' and value1 < limit1   )',
'       )',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32311163512826207)
,p_plug_name=>'World Map'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 ',
'from   dual',
'where  :P1_COUNTRY_ID not in (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 3',
'union',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 4',
'union',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 5',
'union',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 6',
')   and :P1_COUNTRY_ID < 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32311446784826222)
,p_default_chart_type=>'Map'
,p_chart_title=>'World Map'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_15824534690600670'
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:N'
,p_map_source=>'world/world.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32312591783826225)
,p_chart_id=>wwv_flow_api.id(32311446784826222)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (( :P1_DIR = ''U'' and value1 < limit1 ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 > limit3 )',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32313070984826226)
,p_chart_id=>wwv_flow_api.id(32311446784826222)
,p_series_seq=>20
,p_series_name=>'Series 2'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit1  and  value1 <  limit2  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit2  and  value1 <  limit3  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32311881707826224)
,p_chart_id=>wwv_flow_api.id(32311446784826222)
,p_series_seq=>30
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit2  and  value1 <  limit3  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit1  and  value1 <  limit2  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
end;
/
begin
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32312282629826224)
,p_chart_id=>wwv_flow_api.id(32311446784826222)
,p_series_seq=>40
,p_series_name=>'Series 4'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (',
'         ( :P1_DIR = ''U'' and value1 >= limit3  ) ',
'                 or ',
'         ( :P1_DIR = ''D'' and value1 < limit1   )',
'       )',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32332502095174015)
,p_plug_name=>'North America'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 5',
') where n001 = :P1_COUNTRY_ID',
'    and n001 < 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32332669197174016)
,p_default_chart_type=>'Map'
,p_chart_title=>'North America'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/north_america.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32332914124174019)
,p_chart_id=>wwv_flow_api.id(32332669197174016)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (( :P1_DIR = ''U'' and value1 < limit1 ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 > limit3 )',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32333026004174020)
,p_chart_id=>wwv_flow_api.id(32332669197174016)
,p_series_seq=>20
,p_series_name=>'Series 2'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit1  and  value1 <  limit2  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit2  and  value1 <  limit3  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32332719937174017)
,p_chart_id=>wwv_flow_api.id(32332669197174016)
,p_series_seq=>30
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit2  and  value1 <  limit3  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit1  and  value1 <  limit2  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32332801179174018)
,p_chart_id=>wwv_flow_api.id(32332669197174016)
,p_series_seq=>40
,p_series_name=>'Series 4'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (',
'         ( :P1_DIR = ''U'' and value1 >= limit3  ) ',
'                 or ',
'         ( :P1_DIR = ''D'' and value1 < limit1   )',
'       )',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32333108538174021)
,p_plug_name=>'South America'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_column=>7
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 6',
') where n001 = :P1_COUNTRY_ID',
'    and n001 < 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32333247351174022)
,p_default_chart_type=>'Map'
,p_chart_title=>'South America'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/south_america.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32333558234174025)
,p_chart_id=>wwv_flow_api.id(32333247351174022)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (( :P1_DIR = ''U'' and value1 < limit1 ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 > limit3 )',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32333588180174026)
,p_chart_id=>wwv_flow_api.id(32333247351174022)
,p_series_seq=>20
,p_series_name=>'Series 2'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit1  and  value1 <  limit2  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit2  and  value1 <  limit3  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32333293223174023)
,p_chart_id=>wwv_flow_api.id(32333247351174022)
,p_series_seq=>30
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  ( ( :P1_DIR = ''U'' and value1 >= limit2  and  value1 <  limit3  ) ',
'                 or ',
'       ( :P1_DIR = ''D'' and value1 >= limit1  and  value1 <  limit2  ) ',
')'))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32333433375174024)
,p_chart_id=>wwv_flow_api.id(32333247351174022)
,p_series_seq=>40
,p_series_name=>'Series 4'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''agriculture'' then round(c010*c011/100,1)',
'               when ''health'' then round(c026,1)',
'               when ''population'' then round(c034,1)',
'               when ''energy'' then round(c024)',
'               when ''mobility'' then round(to_number(c033))',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id >= 100 ',
'  and  (',
'         ( :P1_DIR = ''U'' and value1 >= limit3  ) ',
'                 or ',
'         ( :P1_DIR = ''D'' and value1 < limit1   )',
'       )',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
end;
/
begin
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32393493598956519)
,p_plug_name=>'Right Column'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>9
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32286515703211235)
,p_plug_name=>'Europe'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 3',
') where n001 = :P1_COUNTRY_ID',
'    and n001 >= 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32286670099211236)
,p_default_chart_type=>'Map'
,p_chart_title=>'Europe'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>300
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/europe.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32286742244211237)
,p_chart_id=>wwv_flow_api.id(32286670099211236)
,p_series_seq=>10
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id = :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32834513650246312)
,p_chart_id=>wwv_flow_api.id(32286670099211236)
,p_series_seq=>20
,p_series_name=>'Other countries'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id != :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32287184067211241)
,p_plug_name=>'Africa'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 4',
') where n001 = :P1_COUNTRY_ID',
'    and n001 >= 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32287275773211242)
,p_default_chart_type=>'Map'
,p_chart_title=>'Africa'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>400
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/africa.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32287308081211243)
,p_chart_id=>wwv_flow_api.id(32287275773211242)
,p_series_seq=>10
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id = :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32834914038246316)
,p_chart_id=>wwv_flow_api.id(32287275773211242)
,p_series_seq=>20
,p_series_name=>'Other countries'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id != :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32287434248211244)
,p_plug_name=>'North America'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 5',
') where n001 = :P1_COUNTRY_ID',
'    and n001 >= 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32287576495211245)
,p_default_chart_type=>'Map'
,p_chart_title=>'North America'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>300
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/north_america.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32287639760211246)
,p_chart_id=>wwv_flow_api.id(32287576495211245)
,p_series_seq=>10
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id = :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32834792690246315)
,p_chart_id=>wwv_flow_api.id(32287576495211245)
,p_series_seq=>20
,p_series_name=>'Other countries'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id != :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32287744050211247)
,p_plug_name=>'South America'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 6',
') where n001 = :P1_COUNTRY_ID',
'    and n001 >= 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32287803283211248)
,p_default_chart_type=>'Map'
,p_chart_title=>'North America'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>300
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/south_america.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32287973121211249)
,p_chart_id=>wwv_flow_api.id(32287803283211248)
,p_series_seq=>10
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id = :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32834717553246314)
,p_chart_id=>wwv_flow_api.id(32287803283211248)
,p_series_seq=>20
,p_series_name=>'Other countries'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id != :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
end;
/
begin
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32288008519211250)
,p_plug_name=>'Rest of the World'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_MAP'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1 from (',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 2',
'union',
'select n001',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'connect by n002 = prior n001',
'start with n001 = 7',
') where n001 = :P1_COUNTRY_ID',
'    and n001 >= 100'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32288157104211251)
,p_default_chart_type=>'Map'
,p_chart_title=>'World'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_height=>250
,p_chart_animation=>'N'
,p_display_attr=>':H:N::N::N::::Default:N:N:N:N:N:Default:N:N:S:'
,p_dial_tick_attr=>':::::::::::N'
,p_gantt_attr=>'Y:None:None:Full:None:None:Full:None:None:Full:30:15:5:Y::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Equirectangular:RegionBounds:REGION_NAME:N:N:::::Y:'
,p_map_source=>'world/world_wo_gr.amap'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_bgtype=>'Solid'
,p_grid_bgcolor1=>'#FFFFFF'
,p_color_scheme=>'0'
,p_custom_colors=>'rgb(237,102,71),rgb(250,213,92),rgb(38,125,179),rgb(104,193,130)'
,p_map_undef_color_scheme=>'1'
,p_x_axis_label_font=>'::'
,p_y_axis_label_font=>'::'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'::'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'::'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32288193169211252)
,p_chart_id=>wwv_flow_api.id(32288157104211251)
,p_series_seq=>10
,p_series_name=>'Series 3'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id = :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32835031524246317)
,p_chart_id=>wwv_flow_api.id(32288157104211251)
,p_series_seq=>20
,p_series_name=>'Other countries'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'with val as ',
'( select c004   as  country_name',
'       , n001   as  country_id',
'       , ''f?p=&APP_ID.:1:&APP_SESSION.::::P1_COUNTRY_ID:''||n001   as  link',
'       , case :P1_VALUE_ITEM',
'               when ''c010'' then to_number(c010)',
'               when ''c011'' then to_number(c011)',
'               when ''c012'' then to_number(c012)',
'               when ''c013'' then to_number(c013)',
'               when ''c014'' then to_number(c014)',
'               when ''c015'' then to_number(c015)',
'               when ''c016'' then to_number(c016)',
'               when ''c017'' then to_number(c017)',
'               when ''c018'' then to_number(c018)',
'               when ''c019'' then to_number(c019)',
'               when ''c020'' then to_number(c020)',
'               when ''c021'' then to_number(c021)',
'               when ''c022'' then to_number(c022)',
'               when ''c023'' then to_number(c023)',
'               when ''c024'' then to_number(c024)',
'               when ''c025'' then to_number(c025)',
'               when ''c026'' then to_number(c026)',
'               when ''c027'' then to_number(c027)',
'               when ''c028'' then to_number(c028)',
'               when ''c029'' then to_number(c029)',
'               when ''c030'' then to_number(c030)',
'               when ''c031'' then to_number(c031)',
'               when ''c032'' then to_number(c032)',
'               when ''c033'' then to_number(c033)',
'               when ''c034'' then to_number(c034)',
'               when ''popdens'' then round(to_number(c015)*100/to_number(c014))',
'               else to_number(c015)',
'          end   as   value1',
'  from    apex_collections',
'  where   collection_name = :APP_COLL_NAME',
'), lim as ',
'( select distinct max(limit1) as limit1',
'       , max(limit2) as limit2',
'       , max(limit3) as limit3',
'  from (',
'  select nth_value(value1, round(no_of_c *0.25)) over (order by value1)  as  limit1',
'       , nth_value(value1, round(no_of_c *0.5 )) over (order by value1)  as  limit2',
'       , nth_value(value1, round(no_of_c *0.75)) over (order by value1)  as  limit3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null',
'            and  country_id >= 100',
'        )',
' )',
')',
'select val.link',
'     , val.country_name',
'     , val.value1',
'from   val, lim',
'where  country_id != :P1_COUNTRY_ID',
''))
,p_series_type=>'Map'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P12_VALUE_ITEM,P12_DIR'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>300
,p_show_action_link=>'N'
,p_display_when_cond_type=>'PLSQL_EXPRESSION'
,p_display_when_condition=>'1=1'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32334795797174038)
,p_plug_name=>'Health Chart'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_COUNTRY_ID >= 100',
'and :P1_SUBJECT = ''health'''))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32334973202174039)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'Health Care'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_height=>400
,p_display_attr=>':H:N::X::Bottom::V::None:N:N::N:N:Default:N::S:'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>':::::::::::::::::::'
,p_pie_attr=>':::'
,p_map_attr=>':::N:N:Series:::::'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_gradient_rotation=>0
,p_color_scheme=>'6'
,p_x_axis_title=>'Year'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_decimal_place=>1
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
,p_legend_title=>'Legend'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:10:#000000'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32335027240174040)
,p_chart_id=>wwv_flow_api.id(32334973202174039)
,p_series_seq=>10
,p_series_name=>'Available doctors / 10000 inh'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , doctor_frequency_per_10t_inh  as "Doctors per 10K inh"',
'from   gdb_world_health',
'where  country = :P1_COUNTRY_NAME'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32335182368174041)
,p_chart_id=>wwv_flow_api.id(32334973202174039)
,p_series_seq=>20
,p_series_name=>'Hospital beds / 10000 inh'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , hea.HOSPITAL_BEDS_PER_10T_INH  as "Hospital beds per 10K inh"',
'from   gdb_world_health  hea',
'where  country = :P1_COUNTRY_NAME',
''))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32335464608174044)
,p_plug_name=>'Agriculture Chart'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_COUNTRY_ID >= 100',
'and :P1_SUBJECT = ''agriculture'''))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32335569343174045)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'Land use'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_height=>400
,p_display_attr=>':H:N::X::Bottom::V::None:N:::N:N:Default:N::S:'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>':::::::::::::::::::'
,p_pie_attr=>':::'
,p_map_attr=>'::::::::::'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_title=>'Year'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_decimal_place=>1
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
,p_legend_title=>'Legend'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:10:#000000'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32335849642174048)
,p_chart_id=>wwv_flow_api.id(32335569343174045)
,p_series_seq=>10
,p_series_name=>'% Bio Crop'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , to_char(area_used_for_bio_cropland)   as  "% Bio Crop"',
'from   gdb_world_agriculture_area',
'where  country = :P1_COUNTRY_NAME',
''))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32335650323174046)
,p_chart_id=>wwv_flow_api.id(32335569343174045)
,p_series_seq=>30
,p_series_name=>'% Agriculture'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , to_char(area_used_for_agriculture)   as  "% Agriculture"',
'from   gdb_world_agriculture_area',
'where  country = :P1_COUNTRY_NAME'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32335979414174049)
,p_chart_id=>wwv_flow_api.id(32335569343174045)
,p_series_seq=>40
,p_series_name=>'% Forest'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , to_char(area_used_for_forest)   as  "% Forest"',
'from   gdb_world_agriculture_area',
'where  country = :P1_COUNTRY_NAME',
''))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32335768744174047)
,p_chart_id=>wwv_flow_api.id(32335569343174045)
,p_series_seq=>50
,p_series_name=>'% Farmland'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , to_char(area_used_for_farmland)   as  "% Farmland"',
'from   gdb_world_agriculture_area',
'where  country = :P1_COUNTRY_NAME',
''))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32336066019174050)
,p_plug_name=>'Enegry / Mobility Chart'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_COUNTRY_ID >= 100',
'and :P1_SUBJECT in (''energy'',''mobility'')'))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32336131211174051)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'Mobility and energy usage'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_height=>400
,p_display_attr=>':H:N::X::Bottom::V::None:N:N::N:N:Default:N::S:'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>':::::::::::::::::::'
,p_pie_attr=>':::'
,p_map_attr=>':::N:N:Series:::::'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_gradient_rotation=>0
,p_color_scheme=>'6'
,p_x_axis_title=>'Year'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_decimal_place=>1
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
,p_legend_title=>'Legend'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:10:#000000'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32336225470174052)
,p_chart_id=>wwv_flow_api.id(32336131211174051)
,p_series_seq=>10
,p_series_name=>'Enrgy Usage'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'       , to_char(oil_equivalent_per_inh_in_kg)   as  "Energy Usage / inh"',
'from   gdb_world_energy_consumption',
'where  country = :P1_COUNTRY_NAME'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32336353736174053)
,p_chart_id=>wwv_flow_api.id(32336131211174051)
,p_series_seq=>20
,p_series_name=>'kg CO2 emission'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'       , to_char(carbon_emisson_per_inh_in_t)*1000   as  "CO2 emission / inh"',
'from   gdb_world_energy_consumption',
'where  country = :P1_COUNTRY_NAME',
''))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32336404303174054)
,p_chart_id=>wwv_flow_api.id(32336131211174051)
,p_series_seq=>30
,p_series_name=>'Cars / 1000 inh'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'       , to_char(cars_per_1000_inh)   as  "Cars / 1000 inh" ',
'from   gdb_world_traffic',
'where  country = :P1_COUNTRY_NAME'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32336501892174055)
,p_chart_id=>wwv_flow_api.id(32336131211174051)
,p_series_seq=>40
,p_series_name=>'km road network'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'       , to_char(road_network_length_in_km)/1000   as  "Road * 1000 km"',
'from   gdb_world_traffic',
'where  country = :P1_COUNTRY_NAME',
''))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32411381722941893)
,p_plug_name=>'Population Chart'
,p_parent_plug_id=>wwv_flow_api.id(32393493598956519)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(29938449024974783)
,p_plug_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'PLSQL_EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
':P1_COUNTRY_ID >= 100',
'and :P1_SUBJECT = ''population'''))
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(32411591609941897)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'Population Development'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_15975782602895244'
,p_chart_height=>400
,p_display_attr=>':H:N::X::Bottom::V::None:N:N::N:N:Default:N::S:'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>':::::::::::::::::::'
,p_pie_attr=>':::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME:Y:Y:Series::::Y:N'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_grid_gradient_rotation=>0
,p_color_scheme=>'6'
,p_x_axis_title=>'Year'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_decimal_place=>1
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
,p_legend_title=>'Legend'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:10:#000000'
,p_y_axis_title_font=>'::'
,p_gauge_labels_font=>'::'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32412051236941898)
,p_chart_id=>wwv_flow_api.id(32411591609941897)
,p_series_seq=>10
,p_series_name=>'Population Development'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , population_development  as "Population Development"',
'from   gdb_world_population',
'where  country = :P1_COUNTRY_NAME'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(32412485912941898)
,p_chart_id=>wwv_flow_api.id(32411591609941897)
,p_series_seq=>20
,p_series_name=>'Birth Rate'
,p_series_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select null',
'     , to_char(year)  as year',
'     , birthrate   as "Birthrate"',
'from   gdb_world_population',
'where  country = :P1_COUNTRY_NAME'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P1_COUNTRY_NAME'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15503656310850227)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(32149002886480862)
,p_button_name=>'WIKIPEDIA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29959400663974947)
,p_button_image_alt=>'Wikipedia'
,p_button_position=>'BODY'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(32337066579174060)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(32149002886480862)
,p_button_name=>'WORLD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(29959400663974947)
,p_button_image_alt=>'World'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:P1_COUNTRY_ID:1'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(32104864258017414)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.:DRILL:&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'DRILL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32150205548480909)
,p_name=>'P1_DESC1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_item_default=>'Population'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32150647977480909)
,p_name=>'P1_DESC2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_item_default=>'Doctors/1000 inh'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32151865204480924)
,p_name=>'P1_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32216114709513861)
,p_name=>'P1_COUNTRY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_item_default=>'1'
,p_prompt=>'Country'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select c001    as  d',
'     , n001    as  r',
'from   apex_collections',
'where  collection_name = ''&APP_COLL_NAME.''',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(29958947094974929)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32286004839211230)
,p_name=>'P1_DIR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32310096678792456)
,p_name=>'P1_VALUE_ITEM'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_item_default=>'c015'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32333772777174027)
,p_name=>'P1_SUBJECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_item_default=>'population'
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Agriculture;agriculture,Health;health,Energy;energy,Population;population,Mobility;mobility'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(29958947094974929)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(32335278458174042)
,p_name=>'P1_COUNTRY_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32149002886480862)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(32286154320211231)
,p_computation_sequence=>10
,p_computation_item=>'P1_DIR'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_return   varchar2(10) := ''U'';',
'  l_list     apex_application_global.vc_arr2;',
'begin',
'  l_list := apex_util.string_to_table(:P1_TYPE,''|'');',
'  if l_list(7) < 0 then',
'    l_return := ''D'';',
'  end if;',
'  return(l_return);',
'exception',
'  when others then return(l_return);',
'end;',
''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(32286427888211234)
,p_computation_sequence=>20
,p_computation_item=>'P1_VALUE_ITEM'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'  return(:P1_SUBJECT);',
'end;',
''))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(32335306838174043)
,p_computation_sequence=>30
,p_computation_item=>'P1_COUNTRY_NAME'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select c002',
'from   apex_collections',
'where  collection_name = :APP_COLL_NAME',
'  and  n001 = :P1_COUNTRY_ID'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32104940776017415)
,p_name=>'On country change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_COUNTRY_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32105067013017416)
,p_event_id=>wwv_flow_api.id(32104940776017415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'id = apex.item(''P1_COUNTRY_ID'').getValue();',
'alert(''New country ''+id);',
'',
'apex.server.process (''GET_DATA''',
'                    ,{pageItems: "#P1_COUNTRY_ID,#P1_TYPE"}',
'                     ,{success:function(response)',
'{   var data   = response.result;',
' console.log(''data:'',data);',
'    traverse(null, data, process);',
'    console.log(''Retrieved data'')',
'    chartData = data;',
'    legend = response.legend;',
'',
'    var legendSections = [{items : [',
'        {text : legend[0].text, ',
'          color : colors[legend[0].color]},',
'        {text : legend[1].text, ',
'          color : colors[legend[1].color]},',
'        {text : legend[2].text, ',
'          color : colors[legend[2].color]},',
'        {text : legend[3].text, ',
'          color : colors[legend[3].color]}',
'     ]}];',
'     console.log(legendSections);',
'',
'     setTimeout(implement_drill,3000);',
'}',
'});'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32240013545990569)
,p_name=>'Ranking - After Refresh'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(32234844585960239)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32240396691990579)
,p_event_id=>wwv_flow_api.id(32240013545990569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''#report_ranking table.t-Report-report'').attr(''id'',''ranking_table'');',
'var table       = document.getElementById("ranking_table");',
'var sort_colnum = $(table).find(''.u-Report-sortIcon'').closest(''th'').index();',
'',
'for (var rownum = 1, row; row = table.rows[rownum]; rownum++) {',
'   //iterate through rows',
'   //rows would be accessed using the "row" variable assigned in the for loop',
'   for (var colnum = 0, col; col = row.cells[colnum]; colnum++) {',
'     //iterate through columns',
'     //columns would be accessed using the "col" variable assigned in the for loop',
'',
'     if ( colnum == 0 ) { col.innerHTML = rownum; }',
'     ',
'     // format columns',
'     if ( col.innerHTML.length > 0 && col.innerHTML != '' '' )',
'     { var header = col.headers;',
'       if ( header == ''LAND_AREA'' || header == ''POPULATION'' || header == ''ENERGY_USE_PER_INH'' || header == ''ROAD_LENGTH'') { col.innerHTML = display_number(col.innerHTML); } ',
'       ',
'       if ( header == ''AGRICULTURE'' || header == ''CROP'' || header == ''BIO_CROP'' || header == ''FOREST'' || header == ''REMAINING'' ) ',
'          { col.innerHTML = col.innerHTML+''%''; }',
'       if ( header == ''OIL_PRICE'' )',
'           { col.innerHTML = formatMoney(col.innerHTML); }',
'     }',
'       ',
'     if ( colnum == sort_colnum ) ',
'     { ',
'       if ( col.innerHTML.trim().length == 0 )',
'       { row.className = "ranking_empty"; }',
'     }',
'   }  ',
'}',
'',
'var tr_current = $(''.ranking_current'').closest(''tr'');',
'var country_colnum = $(tr_current).find(''td:first'').html();',
'',
'start = country_colnum - 2;',
'end   = start + 5;',
'console.log(''Country rank'',country_colnum,start,end);',
'',
'trs = $(table).find(''tr'').not(''.ranking_empty'');',
'rows_bt = $(trs).slice(4,5);',
'rows_bt = rows_bt.add($(trs).slice(-4,-3));',
'$(rows_bt).addClass(''ranking_between'');',
'$(rows_bt).first().addClass(''first'');',
'$(rows_bt).last().addClass(''last'');',
'console.log(rows_bt);',
'',
'var rows = $(trs).slice(0,4);',
'var rows = rows.add($(trs).slice(start,end));',
'rows = rows.add($(trs).slice(-3));',
'$(rows).removeAttr(''class'').addClass(''ranking_show'');',
'',
'console.log(''rows'',rows);',
'',
'$(tr_current).removeAttr(''class'').addClass(''ranking_highlight'');',
'',
'sorting_default_desc(''#ranking_table'');',
''))
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(32333865273174028)
,p_name=>'Fill data on subject'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_SUBJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32333986484174029)
,p_event_id=>wwv_flow_api.id(32333865273174028)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_list      apex_application_global.vc_arr2;',
'begin',
'  :p1_type := case :p1_subject',
'              when ''agriculture'' then  ''Population|% farmland|c015|c011|c015|round(c010*c011/100,1)|1|1''',
'              when ''health''     then  ''Population|Doctors/1000 inh.|c015|c026|c015|round(c026,1)|1|1''',
'              when ''energy''     then  ''Population|Energy use/inh.|c015|c024|c015|round(c024)|-1|1''',
'              when ''population'' then  ''Population|% growth in 10 years|c015|c034|c015|round(c034,1)|-1|1''',
'              when ''mobility''  then  ''Population|Cars/1000 inh|c015|c033|c015|round(c033)|1|1''',
'              else ''Area|Population density|c015|c024|c015|round(c015/c014*100)|-1|1''',
'              end;',
'  l_list := apex_util.string_to_table(:P1_TYPE,''|'');',
'  :P1_DESC1 := l_list(1);',
'  :P1_DESC2 := l_list(2);',
'end;',
''))
,p_attribute_02=>'P1_SUBJECT'
,p_attribute_03=>'P1_TYPE'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(32159476561480981)
,p_event_id=>wwv_flow_api.id(32333865273174028)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15503709089850228)
,p_name=>'Wikipedia - On Click'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15503656310850227)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15503854217850229)
,p_event_id=>wwv_flow_api.id(15503709089850228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var country_name = $(''#P1_COUNTRY_ID option:selected'').html();',
'var url = "https://en.wikipedia.org/wiki/"+country_name;',
'window.open(url,"","_blank");'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32156962906480945)
,p_process_sequence=>20
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Copy collection to table'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'  execute immediate ''create table apex_collection_table as select * from apex_collections''; ',
'  htp.p('' Table copied'');',
'exception',
'  when others then apex_debug.message(''Copy table:''||sqlerrm);',
'end; ',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select 1',
'from   user_tables',
'where  table_name = ''APEX_COLLECTIONS_TABLE''',
''))
,p_process_when_type=>'NOT_EXISTS'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32157743696480951)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fill collection'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_coll_name  varchar2(100)   := :APP_COLL_NAME;',
'  procedure a ( p_id in number, p_par_id in number, p_name in varchar2, p_name_german in varchar2 default null, p_code in varchar2 default null) is',
'  begin',
'    apex_collection.add_member',
'        ( l_coll_name ',
'        , p_n001      => p_id',
'        , p_n002      => p_par_id',
'        , p_c001      => p_name ',
'        , p_c002      => p_name_german',
'        , p_c003      => p_code',
'        );',
'  end;',
'  ',
'  procedure update_value( p_seq_id in number, p_attr_id in number, p_value in varchar2 ) is',
'  begin',
'    apex_collection.update_member_attribute',
'       ( p_collection_name    => :APP_COLL_NAME',
'       , p_seq                => p_seq_id',
'       , p_attr_number        => p_attr_id',
'       , p_attr_value         => p_value',
'       );',
'  end;',
'begin',
' if not apex_collection.collection_exists(l_coll_name) then',
'    apex_collection.create_or_truncate_collection(l_coll_name);',
'a(1,0,''World'',''World'');',
'a(2,1,''Asia'',''Asia'');',
'a(3,1,''Europe'',''Europe'');',
'a(4,1,''Africa'',''Africa'');',
'a(5,1,''North America'',''North America'');',
'a(6,1,''South America'',''South America'');',
'a(7,1,''Australia'',''Australia'');',
'a(10,7,''Australia'',''Australia'');',
'a(11,7,''Micronesia'',''Micronesia'');',
'a(12,3,''Western Europe'',''Western Europe'');',
'a(13,3,''Eastern Europe'',''Eastern Europe'');',
'a(14,3,''Northern Europe'',''Northern Europe'');',
'a(15,3,''Southern Europe'',''Southern Europe'');',
'a(16,2,''Northern Asia'',''Northern Asia'');',
'a(17,2,''South East Asia'',''South East Asia'');',
'a(18,2,''South Asia'',''South Asia'');',
'a(19,2,''Middle East'',''Middle East'');',
'a(20,2,''Far East'',''Far East'');',
'a(21,5,''Middle America'',''Middle America'');',
'a(22,5,''Caribean'',''Caribean'');',
'a(23,5,''North America'',''North America'');',
'a(24,6,''South America'',''South America'');',
'a(25,4,''North Africa'',''North Africa'');',
'a(26,4,''Southern Africa'',''Southern Africa'');',
'a(27,4,''East Africa'',''East Africa'');',
'a(28,4,''West Africa'',''West Africa'');',
'a(29,4,''Central Africa'',''Central Africa'');',
'a(100,18,''Afghanistan'',''Afghanistan'',''AF'');',
'a(101,15,''Albania'',''Albanien'',''AL'');',
'a(102,25,''Algeria'',''Algerien'',''DZ'');',
'a(103,15,''Andorra'',''Andorra'',''AD'');',
'a(104,26,''Angola'',''Angola'',''AO'');',
'a(105,22,''Antigua and Barbuda'',''Antigua und Barbuda'',''AG'');',
'a(106,24,''Argentina'',''Argentinien'',''AR'');',
'a(107,16,''Armenia'',''Armenien'',''AM'');',
'a(108,16,''Azerbaijan'',''Aserbaidschan'',''AZ'');',
'a(109,10,''Australia'',''Australien'',''AU'');',
'a(110,22,''Bahamas, The'',''Bahamas'',''BS'');',
'a(111,19,''Bahrain'',''Bahrain'',''BH'');',
'a(112,18,''Bangladesh'',''Bangladesch'',''BD'');',
'a(113,22,''Barbados'',''Barbados'',''BB'');',
'a(114,13,''Belarus'',''Belgien'',''BY'');',
'a(115,21,''Belize'',''Belize'',''BZ'');',
'a(116,28,''Benin'',''Benin'',''BJ'');',
'a(117,18,''Bhutan'',''Bhutan'',''BT'');',
'a(118,24,''Bolivia'',''Bolivien, Plurinationaler Staat'',''BO'');',
'a(119,13,''Bosnia and Herzegovina'',''Bosnien und Herzegowina'',''BA'');',
'a(120,26,''Botswana'',''Botsuana'',''BW'');',
'a(121,24,''Brazil'',''Brasilien'',''BR'');',
'a(122,18,''Brunei'',''Brunei Darussalam'',''BN'');',
'a(123,13,''Bulgaria'',''Bulgarien'',''BG'');',
'a(124,28,''Burkina Faso'',''Burkina Faso'',''BF'');',
'a(125,29,''Burundi'',''Burundi'',''BI'');',
'a(126,28,''Cape Verde'',''Cabo Verde'',''CV'');',
'a(127,24,''Chile'',''Chile'',''CL'');',
'a(128,20,''China'',''China'',''CN'');',
'a(129,21,''Costa Rica'',''Costa Rica'',''CR'');',
'a(130,28,''Cote d''''Ivoire (Ivory Coast)'',''Cote d''''Ivoire'',''CI'');',
'a(131,12,''Germany'',''Deutschland'',''DE'');',
'a(132,22,''Dominica'',''Dominica'',''DM'');',
'a(133,22,''Dominican Republic'',''Dominikanische Republik'',''DO'');',
'a(134,27,''Djibouti'',''Dschibuti'',''DJ'');',
'a(135,14,''Denmark'',''Dänemark'',''DK'');',
'a(136,24,''Ecuador'',''Ecuador'',''EC'');',
'a(137,21,''El Salvador'',''El Salvador'',''SV'');',
'a(138,27,''Eritrea'',''Eritrea'',''ER'');',
'a(139,14,''Estonia'',''Estland'',''EE'');',
'a(140,11,''Fiji'',''Fidschi'',''FJ'');',
'a(141,14,''Finland'',''Finnland'',''FI'');',
'a(142,12,''France'',''Frankreich'',''FR'');',
'a(143,28,''Gabon'',''Gabun'',''GA'');',
'a(144,28,''Gambia, The'',''Gambia'',''GM'');',
'a(145,13,''Georgia'',''Georgien'',''GE'');',
'a(146,28,''Ghana'',''Ghana'',''GH'');',
'a(147,23,''Greenland'',''Grenada'',''GL'');',
'a(148,15,''Greece'',''Griechenland'',''GR'');',
'a(149,21,''Guatemala'',''Guatemala'',''GT'');',
'a(150,24,''Guinea'',''Guinea'',''GN'');',
'a(151,28,''Guinea'',''Guinea-Bissau'',''GN'');',
'a(152,24,''Guyana'',''Guyana'',''GY'');',
'a(153,22,''Haiti'',''Haiti'',''HT'');',
'a(154,20,''Hong Kong'',''Honduras'',''HK'');',
'a(155,18,''India'',''Indien'',''IN'');',
'a(156,18,''Indonesia'',''Indonesien'',''ID'');',
'a(157,19,''Iran'',''Irak'',''IR'');',
'a(158,19,''Iran'',''Iran, Islamische Republik'',''IR'');',
'a(159,12,''Ireland'',''Irland'',''IE'');',
'a(160,12,''Isle of Man'',''Island'',''IM'');',
'a(161,19,''Israel'',''Israel'',''IL'');',
'a(162,15,''Italy'',''Italien'',''IT'');',
'a(163,22,''Jamaica'',''Jamaika'',''JM'');',
'a(164,20,''Japan'',''Japan'',''JP'');',
'a(165,19,''Yemen'',''Jemen'',''YE'');',
'a(166,19,''Jordan'',''Jordanien'',''JO'');',
'a(167,17,''Cambodia'',''Kambodscha'',''KH'');',
'a(168,28,''Cameroon'',''Kamerun'',''CM'');',
'a(169,23,''Canada'',''Kanada'',''CA'');',
'a(170,16,''Kazakhstan'',''Kasachstan'',''KZ'');',
'a(171,19,''Qatar'',''Katar'',''QA'');',
'a(172,27,''Kenya'',''Kenia'',''KE'');',
'a(173,16,''Kirgisistan'',''Kirgisistan'',''KG'');',
'a(174,11,''Kiribati'',''Kiribati'',''KI'');',
'a(175,24,''Colombia'',''Kolumbien'',''CO'');',
'a(176,26,''Comoros'',''Komoren'',''KM'');',
'a(177,29,''Congo, (Congo  Brazzaville)'',''Kongo, Demokratische Republik'',''CG'');',
'a(178,29,''Congo, (Congo  Kinshasa)'',''Kongo, Republik'',''CD'');',
'a(179,20,''Korea, North'',''Korea, Demokratische Volksrepublik'',''KP'');',
'a(180,20,''Korea, North'',''Korea, Republik'',''KP'');',
'a(181,13,''Croatia'',''Kroatien'',''HR'');',
'a(182,22,''Cuba'',''Kuba'',''CU'');',
'a(183,19,''Kuwait'',''Kuwait'',''KW'');',
'a(184,17,''Laos'',''Laos, Demokratische Volksrepublik'',''LA'');',
'a(185,26,''Lesotho'',''Lesotho'',''LS'');',
'a(186,14,''Latvia'',''Lettland'',''LV'');',
'a(187,19,''Lebanon'',''Libanon'',''LB'');',
'a(188,28,''Liberia'',''Liberia'',''LR'');',
'a(189,25,''Libya'',''Libyen'',''LY'');',
'a(190,12,''Liechtenstein'',''Liechtenstein'',''LI'');',
'a(191,14,''Lithuania'',''Litauen'',''LT'');',
'a(192,12,''Luxembourg'',''Luxemburg'',''LU'');',
'a(193,27,''Madagascar'',''Madagaskar'',''MG'');',
'a(194,29,''Malawi'',''Malawi'',''MW'');',
'a(195,17,''Malaysia'',''Malaysia'',''MY'');',
'a(196,18,''Maldives'',''Malediven'',''MV'');',
'a(197,28,''Mali'',''Mali'',''ML'');',
'a(198,15,''Malta'',''Malta'',''MT'');',
'a(199,25,''Morocco'',''Marokko'',''MA'');',
'a(200,11,''Marshall Islands'',''Marshallinseln'',''MH'');',
'a(201,25,''Mauritania'',''Mauretanien'',''MR'');',
'a(202,27,''Mauritius'',''Mauritius'',''MU'');',
'a(203,15,''Macedonia'',''Mazedonien, ehemalige jugoslawische Republik'',''MK'');',
'a(204,21,''Mexico'',''Mexiko'',''MX'');',
'a(205,11,''Micronesia'',''Mikronesien, Föderierte Staaten von'',''FM'');',
'a(206,13,''Moldova'',''Moldau, Republik'',''MD'');',
'a(207,12,''Monaco'',''Monaco'',''MC'');',
'a(208,16,''Mongolia'',''Mongolei'',''MN'');',
'a(209,15,''Montenegro'',''Montenegro (ab 03.06.2006)'',''ME'');',
'a(210,15,''Montenegro'',''Montenegro (ab 03062006)'',''ME'');',
'a(211,26,''Mozambique'',''Mosambik'',''MZ'');',
'a(212,17,''Myanmar (Burma)'',''Myanmar'',''MM'');',
'a(213,26,''Namibia'',''Namibia'',''NA'');',
'a(214,11,''Nauru'',''Nauru'',''NR'');',
'a(215,18,''Nepal'',''Nepal'',''NP'');',
'a(216,10,''New Zealand'',''Neuseeland'',''NZ'');',
'a(217,21,''Nicaragua'',''Nicaragua'',''NI'');',
'a(218,12,''Netherlands'',''Niederlande'',''NL'');',
'a(219,28,''Niger'',''Niger'',''NE'');',
'a(220,28,''Nigeria'',''Nigeria'',''NG'');',
'a(221,14,''Norway'',''Norwegen'',''NO'');',
'a(222,19,''Oman'',''Oman'',''OM'');',
'a(223,18,''Pakistan'',''Pakistan'',''PK'');',
'a(224,11,''Palau'',''Palau'',''PW'');',
'a(225,21,''Panama'',''Panama'',''PA'');',
'a(226,18,''Papua New Guinea'',''Papua-Neuguinea'',''PG'');',
'a(227,24,''Paraguay'',''Paraguay'',''PY'');',
'a(228,24,''Peru'',''Peru'',''PE'');',
'a(229,20,''Philippines'',''Philippinen'',''PH'');',
'a(230,13,''Poland'',''Polen'',''PL'');',
'a(231,15,''Portugal'',''Portugal'',''PT'');',
'a(232,29,''Rwanda'',''Ruanda'',''RW'');',
'a(233,13,''Romania'',''Rumänien'',''RO'');',
'a(234,13,''Russia'',''Russische Föderation'',''RU'');',
'a(235,11,''Solomon Islands'',''Salomonen'',''SB'');',
'a(236,28,''Gambia, The'',''Sambia'',''GM'');',
'a(237,11,''Samoa'',''Samoa'',''WS'');',
'a(238,15,''San Marino'',''San Marino'',''SM'');',
'a(239,22,''Sao Tome and Principe'',''Sao Tome und Principe'',''ST'');',
'a(240,19,''Saudi Arabia'',''Saudi-Arabien'',''SA'');',
'a(241,14,''Sweden'',''Schweden'',''SE'');',
'a(242,12,''Switzerland'',''Schweiz'',''CH'');',
'a(243,28,''Senegal'',''Senegal'',''SN'');',
'a(244,13,''Serbia'',''Serbien (einschl Kosovo) (03062006-16022008)'',''RS'');',
'a(245,13,''Serbia'',''Serbien (einschl. Kosovo) (03.06.2006-16.02.2008)'',''RS'');',
'a(246,18,''Seychelles'',''Seychellen'',''SC'');',
'a(247,28,''Sierra Leone'',''Sierra Leone'',''SL'');',
'a(248,26,''Zimbabwe'',''Simbabwe'',''ZW'');',
'a(249,17,''Singapore'',''Singapur'',''SG'');',
'a(250,13,''Slovakia'',''Slowakei'',''SK'');',
'a(251,13,''Slovenia'',''Slowenien'',''SI'');',
'a(252,27,''Somalia'',''Somalia'',''SO'');',
'a(253,15,''Spain'',''Spanien'',''ES'');',
'a(254,18,''Sri Lanka'',''Sri Lanka'',''LK'');',
'a(255,22,''Saint Kitts and Nevis'',''St Kitts und Nevis'',''KN'');',
'a(256,22,''Saint Lucia'',''St Lucia'',''LC'');',
'a(257,22,''Saint Vincent and the Grenadines'',''St Vincent und die Grenadinen'',''VC'');',
'a(258,22,''Saint Kitts and Nevis'',''St. Kitts und Nevis'',''KN'');',
'a(259,22,''Saint Lucia'',''St. Lucia'',''LC'');',
'a(260,22,''Saint Vincent and the Grenadines'',''St. Vincent und die Grenadinen'',''VC'');',
'a(261,25,''Sudan'',''Sudan (einschließlich Südsudan) (bis 08.07.2011)'',''SD'');',
'a(262,25,''Sudan'',''Sudan (einschließlich Südsudan) (bis 08072011)'',''SD'');',
'a(263,24,''Suriname'',''Suriname'',''SR'');',
'a(264,26,''Swaziland'',''Swasiland'',''SZ'');',
'a(265,19,''Syria'',''Syrien'',''SY'');',
'a(266,26,''South Africa'',''Südafrika'',''ZA'');',
'a(267,25,''Sudan'',''Südsudan (ab 09.07.2011)'',''SD'');',
'a(268,25,''Sudan'',''Südsudan (ab 09072011)'',''SD'');',
'a(269,16,''Tajikistan'',''Tadschikistan'',''TJ'');',
'a(270,27,''Tanzania'',''Tansania'',''TZ'');',
'a(271,17,''Thailand'',''Thailand'',''TH'');',
'a(272,17,''Timor-Leste (East Timor)'',''Timor-Leste'',''TL'');',
'a(273,28,''Togo'',''Togo'',''TG'');',
'a(274,11,''Tonga'',''Tonga'',''TO'');',
'a(275,22,''Trinidad and Tobago'',''Trinidad und Tobago'',''TT'');',
'a(276,25,''Chad'',''Tschad'',''TD'');',
'a(277,13,''Czech Republic'',''Tschechische Republik'',''CZ'');',
'a(278,25,''Tunisia'',''Tunesien'',''TN'');',
'a(279,16,''Turkmenistan'',''Turkmenistan'',''TM'');',
'a(280,11,''Tuvalu'',''Tuvalu'',''TV'');',
'a(281,19,''Turkey'',''Türkei'',''TR'');',
'a(282,27,''Uganda'',''Uganda'',''UG'');',
'a(283,13,''Ukraine'',''Ukraine'',''UA'');',
'a(284,13,''Hungary'',''Ungarn'',''HU'');',
'a(285,24,''Uruguay'',''Uruguay'',''UY'');',
'a(286,16,''Uzbekistan'',''Usbekistan'',''UZ'');',
'a(287,11,''Vanuatu'',''Vanuatu'',''VU'');',
'a(288,15,''Vatican City'',''Vatikanstadt'',''VA'');',
'a(289,24,''Venezuela'',''Venezuela, Bolivarische Republik'',''VE'');',
'a(290,19,''United Arab Emirates'',''Vereinigte Arabische Emirate'',''AE'');',
'a(291,23,''United States'',''Vereinigte Staaten'',''US'');',
'a(292,12,''United Kingdom'',''Vereinigtes Königreich'',''GB'');',
'a(293,17,''Vietnam'',''Vietnam'',''VN'');',
'a(294,13,''Belarus'',''Weißrussland'',''BY'');',
'a(295,29,''Central African Republic'',''Zentralafrikanische Republik'',''CF'');',
'a(296,15,''Cyprus'',''Zypern'',''CY'');',
'a(297,25,''Egypt'',''Ägypten'',''EG'');',
'a(298,25,''Equatorial Guinea'',''Äquatorialguinea'',''GQ'');',
'a(299,27,''Ethiopia'',''Äthopien'',''ET'');',
'a(300,12,''Austria'',''Österreich'',''AT'');',
'a(310,27,''Somaliland'',''Somaliland'',''SO'');',
'a(311,15,''Northern Cyprus'',''Nordlich Zypern'',''CY'');',
'',
'-- start update agricultural data',
'for r in ( select col.seq_id',
'       , country',
'       , max(area_used_for_agriculture)    as area_used_for_agriculture',
'       , max(area_used_for_farmland)    as area_used_for_farmland',
'       , max(area_used_for_bio_cropland)    as area_used_for_bio_cropland',
'       , max(area_used_for_forest)    as area_used_for_forest',
'  from   gdb_world_agriculture_area dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 10, r.area_used_for_agriculture );',
'  update_value( r.seq_id, 11, r.area_used_for_farmland);',
'  update_value( r.seq_id, 12, r.area_used_for_bio_cropland);',
'  update_value( r.seq_id, 13, r.area_used_for_forest);',
'end loop; -- end update agricultural data',
'',
'-- start update population data',
'for r in ',
'( select col.seq_id',
'       , country',
'       , land_area',
'       , population',
'       , population_percent_under_15',
'       , population_percent_betw_15_64',
'       , population_percent_over_64',
'       , population_density',
'       , population_development',
'       , lifespan_at_birth_woman',
'       , lifespan_at_birth_men',
'       , birthrate',
'       , round( ( ( last_population - first_population) / first_population ) * 100, 1)  pct_increase',
'     from ( select country',
'                 , max(land_area)                        over( partition by country)  as land_area',
'                 , max(population)                       over( partition by country)  as population',
'                 , max(population_percent_under_15)      over( partition by country)  as population_percent_under_15',
'                 , max(population_percent_betw_15_64)    over( partition by country)  as population_percent_betw_15_64',
'                 , max(population_percent_over_64)       over( partition by country)  as population_percent_over_64',
'                 , max(population_density)               over( partition by country)  as population_density',
'                 , max(population_development)           over( partition by country)  as population_development',
'                 , max(lifespan_at_birth_woman)          over( partition by country)  as lifespan_at_birth_woman',
'                 , max(lifespan_at_birth_men)            over( partition by country)  as lifespan_at_birth_men',
'                 , max(birthrate)                        over( partition by country)  as birthrate',
'                 , first_value(population) over ( partition by country order by year) as first_population',
'                 , first_value(year)       over ( partition by country order by year) as first_year',
'                 , last_value(population)  over ( partition by country order by year) as last_population',
'                 , last_value(year)        over ( partition by country order by year) as last_year',
'                 , max(year)                             over( partition by country)  as max_year',
'     ',
'            from   gdb_world_population   pop',
'            where  population is not null',
'          ) cnt',
'          join apex_collections      col  on ( col.c002 = cnt.country )',
'  where   collection_name = :APP_COLL_NAME',
'    and   cnt.last_year = cnt.max_year',
'  )',
'loop',
'  update_value( r.seq_id, 14, r.land_area);',
'  update_value( r.seq_id, 15, r.population);',
'  update_value( r.seq_id, 16, r.population_percent_under_15);',
'  update_value( r.seq_id, 17, r.population_percent_betw_15_64);',
'  update_value( r.seq_id, 18, r.population_percent_over_64);',
'  update_value( r.seq_id, 19, r.population_density);',
'  update_value( r.seq_id, 20, r.population_development);',
'  update_value( r.seq_id, 21, r.lifespan_at_birth_woman);',
'  update_value( r.seq_id, 22, r.lifespan_at_birth_men);',
'  update_value( r.seq_id, 23, r.birthrate);',
'  update_value( r.seq_id, 34, r.pct_increase);',
'end loop; -- end update population data',
'',
'-- start update energy consumption data',
'for r in ( select col.seq_id',
'       , country',
'       , max(oil_equivalent_per_inh_in_kg)   as oil_equivalent_per_inh_in_kg',
'       , max(carbon_emisson_per_inh_in_t)    as carbon_emisson_per_inh_in_t',
'  from   gdb_world_energy_consumption dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 24, r.oil_equivalent_per_inh_in_kg);',
'  update_value( r.seq_id, 25, r.carbon_emisson_per_inh_in_t);',
'end loop; -- end update energy consumption data',
'',
'-- start update health data',
'for r in ( select col.seq_id',
'       , country',
'       , max(doctor_frequency_per_10t_inh)  as doctor_frequency_per_10t_inh',
'       , max(hospital_beds_per_10t_inh)     as hospital_beds_per_10t_inh',
'       , max(died_babies_per_1t_livingborn) as died_babies_per_1t_livingborn',
'  from   gdb_world_health dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 26, r.doctor_frequency_per_10t_inh);',
'  update_value( r.seq_id, 27, r.hospital_beds_per_10t_inh);',
'  update_value( r.seq_id, 28, r.died_babies_per_1t_livingborn);',
'end loop; -- end update health data',
'',
'-- start update traffic data',
'for r in ( select col.seq_id',
'       , country',
'       , max(railway_network_length_in_km)              as railway_network_length_in_km',
'       , max(road_network_length_in_km)                 as road_network_length_in_km',
'       , max(road_death_per_100t_inh)                   as road_death_per_100t_inh',
'       , max(oil_price_per_liter_in_dollar)             as oil_price_per_liter_in_dollar',
'       , max(cars_per_1000_inh)                         as cars_per_1000_inh',
'  from   gdb_world_traffic dat',
'         join apex_collections      col  on ( col.c002 = dat.country )',
'  where   collection_name = :APP_COLL_NAME',
'  group by col.seq_id, country)',
'loop',
'  update_value( r.seq_id, 29, r.railway_network_length_in_km);',
'  update_value( r.seq_id, 30, r.road_network_length_in_km);',
'  update_value( r.seq_id, 31, r.road_death_per_100t_inh);',
'  update_value( r.seq_id, 32, r.oil_price_per_liter_in_dollar);',
'  update_value( r.seq_id, 33, r.cars_per_1000_inh);',
'end loop; -- end update traffic data',
'',
'-- start update traffic data',
'for i in 1.. 3 loop',
'for r in ( select par.seq_id',
'       , sum(cnt.c010 * cnt.c014) / sum(cnt.c014)    as  c010',
'       , sum(cnt.c011 * cnt.c014) / sum(cnt.c014)    as  c011',
'       , sum(cnt.c012 * cnt.c010 * cnt.c014) / sum(cnt.c010 * cnt.c014)    as  c012',
'       , sum(cnt.c013 * cnt.c014) / sum(cnt.c014)    as  c013',
'       , sum(cnt.c014)    as  c014   -- land area',
'       , sum(cnt.c015)    as  c015   -- population',
'       , sum(cnt.c016 * cnt.c015) / sum(cnt.c015)    as  c016   -- population_percent_under_15',
'       , sum(cnt.c017 * cnt.c015) / sum(cnt.c015)    as  c017   -- population_percent_betw_15_64',
'       , sum(cnt.c018 * cnt.c015) / sum(cnt.c015)    as  c018   -- population_percent_over_64',
'       , sum(cnt.c019 * cnt.c015) / sum(cnt.c015)    as  c019',
'       , sum(cnt.c020 * cnt.c015) / sum(cnt.c015)    as  c020',
'       , sum(cnt.c021 * cnt.c015) / sum(cnt.c015)    as  c021',
'       , sum(cnt.c022 * cnt.c015) / sum(cnt.c015)    as  c022   -- birth rate',
'       , sum(cnt.c023 * cnt.c015) / sum(cnt.c015)    as  c023',
'       , sum(cnt.c024 * cnt.c015) / sum(cnt.c015)    as  c024   -- energy use per inh',
'       , sum(cnt.c025 * cnt.c015) / sum(cnt.c015)    as  c025   -- carbon emission per inh',
'       , sum(cnt.c026 * cnt.c015) / sum(cnt.c015)    as  c026',
'       , sum(cnt.c027 * cnt.c015) / sum(cnt.c015)    as  c027',
'       , sum(cnt.c028 * cnt.c015) / sum(cnt.c015)    as  c028',
'       , sum(cnt.c029 * cnt.c015) / sum(cnt.c015)    as  c029   -- railroad length',
'       , sum(cnt.c030 * cnt.c015) / sum(cnt.c015)    as  c030   -- road network length',
'       , sum(cnt.c031 * cnt.c015) / sum(cnt.c015)    as  c031   -- road death per 100t inh',
'       , sum(cnt.c032 * cnt.c024) / sum(cnt.c024)    as  c032   -- oil price per liter / multiplied by oil use',
'       , sum(cnt.c033 * cnt.c015) / sum(cnt.c015)    as  c033   -- cars per 1000 inh',
'       , sum(cnt.c034 * cnt.c015) / sum(cnt.c015)    as  c034   -- % population increase ',
'          ',
'  from   apex_collections    par',
'         join apex_collections   cnt on ( par.n001 = cnt.n002 )',
'  where  cnt.collection_name = :APP_COLL_NAME',
'    and  par.collection_name = :APP_COLL_NAME',
'    and  par.c010            is null',
'  group by par.seq_id)',
'loop',
'  update_value( r.seq_id, 10, r.c010);',
'  update_value( r.seq_id, 11, r.c011);',
'  update_value( r.seq_id, 12, r.c012);',
'  update_value( r.seq_id, 13, r.c013);',
'  update_value( r.seq_id, 14, r.c014);',
'  update_value( r.seq_id, 15, r.c015);',
'  update_value( r.seq_id, 16, r.c016);',
'  update_value( r.seq_id, 17, r.c017);',
'  update_value( r.seq_id, 18, r.c018);',
'  update_value( r.seq_id, 19, r.c019);',
'  update_value( r.seq_id, 20, r.c020);',
'  update_value( r.seq_id, 21, r.c021);',
'  update_value( r.seq_id, 22, r.c022);',
'  update_value( r.seq_id, 23, r.c023);',
'  update_value( r.seq_id, 24, r.c024);',
'  update_value( r.seq_id, 25, r.c025);',
'  update_value( r.seq_id, 26, r.c026);',
'  update_value( r.seq_id, 27, r.c027);',
'  update_value( r.seq_id, 28, r.c028);',
'  update_value( r.seq_id, 29, r.c029);',
'  update_value( r.seq_id, 30, r.c030);',
'  update_value( r.seq_id, 31, r.c031);',
'  update_value( r.seq_id, 32, r.c032);',
'  update_value( r.seq_id, 33, r.c033);',
'  update_value( r.seq_id, 34, r.c034);',
'end loop; -- end update traffic data',
'end loop;',
'',
'end if; -- end fill collection',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32156534869480939)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Sunburst Texts'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'  l_args       apex_application_global.vc_arr2;',
'begin',
'  if :P1_TYPE is not null then',
'    l_args := apex_util.string_to_table(:P1_TYPE,''|'');',
'    apex_util.set_session_state(''P1_DESC1'',l_args(1));',
'    apex_util.set_session_state(''P1_DESC2'',l_args(2));',
'  end if;',
'-- exception',
' -- when others then null;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DRILL'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(32158172781480962)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DATA'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'    type cur_typ is ref cursor;',
'    c           cur_typ;',
'    l_sql       varchar2(4000);',
'',
'    p_default_args      varchar2(1000)  := ''Population|Energy use/100 inh|c015|c024|c015|round(c024)|1|1'';',
'    p_color_direction   number    := 1;',
'    p_start_with        number    := 1;',
'',
'    l_template     varchar2(1000)  := ''{"id":"[name]","value":[value],"color":[color],"value2":[value2]'';',
'    l_element      varchar2(1000)  := null;',
'  ',
'    l_name         varchar2(1000)  := null;',
'    l_id           number         := null;',
'    l_value1       number         := null;',
'    l_value2       number         := null;',
'    l_color        number         := null;',
'    l_next_level   number         := null;',
'    l_level        number         := null;',
'    l_limit1       number         := null;',
'    l_limit2       number         := null;',
'    l_limit3       number         := null;',
'    l_args         apex_application_global.vc_arr2;',
'    ',
'    function get_country_id ( p_name in varchar2) return number is',
'      l_return     number := null;',
'    begin',
'      select n001',
'        into l_return',
'      from   apex_collections',
'      where  collection_name = :APP_COLL_NAME',
'        and  c001 = :P1_COUNTRY_NAME',
'      ;',
'apex_debug.message(''Start with id=''||l_return);',
'      return ( l_return);',
'    exception ',
'      when others then return (1);',
'    end;',
'',
'    function get_arg(p_num in number) return  varchar2 is',
'    begin',
'      return(l_args(p_num));',
'    exception',
'      when no_data_found then return(null);',
'    end;',
'    ',
'    function json_value ( p_num in number) return varchar2 is',
'      l_return    varchar2(100) := ltrim(to_char(p_num));',
'    begin',
'      if l_return like ''.%'' then',
'        l_return := ''0''||l_return;',
'      elsif l_return like ''-.%'' then',
'        l_return := replace(l_return,''-.'',''-0.'');',
'      end if;',
'      return(l_return);',
'    end;',
'',
'begin',
'',
'    l_args := apex_util.string_to_table(nvl(:P1_TYPE,p_default_args),''|'');',
'    p_color_direction   := nvl(get_arg(7),1);  -- default red->green',
'    p_start_with        := nvl(get_arg(8),1);  -- default start with World',
'    p_start_with        := :P1_COUNTRY_ID;',
'',
'',
'    l_sql := q''!with val as ( ',
'select c.c001     as  country_name',
'     , c.n001     as  country_id',
'     , c.n002     as  parent_id',
'     , [expr1]    as  value1',
'     , [expr2]    as  value2',
'from   apex_collections    c',
'where  collection_name = ''&APP_COLL_NAME.''',
'  and [column1] is not null and [column2] is not null',
'), lim as ',
'( select round ( power(10,loglim1-trunc(loglim1))*5)/5*  power(10,trunc(loglim1) )  as  limit1',
'       , round ( power(10,loglim2-trunc(loglim2))*5)/5*  power(10,trunc(loglim2) )  as  limit2',
'       , round ( power(10,loglim3-trunc(loglim3))*5)/5*  power(10,trunc(loglim3) )  as  limit3',
'  from (',
'  select distinct *',
'  from (',
'  select log(10,nth_value(value2, round(no_of_c *0.25) ) over () ) as  loglim1',
'       , log(10,nth_value(value2, round(no_of_c *0.5 ) ) over () ) as  loglim2',
'       , log(10,nth_value(value2, round(no_of_c *0.75) ) over () ) as  loglim3',
'  from  ( select val.*, count(*) over () as no_of_c ',
'          from   val ',
'          where  value1 is not null and value2 is not null',
'            and  country_id >= 100',
'        )',
'  order by value2',
'  )',
' )',
')',
'select cnt.name',
'     , cnt.id',
'     , cnt.value1',
'     , cnt.value2',
'     , case when value2 > lim.limit3 then 4',
'            when value2 > lim.limit2 then 3',
'            when value2 > lim.limit1 then 2',
'            else  1',
'       end     as color',
'     , cnt.level1',
'     , nvl(lead(level1) over (order by rownumber),0)  as next_level',
'     , lim.limit1',
'     , lim.limit2',
'     , lim.limit3',
'from (select rownum  as  rownumber, level   as level1, country_id as id, country_name  as name, value1, value2',
'      from  val',
'      where  value1 is not null and value2 is not null',
'      connect by parent_id = prior country_id',
'      start with country_id = [start_with]',
'      )  cnt ',
'    , lim  ',
'!'';',
'    -- loop along (sub)continents and countries',
'    l_sql := replace(l_sql,''[column1]'',l_args(3));  ',
'    l_sql := replace(l_sql,''[column2]'',l_args(4));  ',
'    l_sql := replace(l_sql,''[expr1]''  ,l_args(5));  ',
'    l_sql := replace(l_sql,''[expr2]''  ,l_args(6));  ',
'    l_sql := replace(l_sql,''[start_with]''  ,p_start_with);  ',
'    ',
'    htp.p(''{"result":'');',
'    ',
'    open c for l_sql;',
'    loop',
'        fetch c into l_name',
'                   , l_id',
'                   , l_value1',
'                   , l_value2',
'                   , l_color',
'                   , l_level',
'                   , l_next_level',
'                   , l_limit1',
'                   , l_limit2',
'                   , l_limit3',
'                   ;',
'                   ',
'        exit when c%notfound;',
'        -- process row here',
'',
'      -- reverse color order when requested',
'      if p_color_direction < 0 then',
'         l_color := 5 - l_color;',
'      end if;',
'',
'      l_element := replace(l_template,''[name]''   ,l_name );',
'      l_element := replace(l_element ,''[value]''  ,json_value(l_value1));',
'      l_element := replace(l_element ,''[color]''  ,l_color);',
'      l_element := replace(l_element ,''[value2]'' ,json_value(l_value2));',
'      l_element := l_element ',
'                || case',
'                     when l_next_level = l_level then ''}''',
'                     when l_next_level > l_level then '',"nodes":[''',
'                     when l_next_level - l_level = -1 then ''}''',
'                     when l_next_level - l_level = -2 then ''}]}''',
'                     when l_next_level - l_level = -3 then ''}]}]}''',
'                     when l_next_level - l_level = -4 then ''}]}]}]}''',
'                   end                   ',
'                || case when l_next_level between 1 and l_level-1 then '']},''',
'                        when l_next_level between 1 and l_level then '',''',
'                        else null',
'                   end;',
'      htp.p(l_element);',
'    ',
'    end loop;',
'    htp.p('',"text1":"''||l_args(1)||''"'');',
'    htp.p('',"text2":"''||l_args(2)||''"'');',
'    htp.p('',"legend":['');',
'    if p_color_direction < 0 then',
'      htp.p(''{"text":"< ''||l_limit1||''","color":"4"},'');',
'      htp.p(''{"text":"< ''||l_limit2||''","color":"3"},'');',
'      htp.p(''{"text":"< ''||l_limit3||''","color":"2"},'');',
'      htp.p(''{"text":"> ''||l_limit3||''","color":"1"}'');',
'    else',
'      htp.p(''{"text":"< ''||l_limit1||''","color":"1"},'');',
'      htp.p(''{"text":"< ''||l_limit2||''","color":"2"},'');',
'      htp.p(''{"text":"< ''||l_limit3||''","color":"3"},'');',
'      htp.p(''{"text":"> ''||l_limit3||''","color":"4"}'');',
'    end if;',
'    htp.p(''] }'');',
'    close c;',
'exception',
'  when others then htp.p(''{"error":"''||sqlerrm||''","sql":"''||l_sql||''"}'');',
'end;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
