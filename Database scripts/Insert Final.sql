ALTER TABLE hyperav_stock AUTO_INCREMENT = 1

INSERT INTO hyperav_customer
	(cuFName,cuLName,cuAddress1,cuAddress2, cuTown, cuPostcode, cuTelephone, cuEmail,cuPassword)
VALUES
	('Sylvester','Cat','901 Stockport Road','Levenshulme','Manchester','M19 3PG','01616249700','scat@yahoo.co.in','39ff3c4c227302d37ceb52f4f0a9d4c4e990efcd'),
	('Tom','Jerry','70 Delemere Street','Levenshulme','Manchester','M19 3WR','01615281225','tjerry@yahoo.co.uk','05eeed2ca4780a1926896b512bcb94ca2a534b64'),
	('Spike','Butch','3 Wellington Road','Rusholme','Manchester','M16 3PG','01616289540','sButch@yahoo.com','4a81be9b03a30b331bf84870a3695905f78e35ef'),
	('Cowardy','Dog','116 Oxford Street','Longsight', 'Manchester','M1 3LA','0161528623','cDog@gmail.com','abc692de1b803dd1093b25748a0e48dbfb3316df'),
	('Daffy','Duck','1 Machester Road','Cheadle','Manchester','SK9 3NG','01616240840','dDuck@mymail.co.in','0264c0d72c234d9976a26c889ce5225b54a1f955'),
	('Colonel','Hathi','54 Edwinstowe Drive','Sherwood','Nottingham','NG5 3EP','01158408234','cHathi@gmail.co.uk','f1e09092643e0cedeebaf5c3d1ac415bd46be6c7'),
	('Pink','Panther','14 Perry Road', 'Woodsworth','Nottingham','NG3 7WR','01157543297','pPanther@ymail.com','bc40a8607eddb3876f8881e963c99590bbf47c2a'),
	('Bugs','Bunny','56 Oxford Crecent','Rise Park','Northampton','NH4 2AA','01188760054','bBunny@msn.com','f1b686a1e1faf4a1d5ce7ac4e0326ce2f4a25302'),
	('Felix','The Cat','68 Rock Avenue', 'Burry Park','Burry','BG1 6ED', '01108745333', 'fTheCat@hotmail.com','b1cc1fc10c7638c54bbfdd29fb1907a2c931b5a0'),
	('Samurai','Jack','117 Edward Street','Central Road','London','LL2 8AS', '01519800231','sJack@hotmail.co.uk','4a354cd6f2e36e815369ef548837f3b9007befd1'),
	('Cheshire','Cat','2 Recepton Avenue','Manchester Road','Burry','BG2 1AA','01102343323','cCat@yahoo.co.uk','80e064b4901a78d2764285e2a728e186f7de445e'),
	('Powerpuff','Girls','1 Disney Road','Cartoon Land','Manchester','M16 0LW','01615624852','ppGirls@myworld.com','aa2395ad96e3f212767dbc62d4da73ee50e0ee18'),
	('Mojo','Jojo','4 Merton Avenue', 'Hollins','Oldham','OL8 3AZ','01616359700','mJojo@googlemail.com','32868fd6b6997721d04239636eeb9cea97b43f11'),
	('Betty','Boop','118 Oxford Street','Airport Road','Cheadle','SK8 2HW','01614545455','bBoop@msn.co.uk','2f61e9073f3d7a903b7f428cc712e8072fa07c05');


INSERT INTO hyperav_location 
	(loName, loAddress1, loAddress2, loTown, loPostcode, loTelephone)
VALUES 
	('hyperav Stockport', '11 High Street', '', 'Stockport', 'SK1 1EG', '0161 477 4646'),
	('hyperav Manchester', '86 Market Street', '', 'Manchester', 'M1 1PD', '0161 247 4646'),
	('hyperav London', '5 Wall Street', '', 'London', 'EC1 8QJ', '0207 247 4646'),
	('hyperav York', '108 Gorsey Lane', '', 'York', 'YO2 7RY', '01904 631 387'),
	('hyperav Newcastle', '119 Eyre Street', '', 'Newcastle', 'NE1 4QW', '0191 291 2222'),
	('hyperav Cardiff', '35 Eastgate', '', 'Cardiff', 'CF2 7RE', '029 2042 7425'),
	('hyperav Birmingham', '25 New Street', '', 'Birmingham', 'B29 2HR', '0121 455 5432');


INSERT INTO hyperav_staff 
	(stFName, stLName, stAddress1, stAddress2, stTown, stPostcode, stTelephone, stEmail, stPassword, stJobRole, locationID)
