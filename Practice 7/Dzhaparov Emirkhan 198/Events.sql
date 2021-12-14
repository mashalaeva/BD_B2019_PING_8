create table Events (
	event_id VARCHAR(7) unique,
	name VARCHAR(40),
	eventtype VARCHAR(20),
	olympic_id VARCHAR(7),
	is_team_event INT check(is_team_event in (0, 1)),
	num_players_int_team INT,
	result_noted_in VARCHAR(50),
	foreign key (olympic_id) references Olympics(olympic_id)
);
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('HUNMPOC', '', '', 'YMF2397', false, 34, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('JGNWGNH', '', '', 'IEG3722', true, 54, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('YQGCCRN', '', '', 'GLZ4531', false, 558, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('VBYMJBN', '', '', 'VKS1125', true, 117, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('DHJYJOV', '', '', 'ABD8246', false, 178, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZDDUVFP', '', '', 'RGX4355', false, 569, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('LWTGGWA', '', '', 'GPH7432', false, 26, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('NUBANRS', '', '', 'NQB7145', true, 322, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('OOCTDRI', '', '', 'EPV4814', true, 664, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('AFHWTCB', '', '', 'ZRQ3029', true, 848, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('AVPNUCS', '', '', 'CSF5622', true, 665, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('GQWXKQB', '', '', 'ZYB7650', false, 484, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ALFKSPU', '', '', 'EIM3991', false, 306, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('WNKHUVC', '', '', 'GVT4978', true, 274, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('JRBGNQF', '', '', 'DAA7425', true, 507, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('RAQUNTZ', '', '', 'NPY5929', true, 255, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('JYCUMHB', '', '', 'VVM1291', true, 355, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('EILKKXN', '', '', 'CBC5063', true, 431, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('YWZPVQN', '', '', 'MPJ4760', true, 6, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('MZVGRJW', '', '', 'IHP9904', true, 373, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('TGTDTLU', '', '', 'OII3281', true, 592, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('EIOZQNV', '', '', 'RBA0177', true, 319, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZZAPXJW', '', '', 'IJV2028', false, 997, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('OMNFLRT', '', '', 'BES3043', false, 324, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ODHIKER', '', '', 'AKY4706', true, 726, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('QBOYKUZ', '', '', 'IAC4455', false, 371, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('CIANDBE', '', '', 'YEM4669', false, 150, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZPRBUEO', '', '', 'VQL7542', false, 751, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('WZTKIFC', '', '', 'BQC4287', true, 180, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('YYSRFOX', '', '', 'JLR6234', false, 91, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('FDKQBUK', '', '', 'JFI4524', true, 27, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('NCYOZYT', '', '', 'PUP3535', true, 870, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('AXGQXQS', '', '', 'CFW4135', false, 180, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('FESJHVZ', '', '', 'ZZM4877', false, 798, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZSPEZUA', '', '', 'QTU2417', true, 322, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZFJIDTA', '', '', 'ZNS8308', true, 10, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('TFSGVBD', '', '', 'IKF3108', false, 279, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('KEFAUEX', '', '', 'OBX6315', true, 706, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('HCXIEJQ', '', '', 'UPJ8639', true, 567, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('SBDAWWS', '', '', 'WEY6179', true, 322, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('AHIHPGF', '', '', 'LQD7166', false, 727, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('FKQIRGX', '', '', 'HTR7687', false, 255, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('HUGCIJW', '', '', 'VGA6264', true, 2, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('RXMQZOY', '', '', 'KOP1390', true, 81, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('DSLKWKY', '', '', 'IOB1268', false, 657, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('IOLLOEY', '', '', 'TGN5332', true, 362, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('MDDLSWH', '', '', 'ILK5126', true, 180, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('YBMREQH', '', '', 'VEV2105', true, 906, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZKYXMZV', '', '', 'TUG7486', true, 309, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('YYSLBMU', '', '', 'TAW7174', false, 242, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('GEFEEAF', '', '', 'TZJ6088', false, 686, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('VERWZYZ', '', '', 'QRT6019', false, 741, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('WSCVKFF', '', '', 'NHV6712', false, 838, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('HJCRQMG', '', '', 'TMF7208', true, 518, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('SOQERVX', '', '', 'TYW3560', true, 156, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('SZCQHEX', '', '', 'QEF8725', false, 635, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('BDWVLJN', '', '', 'DAE0717', false, 945, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('JSONDOX', '', '', 'QKA1725', true, 384, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('JYZTBVO', '', '', 'MXD4772', false, 832, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('UDIMPQY', '', '', 'ZVI4561', false, 888, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('QBCCNGT', '', '', 'TNW2622', true, 21, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('USKLPVZ', '', '', 'SNB7753', true, 136, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('CUSAVZY', '', '', 'JIR4634', true, 368, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('WXOZVSR', '', '', 'KYT0144', true, 294, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('RYOCKMM', '', '', 'ZMT5387', true, 968, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('BQOKZSI', '', '', 'HWO6482', false, 646, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('EIQHMIU', '', '', 'UOM4807', false, 915, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('MQDEYDF', '', '', 'EEW2465', true, 525, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('THNXNNJ', '', '', 'KBO0147', true, 759, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZXTZOFL', '', '', 'ABR4745', false, 798, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('TWVPJUH', '', '', 'DKE9871', false, 833, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('QZQGILE', '', '', 'JZG9834', true, 769, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('BTFDCLK', '', '', 'DFV8273', true, 885, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('FVAZWUG', '', '', 'PFN1515', true, 74, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('BJAYYFG', '', '', 'QJJ9887', true, 160, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('HNOFDGV', '', '', 'VOV4760', false, 104, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('HJVCDUJ', '', '', 'BLK0309', false, 262, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('LUWQGXY', '', '', 'KAL7106', false, 146, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('VGELQCM', '', '', 'AOJ4674', false, 174, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('JJFEKDG', '', '', 'OHO9095', false, 992, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('HQMOEQP', '', '', 'HXL1758', true, 132, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('OIIJJNL', '', '', 'EKW6595', true, 827, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('DZSRVHN', '', '', 'OQU3102', true, 145, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('TWZPRTA', '', '', 'KIV1486', false, 433, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('KJGPAWS', '', '', 'DHR0705', true, 555, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('TIYWZRC', '', '', 'JZB2486', true, 314, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('IKPWJOW', '', '', 'IFJ3234', true, 287, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('MWHXHRE', '', '', 'QKU7269', false, 970, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('AGUKOBB', '', '', 'KJN5303', true, 210, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('PPGQYMX', '', '', 'KHD7393', false, 431, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('ZHXDKEH', '', '', 'AGX0617', true, 1, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('OONLGAJ', '', '', 'AXL2668', true, 325, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('XXVGOWB', '', '', 'LYJ3383', false, 44, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('PCMYOII', '', '', 'PWU0161', true, 93, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('MRFOVGG', '', '', 'ZDW7503', true, 101, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('CVKBNGK', '', '', 'GRN4531', false, 430, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('CGYKRIB', '', '', 'YBZ0802', false, 232, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('DDQJADK', '', '', 'UIN5741', true, 782, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('XDDUPNV', '', '', 'ETG9285', true, 899, '');
insert into Events (event_id, name, eventtype, olympic_id, is_team_event, num_players_int_team, result_noted_in) values ('EWJSYQU', '', '', 'TDR8770', true, 98, '');