VALUES 
	('Hulk', 'Hogan', '4 Mauldeth Rd', '', 'Stockport', 'SK4 3NW', '0161 496 0342', 'hulk.hogan@hyperav.co.uk', '08426e3c339878b1e66d1e0b977d05353750c6f4', 'Managing Director', 1),
	('Steve', 'Austin', '47 Old Rd', '', 'Stockport', 'SK4 1TD', '0161 496 0066', 'steve.austin@hyperav.co.uk', '83e715ed38e1d861ac13b651bf15bd1b24e60d5c', 'Buyer', 1),
	('Vince', 'McMahon', '38 Bluestone Dr', '', 'Stockport', 'SK4 3PY', '07700 900741', 'vince.mcmahon@hyperav.co.uk', 'a9ce51789ef830b12d3779ac7acff82441051455', 'Stock Controller', 2),
	('Andre', 'Giant', '849 Ashton Old Rd', '', 'Manchester', 'M11 2NL', '0161 496 0877', 'andre.giant@hyperav.co.uk', 'ce8fb61ca792822e3d0d2cce8c2ac006144ec534', 'Warehouse', 2),
	('Jesse', 'Ventura', '31 Walsden St', '', 'Manchester', 'M11 4WJ', '0161 496 0578', 'jesse.ventura@hyperav.co.uk', '55899b50ee18e5094bc717ad008f4c0e32a65b80', 'Warehouse', 3),
	('John', 'Cena', '71 Moorside Rd', '', 'Stockport', 'SK4 4DS', '07700 900020', 'john.cena@hyperav.co.uk', '681cbb6826c468e8167e9e0c6cfa5648a04c196c', 'Sales Assistant', 3),
	('Roddy', 'Piper', '43 Lea Rd', '', 'Stockport', 'SK4 4JT', '07700 900074', 'roddy.piper@hyperav.co.uk', '93afdb999a8e72eaea3fb5688994807b60fddc11', 'Sales Assistant', 4),
	('Ric', 'Flair', '439 Mill St', '', 'Manchester', 'M11 2BL', '0161 496 0514', 'ric.flair@hyperav.co.uk', '1fc008055278792d6e8c8a4894a1353a5150e169', 'Sales Assistant', 4),
	('Stacy', 'Keibler', '10 Walshaw St', '', 'Manchester', 'M11 3AP', '0161 496 0589', 'stacy.keibler@hyperav.co.uk', '02b097ce8d66e09253f487e60c4583f2571250bc', 'Sales Assistant', 5),
	('Shawn', 'Michaels', '29 Hollingbourne Rd', '', 'Liverpool', 'L11 3AJ', '0151 496 0047', 'shawn.michaels@hyperav.co.uk', '63454ab966a1ea74ea3b44fb42253c91f7499bd9', 'Sales Assistant', 5),
	('Bret', 'Hart', '8 Rushmere Rd', '', 'Liverpool', 'L11 2XP', '0151 496 0552', 'bret.hart@hyperav.co.uk', '9e05c954ce681f483f27bb97c54a41032bec3a2e', 'Sales Assistant', 6),
	('Randy', 'Savage', '11 Kilford Cl', '', 'Warrington', 'WA5 9SR', '07700 900596', 'randy.savage@hyperav.co.uk', 'f161c7eff0d952898997cb3bd8658731c0092fe5', 'Sales Assistant', 6),
	('Bruno', 'Sammartino', '80 Pendine Cl', '', 'Warrington', 'WA5 9RQ', '07700 900874', 'bruno.sammartino@hyperav.co.uk', '0bd31275f75aec6d2b1feca7f826bf4a0373d777', 'Sales Assistant', 7),
	('Ricky', 'Steamboat', '6A Jardine St', '', 'Sheffield', 'S9 1NA', '0114 496 0722', 'ricky.steamboat@hyperav.co.uk', 'be2ad898846cee26635f9a588fc4752f4c314123', 'Sales Assistant', 7),
	('Kurt', 'Angle', '467 Staniforth Rd', '', 'Sheffield', 'S9 3FR', '0114 496 0103', 'kurt.angle@hyperav.co.uk', 'ad8716e30f8f3c20294522bebaaf848125efb20f', 'Sales Assistant', 5),
	('Buddy', 'Rogers', '43 Westfield Rd', '', 'Leeds', 'LS3 1NQ', '0113 496 0324', 'buddy.rogers@hyperav.co.uk', '58768414411231a6683573e34a79768188198743', 'Sales Assistant', 6),
	('Chris', 'Jericho', '48 Washington St', '', 'Leeds', 'LS3 1NR', '0113 496 0934', 'chris.jericho@hyperav.co.uk', '90462767102cabb94325ee3c27667b06ee5675f2', 'Sales Assistant', 6);

INSERT INTO hyperav_orders
	(orDate,orTotal,orDeliverDate,orPaymentMethod,customerId,staffId)
VALUES 
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),120.50,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Credit Card',1,1 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),150.75,STR_TO_DATE('11-02-2016','%d-%m-%Y'),'Debit Card',2,2 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),73.50,STR_TO_DATE('13-02-2016','%d-%m-%Y'),'Credit Card',3,3 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),110.00,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Cash',4,4 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),94.50,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Credit Card',5,5 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),128.50,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Credit Card',1,6 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),156.75,STR_TO_DATE('11-02-2016','%d-%m-%Y'),'Debit Card',2,7 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),173.50,STR_TO_DATE('13-02-2016','%d-%m-%Y'),'Credit Card',3,8 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),117.00,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Cash',4,9 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),97.50,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Credit Card',5,10 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),178.50,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Cash',6,11 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),210.50,STR_TO_DATE('13-02-2016','%d-%m-%Y'),'Debit Card',7,12 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),150.00,STR_TO_DATE('12-02-2016','%d-%m-%Y'),'Debit Card',8,13 ),
	(STR_TO_DATE('8-02-2016', '%d-%m-%Y'),89.50,STR_TO_DATE('11-02-2016','%d-%m-%Y'),'Cash',9,14);

INSERT INTO hyperav_manufacturer
	(maName, maAddress1, maAddress2, maTown, MaPostcode, maTelephone, maEmail)
VALUES
	('Sony', '11 Park Lane', '', 'London', 'E20 651', '01216745612', 'enquiries@sony.com'),
	('Hisense', '3 Oxford Road', '', 'Manchester', 'M15 6TT', '01452123678', 'services@hisense.net'),
	('LG', '147 Westfield Avenue', '', 'Birmingham', 'L155 88G', '01925578901', 'lg.enquiries@lg.co.uk'),
	('Panasonic', '9 Market Close', '', 'Liverpool', 'BR3 NYH', '07678145321', 'contactus@panasonic.com'),
	('Philips', '50 Rosebery Rd', '', 'Yorkshire', 'IV55 8GQ', '01125675435', 'contact@philips.co.uk' ),
	('Samsung', '23A Storrington Drive', '', 'Aberdeen', 'L39 6SF', '09844556123', 'enquiries@samsung.co.uk' ),
	('Blaupunkt', '12 Backlee', '', 'Edinburgh', 'EH16 6YH', '01456127891', 'customer.enquiries@blaupunkt.org'),
	('Sharp', 'King St', '', 'Cornwall', 'CW3 TTR', '01145213789', 'sharp.services@sharp.com'),
	('Onkyo', '15 Selborne Rd', 'Walthamstow', 'London', 'E17', '0049-8142-4208-11', 'enquiries@onkyo.de'),
	('Denon', '81 Lodge Ln', '', 'London', 'N12 8JG', '02074334312', 'enquiries@denon.co.uk'),
	('Cambridge Audio', 'Hankey Place', 'Waterloo', 'London', 'SE1 4BB', '0333 900 0094', 'enquiries@cambridgeaudio.co.uk'),
	('Yamaha', '213 Hawthorn Cl', 'Camelford', 'Cornwall', 'PL32 9NH', '01235435672', 'yamahaservices@yamaha.com'),
	('Mission', '2 Station Road', 'Bexleyheath', 'Greater London', 'DA7 4AR', '01432123456', 'mission.contact@mission.net'),
	('Wharfedale', '73 Clerk St', '', 'Worcestershire', 'EH20 9RE', '02145678911', 'wharfedale.services@wharfedale.co.uk'),
	('Pioneer', '2 Clarington Grove', '', 'Wigan', 'WN1 3BP', '01345567891', 'contactus@pioneer.com');
	

INSERT INTO hyperav_supplier
	(suName, suAddress1, suAddress2, suTown, suPostcode, suTelephone, suEmail)
VALUES
	('ABC Industries', '18 Exe Hill', '', 'Torquay', 'TQ2 7NF', '01547765321', 'services@abcindustries.co.uk'),
	('Chester Ltd', '20 Newton Lane', '', 'Chester', 'CH22 AS1', '01124564321', 'contactus@chesterltd.com'),
	('Power Associates', '3 Empress Rd', '', 'Liverpool', 'L6 GHJ', '01665890122', 'powerassociates.services@powerassociates.com'),
	('Energy Inc', '187 Victoria Lane', '', 'Warwick', 'CV7 KLS', '07654324561', 'contact.us@energyinc.net'),
	('Tech Corparations', '5 Dane Avenue', '', 'London', 'E66 YGH', '01345678911', 'enquiries@techcorp.org'),
	('ABC Electronics','107 Edwinstowe Drive','','Manchester','M19 3PG', '01616249700','info@abcelectronics.co.uk');
	

INSERT INTO hyperav_products
	(prModelNo, prName, prDescription, prPrice, prCategory, manufacturerID, minStockLevel, maxStockLevel)
VALUES
	('STRDN1060', 'Sony STRDN1060', 'Black AV Receiver', 399.00, 'AV Receiver', 1, 0, null),
	('STRDN860', 'Sony STRDN860', 'Black AV Receiver', 299.95, 'AV Receiver', 1, 0, null),
	('STRDH550', 'Sony STRDH550', 'Black AV Receiver', 129.00, 'AV Receiver', 1, 0, null),
	('AVRX4200W', 'Denon Atmos', 'Black Atmos AV Receiver', 849.00, 'AV Receiver', 10, 0, null),
	('AVRX3200W', 'Denon Atmos', 'Black Atmos AV Receiver', 599.00, 'AV Receiver', 10, 0, null),
	('AVRX2200W', 'Denon Atmos', 'Black Atmos AV Receiver', 429.00, 'AV Receiver', 10, 0, null),
	('AVRX520BT', 'Denon AVRX520BT', 'Black AV Receiver', 179.95, 'AV Receiver', 10, 0, null),
	('HTS5805', 'Onkyo Atmos', 'Black Atmos 5.1.2 Package System inc Speakers excluding DVD Player', 649.00, 'Speakers', 9, 0, null),
	('SC-ALL70TEB', 'Panasonic SC-ALL70TEB', 'Wireless Surround Sound Speaker System', 549.00, 'Speakers', 4, 0, null),
	('SKSHT588', 'Onkyo SKSHT588', 'Black Dolby Atmos 5.1.2 Speaker Package', 449.00, 'Speakers', 9, 0, null),
	('100', 'SYMPHONY 100', 'Speaker Cable Per Metre', 0.99, 'Speaker Cable', 11, 0, null),
	('200', 'SYMPHONY 200', 'Speaker Cable Per Metre', 1.49, 'Speaker Cable', 11, 0, null),
	('300', 'SYMPHONY 300', 'Speaker Cable Per Metre', 1.99, 'Speaker Cable', 11, 0, null),
	('400', 'SYMPHONY 400', 'Speaker Cable Per Metre', 2.49, 'Speaker Cable', 11, 0, null),
	('23/157', 'Blaupunkt 23/157', 'Black 23 inch LED TV with DVD Player HD Ready', 79.95, 'TV', 7, 0, null),
	('22MT45', 'LG 22MT45', '22 inch LED TV 1080p HD Ready', 109.95, 'TV', 3, 0, null),
	('TX24C300B', 'Panasonic Viera TX24C300B', '24 inch LED TV HD Ready Freeview HD', 129.00, 'TV', 4, 0, null),
	('UE22H5000', 'Samsung UE22H5000', '22 inch LED TV 1080p HD Freeview HD', 149.95, 'TV', 6, 0, null),
	('32LF580V', 'LG 32LF580V', '32 inch Smart LED TV 1080p HD Freeview HD', 259.00, 'TV', 3, 0, null),
	('KD75X9405C', 'SonyBravia KD75X9405C', '75 inch 4K Ultra HD 3D Smart LED Android TV Youview', 4999.00, 'TV', 1, 0, null),
	('LTDN55K321UWTS', 'Hisense LTDN55K321UWTS', '55 inch 4K Ultra HD Smart LED TV Freeview', 599.00, 'TV', 2, 0, null),
	('LTDN32E130TUK', 'Hisense LTDN32E130TUK', '32 inch LED TV HD Ready Freeview HD', 209.99, 'TV', 2, 0, null),
	('49/235Z', 'Blaupunkt 49/235Z', '49 inch LED TV 1080p HD Freeview HD', 279.00, 'TV', 7, 0, null),
	('TX50CX802B', 'Panasonic Viera', '50 inch 4K Ultra HD 3D Smart LED TV Freetime Freeview HD freesat HD', 1099.00, 'TV', 4, 0, null),
	('UE48JS9000', 'Samsung UE48JS9000', '48 inch Curved 4K Ultra HD 3D Smart LED TV Freeview HD freesat HD', 1399.00,'TV', 6, 0, null),
	('KD55X8005C', 'Sony Bravia KD55X8005C', '55 inch 4K Ultra HD LED Smart Android TV Youview', 799.00,'TV', 1, 0, null),
	('55PUT6400', 'Philips 55PUT6400', '55 inch 4K Ultra HD Smart LED Android TV Freeview HD', 649.00,'TV', 5, 0, null),
	('40PUT6400', 'Philips 40PUT6400', '40 inch 4K Ultra HD Smart LED Android TV Freeview HD', 399.99,'TV', 5, 0, null),
	('LC32DHE4041K', 'Sharp LC32DHE4041K', '32 inch LED TV with DVD Player HD Ready Freeview HD', 169.95,'TV', 8, 0, null),
	('NSAW592', 'Yamaha NSAW592', 'Black Outdoor Speakers - Per Pair', 179.95, 'Standalone Speakers',14 , 0, null),
	('SX1PIANO', 'Mission SX1PIANO', 'Gloss Black Speakers Per Pair', 249.95, 'Standalone Speakers',16 , 0, null),
	('DIAMOND220', 'Wharfedale DIAMOND220', 'Rosewood Speakers Per Pair', 189.00, 'Standalone Speakers',15 , 0, null),
	('DIAMOND9', 'Wharfedale DIAMOND9', 'Black Speakers Per Pair', 39.00, 'Standalone Speakers',15, 0, null),
	('S-BS73A', 'Pioneer S-BS73A', 'Black Dolby Atmos Speakers Per Pair', 599.95, 'Standalone Speakers',17 , 0, null),
	('DMPBDT700', 'Panasonic DMPBDT700', 'Black Smart 3D Blu-ray Player', 299.95, 'Blu-ray Player', 4, 0, null),
	('HTB4150B', 'Philips HTB4150B', 'Black Sound base with built-in Blu-ray Player', 149.50, 'Blu-ray Player', 5, 0, null),
	('BDJ7500', 'Samsung BDJ7500', 'Black Smart 3D Blu-ray Player', 134.95, 'Blu-ray Player', 6, 0, null),
	('DVPSR760', 'Sony DVPSR760', 'Black DVD Player', 34.95, 'DVD Player', 1, 0, null),
	('DVPSR170', 'Sony DVPSR170', 'Black DVD Plsyer', 24.49, 'DVD Player', 1, 0, null),
	('MDRXB950', 'Sony MDRXB950', 'Black On Ear Closed Back Mic Headphones', 67, 'Headphones', 1, 0, null),
	('FIDELIO M1 MK2', 'Philips FIDELIO M1 MK2', 'On Ear Closed Back Headphones', 124.37, 'Headphones', 5, 0, null),
	('HTCT80','Sony HTCT80', 'Sony 80Watts Soundbar 2.1ch',99.00,'Soundbar',1,0,null),
	('HWJ250XU','Samsung HWJ250XU','Samsung 80Watts Wireless Samsung Soundbar',104.00,'Soundbar',6,2,null),
	('HTCT60BT','Sony HTCT60BT','Sony 2.1 channel Soundbar with virtual surround sound',109.99,'Soundbar',1,0,null),
	('SCHTB18EBK','Panasonic SCHTB18EBK','Panasonic SC-HTB18EB-K Sound Bar provides excellent cinema experience',129.00,'Soundbar',4,3,null),
	('SUBZERO11','Roth SUBZERO11','60Watts Soundbar Built-in Sub Woofer Remote Control',129.00,'Soundbar',13,1,null),
	('NB2430A','LG NB2430A','LG 160 Watts Soundbar 2.0ch Surround Dolby Digital',131.43,'Soundbar',3,1,null),
	('YAS93','Yamaha YAS93','Yamaha 120Watts Soundbar Dolby Digital/DTS',169.95,'Soundbar',14,1,null),
	('YAS201','Yamaha YAS201','Yamaha 160Watts Soundbar slim sound bar with subwoofer',219.00,'Soundbar',14,1,null);

INSERT INTO hyperav_stock
	(prModelNo, locationID, stQuantity)
VALUES
	('100', 2, 20),
	('200', 2, 10),
	('300', 2, 20),
	('400', 2, 15),
	('100', 3, 20),
	('200', 3, 20),
	('300', 3, 10),
	('400', 3, 20),
	('100', 4, 15),
	('200', 4, 10),
	('300', 4, 20),
	('400', 4, 20),
	('100', 5, 10),
	('200', 5, 20),
	('300', 5, 20),
	('400', 5, 10),
	('100', 6, 20),
	('200', 6, 13),
	('300', 6, 20),
	('400', 6, 20),
	('100', 7, 20),
	('200', 7, 10),
	('300', 7, 20),
	('400', 7, 20),
	('22MT45', 2, 1),
	('22MT45', 3, 1),
	('22MT45', 4, 2),
	('22MT45', 5, 3),
	('22MT45', 6, 2),
	('22MT45', 7, 2),
	('23/157', 2, 1),
	('23/157', 3, 1),
	('23/157', 4, 1),
	('23/157', 5, 2),
	('23/157', 6, 3),
	('23/157', 7, 2),
	('32LF580V', 2, 3),
	('32LF580V', 3, 1),
	('32LF580V', 4, 2),
	('32LF580V', 5, 1),
	('32LF580V', 6, 2),
	('32LF580V', 7, 2),
	('40PUT6400', 2, 3),
	('40PUT6400', 3, 2),
	('40PUT6400', 4, 3),
	('40PUT6400', 5, 2),
	('40PUT6400', 6, 1),
	('40PUT6400', 7, 2),
	('49/235Z', 2, 1),
	('49/235Z', 3, 1),
	('49/235Z', 4, 1),
	('49/235Z', 5, 3),
	('49/235Z', 6, 2),
	('49/235Z', 7, 2),
	('55PUT6400', 2, 1),
	('55PUT6400', 3, 1),
	('55PUT6400', 4, 1),
	('55PUT6400', 5, 2),
	('55PUT6400', 6, 1),
	('55PUT6400', 7, 2),
	('AVRX2200W', 2, 1),
	('AVRX2200W', 3, 1),
	('AVRX2200W', 4, 1),
	('AVRX2200W', 5, 2),
	('AVRX2200W', 6, 2),
	('AVRX2200W', 7, 2),
	('AVRX3200W', 2, 1),
	('AVRX3200W', 3, 1),
	('AVRX3200W', 4, 1),
	('AVRX3200W', 5, 2),
	('AVRX3200W', 6, 1),
	('AVRX3200W', 7, 2),
	('AVRX4200W', 2, 1),
	('AVRX4200W', 3, 1),
	('AVRX4200W', 4, 1),
	('AVRX4200W', 5, 3),
	('AVRX4200W', 6, 1),
	('AVRX4200W', 7, 2),
	('AVRX520BT', 2, 1),
	('AVRX520BT', 3, 1),
	('AVRX520BT', 4, 1),
	('AVRX520BT', 5, 2),
	('AVRX520BT', 6, 1),
	('AVRX520BT', 7, 2),
	('BDJ7500', 2, 4),
	('BDJ7500', 3, 1),
	('BDJ7500', 4, 1),
	('BDJ7500', 5, 4),
	('BDJ7500', 6, 2),
	('BDJ7500', 7, 2),
	('DIAMOND220', 2, 1),
	('DIAMOND220', 3, 1),
	('DIAMOND220', 4, 1),
	('DIAMOND220', 5, 3),
	('DIAMOND220', 6, 2),
	('DIAMOND220', 7, 2),
	('DIAMOND9', 2, 1),
	('DIAMOND9', 3, 1),
	('DIAMOND9', 4, 1),
	('DIAMOND9', 5, 2),
	('DIAMOND9', 6, 2),
	('DIAMOND9', 7, 2),
	('DMPBDT700', 2, 1),
	('DMPBDT700', 3, 1),
	('DMPBDT700', 4, 1),
	('DMPBDT700', 5, 2),
	('DMPBDT700', 6, 3),
	('DMPBDT700', 7, 2),
	('DVPSR170', 2, 1),
	('DVPSR170', 3, 1),
	('DVPSR170', 4, 1),
	('DVPSR170', 5, 2),
	('DVPSR170', 6, 3),
	('DVPSR170', 7, 2),
	('DVPSR760', 2, 1),
	('DVPSR760', 3, 1),
	('DVPSR760', 4, 1),
	('DVPSR760', 5, 3),
	('DVPSR760', 6, 2),
	('DVPSR760', 7, 2),
	('FIDELIO M1 MK2', 2, 1),
	('FIDELIO M1 MK2', 3, 1),
	('FIDELIO M1 MK2', 4, 1),
	('FIDELIO M1 MK2', 5, 2),
	('FIDELIO M1 MK2', 6, 2),
	('FIDELIO M1 MK2', 7, 2),
	('HTB4150B', 2, 5),
	('HTB4150B', 3, 3),
	('HTB4150B', 4, 1),
	('HTB4150B', 5, 4),
	('HTB4150B', 6, 3),
	('HTB4150B', 7, 2),
	('HTCT60BT', 2, 1),
	('HTCT60BT', 3, 3),
	('HTCT60BT', 4, 2),
	('HTCT60BT', 5, 3),
	('HTCT60BT', 6, 1),
	('HTCT60BT', 7, 2),
	('HTCT80', 2, 1),
	('HTCT80', 3, 2),
	('HTCT80', 4, 3),
	('HTCT80', 5, 1),
	('HTCT80', 6, 3),
	('HTCT80', 7, 2),
	('HTS5805', 2, 1),
	('HTS5805', 3, 3),
	('HTS5805', 4, 1),
	('HTS5805', 5, 2),
	('HTS5805', 6, 1),
	('HTS5805', 7, 2),
	('HWJ250XU', 2, 1),
	('HWJ250XU', 3, 3),
	('HWJ250XU', 4, 2),
	('HWJ250XU', 5, 2),
	('HWJ250XU', 6, 4),
	('HWJ250XU', 7, 3),
	('KD55X8005C', 2, 1),
	('KD55X8005C', 3, 2),
	('KD55X8005C', 4, 1),
	('KD55X8005C', 5, 2),
	('KD55X8005C', 6, 3),
	('KD55X8005C', 7, 2),
	('KD75X9405C', 2, 1),
	('KD75X9405C', 3, 2),
	('KD75X9405C', 4, 1),
	('KD75X9405C', 5, 2),
	('KD75X9405C', 6, 1),
	('KD75X9405C', 7, 2),
	('LC32DHE4041K', 2, 2),
	('LC32DHE4041K', 3, 1),
	('LC32DHE4041K', 4, 3),
	('LC32DHE4041K', 5, 2),
	('LC32DHE4041K', 6, 1),
	('LC32DHE4041K', 7, 2),
	('LTDN32E130TUK', 2, 2),
	('LTDN32E130TUK', 3, 1),
	('LTDN32E130TUK', 4, 1),
	('LTDN32E130TUK', 5, 2),
	('LTDN32E130TUK', 6, 1),
	('LTDN32E130TUK', 7, 2),
	('LTDN55K321UWTS', 2, 1),
	('LTDN55K321UWTS', 3, 2),
	('LTDN55K321UWTS', 4, 1),
	('LTDN55K321UWTS', 5, 3),
	('LTDN55K321UWTS', 6, 2),
	('LTDN55K321UWTS', 7, 2),
	('MDRXB950', 2, 10),
	('MDRXB950', 3, 20),
	('MDRXB950', 4, 15),
	('MDRXB950', 5, 20),
	('MDRXB950', 6, 10),
	('MDRXB950', 7, 25),
	('NB2430A', 2, 10),
	('NB2430A', 3, 8),
	('NB2430A', 4, 5),
	('NB2430A', 5, 3),
	('NB2430A', 6, 5),
	('NB2430A', 7, 10),
	('NSAW592', 2, 4),
	('NSAW592', 3, 2),
	('NSAW592', 4, 3),
	('NSAW592', 5, 2),
	('NSAW592', 6, 1),
	('NSAW592', 7, 2),
	('S-BS73A', 2, 1),
	('S-BS73A', 3, 3),
	('S-BS73A', 4, 2),
	('S-BS73A', 5, 3),
	('S-BS73A', 6, 2),
	('S-BS73A', 7, 3),
	('SC-ALL70TEB', 2, 3),
	('SC-ALL70TEB', 3, 1),
	('SC-ALL70TEB', 4, 2),
	('SC-ALL70TEB', 5, 3),
	('SC-ALL70TEB', 6, 1),
	('SC-ALL70TEB', 7, 2),
	('SCHTB18EBK', 2, 4),
	('SCHTB18EBK', 3, 5),
	('SCHTB18EBK', 4, 1),
	('SCHTB18EBK', 5, 3),
	('SCHTB18EBK', 6, 2),
	('SCHTB18EBK', 7, 2),
	('SKSHT588', 2, 3),
	('SKSHT588', 3, 1),
	('SKSHT588', 4, 1),
	('SKSHT588', 5, 2),
	('SKSHT588', 6, 2),
	('SKSHT588', 7, 3),
	('STRDH550', 2, 5),
	('STRDH550', 3, 4),
	('STRDH550', 4, 5),
	('STRDH550', 5, 5),
	('STRDH550', 6, 3),
	('STRDH550', 7, 2),
	('STRDN1060', 2, 1),
	('STRDN1060', 3, 3),
	('STRDN1060', 4, 2),
	('STRDN1060', 5, 1),
	('STRDN1060', 6, 3),
	('STRDN1060', 7, 2),
	('STRDN860', 2, 1),
	('STRDN860', 3, 2),
	('STRDN860', 4, 3),
	('STRDN860', 5, 2),
	('STRDN860', 6, 1),
	('STRDN860', 7, 2),
	('SUBZERO11', 2, 1),
	('SUBZERO11', 3, 3),
	('SUBZERO11', 4, 4),
	('SUBZERO11', 5, 5),
	('SUBZERO11', 6, 2),
	('SUBZERO11', 7, 2),
	('SX1PIANO', 2, 1),
	('SX1PIANO', 3, 3),
	('SX1PIANO', 4, 2),
	('SX1PIANO', 5, 3),
	('SX1PIANO', 6, 2),
	('SX1PIANO', 7, 3),
	('TX24C300B', 2, 1),
	('TX24C300B', 3, 4),
	('TX24C300B', 4, 2),
	('TX24C300B', 5, 3),
	('TX24C300B', 6, 2),
	('TX24C300B', 7, 2),
	('TX50CX802B', 2, 3),
	('TX50CX802B', 3, 2),
	('TX50CX802B', 4, 3),
	('TX50CX802B', 5, 2),
	('TX50CX802B', 6, 3),
	('TX50CX802B', 7, 2),
	('UE22H5000', 2, 5),
	('UE22H5000', 3, 3),
	('UE22H5000', 4, 2),
	('UE22H5000', 5, 3),
	('UE22H5000', 6, 4),
	('UE22H5000', 7, 2),
	('UE48JS9000', 2, 3),
	('UE48JS9000', 3, 2),
	('UE48JS9000', 4, 1),
	('UE48JS9000', 5, 2),
	('UE48JS9000', 6, 3),
	('UE48JS9000', 7, 2),
	('YAS201', 2, 1),
	('YAS201', 3, 2),
	('YAS201', 4, 3),
	('YAS201', 5, 4),
	('YAS201', 6, 6),
	('YAS201', 7, 5),
	('YAS93', 2, 10),
	('YAS93', 3, 8),
	('YAS93', 4, 7),
	('YAS93', 5, 6),
	('YAS93', 6, 5),
	('YAS93', 7, 2);
	
	INSERT INTO hyperav_orderdetails
	(orderID, stockID, odQuantity)
VALUES
	(1, 1, 3),
	(1, 10, 1),
	(2, 20, 1),
	(2, 30, 1),
	(2, 33, 1),
	(3, 2, 2),
	(3, 15, 1),
	(3, 20, 1),
	(4, 3, 3),
	(4, 17, 1),
	(4, 22, 1),
	(5, 4, 2),
	(5, 17, 1),
	(5, 24, 1),
	(6, 19, 1),
	(7, 40, 1),
	(7, 12, 1),
	(8, 13, 1),
	(8, 27, 1),
	(8, 32, 1),
	(9, 25, 1),
	(9, 42, 1),
	(9, 44, 1),
	(10, 37, 1),
	(10, 26, 1);

INSERT INTO hyperav_stockorderdetails
	(stockID, supplierID, stOrderDate, stDeliveryDate, stOrderQuantity)
VALUES
	(1, 2, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 50),
	(2, 2, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 50),
	(3, 2, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 50),
	(25, 3, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(31, 3, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(37, 4, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 8),
	(55, 4, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(61, 3, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(67, 4, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(91, 4, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 14),
	(97, 5, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 14),
	(103, 5, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(109, 5, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(115, 5, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 11),
	(127, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(133, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(151, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 8),
	(157, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(163, 1, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 14),
	(175, 1, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 8),
	(181, 1, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(187, 2, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(193, 2, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(199, 2, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(205, 2, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 14),
	(217, 3, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 14),
	(223, 3, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 15),
	(235, 3, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(241, 3, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(247, 4, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(253, 4, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(259, 4, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 14),
	(265, 5, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 12),
	(271, 5, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 15),
	(277, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 8),
	(283, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 8),
	(289, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 10),
	(50, 1, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 5),
	(150, 6, STR_TO_DATE('12-1-2016', '%d-%m-%Y'), STR_TO_DATE('14-1-2016', '%d-%m-%Y'), 7),
	(234, 5, STR_TO_DATE('13-1-2016', '%d-%m-%Y'), STR_TO_DATE('15-1-2016', '%d-%m-%Y'), 4),
	(143, 3, STR_TO_DATE('13-1-2016', '%d-%m-%Y'), STR_TO_DATE('15-1-2016', '%d-%m-%Y'), 6),
	(24, 2, STR_TO_DATE('14-1-2016', '%d-%m-%Y'), STR_TO_DATE('16-1-2016', '%d-%m-%Y'), 50),
	(75, 4, STR_TO_DATE('14-1-2016', '%d-%m-%Y'), STR_TO_DATE('16-1-2016', '%d-%m-%Y'), 5),
	(83, 6, STR_TO_DATE('15-1-2016', '%d-%m-%Y'), STR_TO_DATE('17-1-2016', '%d-%m-%Y'), 3),
	(90, 1, STR_TO_DATE('15-1-2016', '%d-%m-%Y'), STR_TO_DATE('17-1-2016', '%d-%m-%Y'), 10),
	(123, 5, STR_TO_DATE('16-1-2016', '%d-%m-%Y'), STR_TO_DATE('18-1-2016', '%d-%m-%Y'), 2),
	(211, 3, STR_TO_DATE('16-1-2016', '%d-%m-%Y'), STR_TO_DATE('18-1-2016', '%d-%m-%Y'), 4),
	(170, 2, STR_TO_DATE('17-1-2016', '%d-%m-%Y'), STR_TO_DATE('19-1-2016', '%d-%m-%Y'), 7),
	(170, 3, STR_TO_DATE('17-1-2016', '%d-%m-%Y'), NULL, 3),
	(170, 5, STR_TO_DATE('18-1-2016', '%d-%m-%Y'), NULL, 1),
	(170, 1, STR_TO_DATE('19-1-2016', '%d-%m-%Y'), NULL, 5),
	(170, 6, STR_TO_DATE('20-1-2016', '%d-%m-%Y'), NULL, 2),
	(170, 4, STR_TO_DATE('21-1-2016', '%d-%m-%Y'), NULL, 4),
	(171, 6, STR_TO_DATE('22-1-2016', '%d-%m-%Y'), NULL, 7);

