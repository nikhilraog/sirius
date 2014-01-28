-- Initialization Script

SET foreign_key_checks = 0;

TRUNCATE `course`;
TRUNCATE `department`;
TRUNCATE `instructor`;
TRUNCATE `registered`;
TRUNCATE `section`;
TRUNCATE `student`;
TRUNCATE `utd_user`;
TRUNCATE `utd_user_role`;

SET foreign_key_checks = 1;

-- UTD_USER

INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('1',b'1','Mariam A. Urielle','a73ba7978ade7efe4964c70046f4f902f6d6c16c1ebbc6e0235bad213a67a2a7','jAe4oLuKg6','s1','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('2',b'1','Sean M. Louis','3b1a01acedc5e5bd6e26ce9b9bd7af04562f2b1b1a1bad296137fddf37d93def','q3!atmJNXE','s2','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('3',b'1','Camilla S. Victoria','68cfb8106428b4e4b5c1cb36e77fd3383725d7ab7dd4e15cadf36bfa075b4522','iCky!Xsh3x','s3','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('4',b'1','Mariko C. Stephanie','a82eef4eb5440858a053f8dbdcdc680b832c0ee842d3a8bd42adb0fcf073eeae','rm7XU3gMob','s4','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('5',b'1','Cora W. Abra','e437f850bceb28176f3c73a65a93f782f2c5d23914cf494d40df6b3f25e45ed4','5qWU,eQhw1','s5','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('6',b'1','Joel W. Preston','9d8a2e4cb4f8161e970529d585ba84f56c5688c31a3d90c1aa554f136a22c87e','Z#,O7S!P3K','s6','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('7',b'1','Lamar O. Kelly','b9674201f45006eaffb0174f996ff1720f5d88555bad79536260e36512b83bea','OEPA.3Cgp2','s7','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('8',b'1','Joelle S. Bevis','01c362b8ade256f3d9ab66e029b8503ae1d33baafd1218e51e1bd5623c1959c1','XduO0ghtpP','s8','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('9',b'1','Kyra S. Lacey','d205cb612a0e16aeefdeea2478b7464ba8abad6a5bbabe4e6c2a0a767b531e67','j^VXM6*#AR','s9','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('10',b'1','Gareth L. Garrett','36c36c3e8707658d88c788b486026f44c492fd5d71a27fcda240c24240091570','#qm.Zw5aMF','s10','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('11',b'1','Hector B. Dieter','db6d0b5378a19fe3d945141a3cfc0670c1dbb5a6ae0cf8db2450bcb4a3e9c0b2','83mxWLnXRY','s11','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('12',b'1','Ivory W. Upton','727f92d7eb01f9aacc0c1f7711b88ca89a6493e712c076816319a46873354735',',kivWQf#^w','s12','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('13',b'1','Kellie P. Riley','d5029f9afebb3aa3afbb62ca993f826b0df1085b6af31e1c6c2e6e50af1f4b74','p#1Mc6S8*l','s13','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('14',b'1','Reece H. Lionel','b018ca1c6211fe52c60305d1f5bcaeb3dc21b1d5ef7e44126ca8ebb60cbdc207','F*,fYoQC7b','s14','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('15',b'1','Flynn W. Kevyn','f3e9b562497a61739f0c15c6e5615536aed5f3c21a3b340865cc066d8734769c','FWwiLbs14p','s15','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('16',b'1','Melinda S. Sylvia','3aa857cfaee357a367a55dd753c4581310d95468ee3da8a223788d6bc91fa789','rt7sbG3A52','s16','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('17',b'1','Karen M. Gary','d0270ca3cba09b9db7a2111ff7bd2c61b4b6d068fb0a038fa89c2de668233ab3','R^#IME,!A0','s17','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('18',b'1','Wing O. Kerry','942f34e69f874a1113cb61b459650bc085cc41523f0aa99f6abdfae1ef90ec0d','2!Xd3pFueW','s18','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('19',b'1','Indigo H. Helen','ebfe6e10f24f11117e9e1cd80565cdd220de3154b968d3aecfe95b2bea3ead0b','s1hH3LWGgi','s19','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('20',b'1','Anika D. Lillian','e6deb95c7c892b186d74eb0f3d011930c8df8a2ba03950f6fad074cb543b2173','.ye*Yruqjv','s20','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('21',b'1','Tara H. Carson','298361079f2b176d754f165c5a02def26c4926745a1e8696f050ff10f67fc77e','dDB,87zm53','s21','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('22',b'1','Sheila W. Charde','d5a91b76f3b0e419207871a503ab8f3131ec3a19eb7632f75b9d7fcc611d4935','YSNo,qQr#D','s22','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('23',b'1','Knox A. Donovan','64e2016c5a392854555a8b0dffab5a6da353a1d8824b01d4e15ecc246972e307','J9tnyG,Xm#','s23','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('24',b'1','Gannon R. Gay','7eb1f308fb2ad9950ae266f8b25ec16a61c192260ea344c7ccf83a7e69f57bb7','SX0ZLsbIfV','s24','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('25',b'1','Bell S. Vivian','fdedf3ceafa8ba982adfd1be232a32a2f7ed5cd2685c9f571c3343a083ac65b0','Aw4dJljF1*','s25','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('26',b'1','Willa C. Kelly','76f1c937d13fdd873f38b90320661847ea062d2e06a8850e6b0bd010b2dc5868','kOHGrlZq,1','s26','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('27',b'1','Duncan M. Lucian','18376535b7847f2a9e6008e8b810c3647c5c945186b63385ab348ead0188c5c9','IzwfXv#*!T','s27','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('28',b'1','Jelani S. Savannah','184031b86f634b1a5c0958773f084eca11914f80a0a291cb4c50e923ba2eca44','GYEwezjMZb','s28','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('29',b'1','Ferdinand V. Haviva','581637c534052afe7a696148aac7636d7c555ffb5d8376fdb77b9099c66f8ca5','m#QK!zyN1U','s29','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('30',b'1','Roanna M. Lysandra','5829bc2a2d3f9238baeecbdf78952d71910a8531f13c0f2f34090eef955d0b79','3B7w8Os4Qk','s30','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('31',b'1','Janna P. Aiko','6d8d9d2f73766aeffe7f2d11c2b43e5adf808cda43af12702e63795f250aab3b','9.5qpeQo3D','s31','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('32',b'1','Desiree R. Kenyon','ea589678d90e3cf19a13293737318835cf0743a08fafb700da6289b57e3d01a2','RdykW2.bND','s32','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('33',b'1','Ursula F. Todd','b4c7854701d4dfd2d8b88fd137bcc911b067911b862e328a41f577ec05750b17','QRmAFr#yds','s33','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('34',b'1','Dalton W. Yolanda','9994ecb7e724c6053363c5d56b582d84677bc3adfe3652a339145a5a4bc598ab','loQaJnHGTz','s34','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('35',b'1','Violet H. Jennifer','4676c0a9c19811114036ad9886382224b9a745e8a11800b7543d263aac9f8689','mycW*bYMvF','s35','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('36',b'1','Karleigh W. Candice','25a6609f1a027c8273e7aa01c0832554e7004a2b7347c6190047568621ce9a1d','8AlpfzvXqu','s36','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('37',b'1','Silas C. Baker','85ca6a95d81a86d8b261f9399d0cb187d5da417db48726e4e7dc17dbaaba2f02','GsuYM5m0vE','s37','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('38',b'1','Germane M. Rahim','74c4feee2953b3114111b0f0fb1849bde82f44aa7312402305f7bd177f6c0754','oa^,vzWUCi','s38','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('39',b'1','Jennifer R. Aurora','f53636fd15228af5453688fb629262fb895694e0877399c5444d843c3921b6b8','.BTzvI6#uP','s39','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('40',b'1','Haley B. Buffy','38cb15e2278a6b5c75c6f68a1c1cacd48503f57ad28139adfcd2d1a9a2b89812','6SrWAtwiVX','s40','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('41',b'1','Avram M. Maggy','b04f0502ea0a844a3ed909c49edbabb8759c459eb0acb726c6cfd5909a1d0d93','!hM7iF8tyq','s41','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('42',b'1','Nehru H. Darius','2a089c3e22544d02dc14e932bab8d8068f3ceeda42c480d655059219229cbf2a','Efj8w^Yxh5','s42','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('43',b'1','Sheila M. Ursula','027804070c2fb128cebf7f0b9bc6c0955330a4dee15cd77a562b0216c65078f2','^Ccm,Iw3zr','s43','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('44',b'1','Hop G. Quinlan','e9360d61b925444e5fe21b2580c512794a8e6b661ab7d46e266d8a3a2479295d','tT8*gWlnDp','s44','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('45',b'1','Camden C. Eve','283fac8e54feb1b52a22b36356b9037db152c0680517dd3c0da37594bde1d45f','.l0wtoNbj7','s45','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('46',b'1','Urielle H. Ronan','7ca35bfbbe2b20a7def1fc9ab4c2c6f6ef9fb5340c23d0d72edbed0450899e94','cUWz,YlNgB','s46','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('47',b'1','Harriet W. Iliana','4daa5c9b5d20cd1b52b3476c88744113533e52de827df3c6471d7cc311e5ec00','w,^xQ*nu34','s47','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('48',b'1','Gwendolyn F. Charlotte','52a3e7e4b5ba0e3cc5a14d6d1bba1cb8b2648f7743b2e325bd44b2b87da3b033','ZNCIFfbw9m','s48','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('49',b'1','Marah D. Kaitlin','0cb561185359ac39b74e192cab93b4ebd01741fe6587cd15968a294e025b0c0b','!jEG1MkxKN','s49','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('50',b'1','Jael R. Angela','efb50995554ba398043f0e5624dda54b1527113088b04146802b5b45ffa7e13d','oGXDK3,cLO','s50','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('51',b'1','Casey C. Sophia','77abbf99a37cecae2686a3534c7e9e1dcd0a509f4f2baf958aa96760c79afea6','Btb6ThuKLp','s51','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('52',b'1','Tasha R. Alden','415cc6eedef30e08fece3a2c2d98bf94cc028629bdac67bf130f20fd8f5fe5df','FSU0dnHGJN','s52','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('53',b'1','Neville F. MacKensie','31257adf44078c433b1889924c5812cac6747ddce0e6f62dd7537e30d93e7398','F8tUzIuGP7','s53','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('54',b'1','Samson P. Lael','57ab934ea3dbad870d6fdd90970beff0e7dd665cd73e6d7a01329488c31e5336','65b.kHS1un','s54','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('55',b'1','Libby G. Carly','93a5897685c9b0147e9b99f5968e0f039acf6c5376eda7137b3d226cccb86a43','UqkZhzP#8m','s55','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('56',b'1','Dexter G. Noelani','97425daa550033b7aa6388c958287080abc145abe20c3cf04468b83a102a9afe','kM0FSQiWHN','s56','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('57',b'1','Norman D. Nina','4fc6146df9ba14e025388013f328fca23af61737739f6abe6291bc4eeb26da78','MD6h0AmKtn','s57','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('58',b'1','Linda C. Alisa','5c086a4595806dc730c0da96bddfa010482b23558f42b942392119d6ee202491',',#1l!36ZRK','s58','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('59',b'1','Ava C. Charissa','a14acf94cc7adc00031bca221e60574ea2a0556ab816ea9e2a1581ac13882c53','4HxEAKMrnu','s59','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('60',b'1','Martina M. Faith','f896f285a8a4b2e1c64c4c666f55a36dd9bdd91cff1ce3994afc5bfc3ed1d019','#MsbeaDQgF','s60','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('61',b'1','Astra M. Fulton','b7813c2f8583d572c09da1da63973579ec0cf0d243f73dbc0f010cc55393fe12','5ZOuEIUwBQ','s61','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('62',b'1','Reagan T. Ishmael','148b95b5ff1bd7e6711e71796d76e55574cd0f80f738d5c2a4dcdbd6946f9c40','GcY21m*jtJ','s62','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('63',b'1','Althea F. Rose','99e2e3efd7aae5e507d58db8f6e713457a41bb49fbecf6f360824508b2f1acd8','qXjYGFBnO,','s63','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('64',b'1','Aimee R. Kelly','ca862bc25dc924feddf7b680af6b7c7a1b80beab3017a6002583e45535716032','Zy4WmDNxRo','s64','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('65',b'1','Finn H. Kathleen','35a26856e7395b1b980e5cefe0180ea5e5d707fbc44eabd73e09e59826d16f72','5KxtQk9riw','s65','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('66',b'1','Jemima R. Porter','c8116d7ec43cc56c65e2a2789009ce4dd4fbc4dd99c10f8a2a79a9d9d4870c22','DGM!Ul05t6','s66','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('67',b'1','Sonya V. Daphne','3cf1602c9faa9fbc722210ab7d4c72c97852351d0ecb008df502145cd8c368ee',',nkrvcL*fu','s67','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('68',b'1','Cassandra F. Calista','3587ee78427af38987a168f01dd0fcb27ba57da79dc85c0237ec577e7e417eb0','MVYT^Cy,Gz','s68','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('69',b'1','Allen S. Jakeem','a2ef024354da36a6d4104deea9b0ed6cbd5ee8ac6246c56191d1aa1a5b0b390d','*W8.aEk5gm','s69','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('70',b'1','Sonya P. Mariko','15b7ca556d9591e1ee5b9fde1dece68da6a8d3c4b676e6ca6c53ee438be8a65c','Pity2Dn!w7','s70','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('71',b'1','Emerson B. Raja','add0d8738fb60cce4d55c8ed0fe64d475ac7f7d4c3d0c85378fcd35e4f46c8da','dt63^GRrhu','s71','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('72',b'1','Philip M. Marvin','48ad99f13b5d2e9ff5b818e625ae3a89c165942c40ba6e63aced60ab2976008b','Ge7vz.tUHO','s72','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('73',b'1','Tara B. Galena','c0d14ef63aa2216c86d30d1ea5757b13049dfbb70e0313e4f3b43bb1fe10ccf9','e,w3WmBgTz','s73','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('74',b'1','Mariko F. Nigel','10f0a323d6f3bbad3ec8ebf510d25b46e3b74ffce024b511db623d7bc7c12c8f','rjC58WqtVh','s74','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('75',b'1','Simone R. Clayton','2f2107352c7028926b9e605c426ad83eee88b13901660bdaaf8e7c945e8b85b6','nIlHKPBVqu','s75','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('76',b'1','Thor T. Phyllis','f6d0601ec16a1a40943e2c6e914fd42d3ebf0c113625322a22f6a6fa1b8fbc5e','9!#14nOZ5G','s76','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('77',b'1','Hamish R. Flynn','93dd3d6b46584b7687ceec7cb8ff4e96c2029191959f96d55e35e40927efa154','7Shf1rQI!u','s77','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('78',b'1','Duncan H. Graham','5d7eab89de6d8ccf1fc00780891a994f51f0dd19b97ccc780e763a1a8322f7d9','qt8^*12b.x','s78','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('79',b'1','Alvin J. Vernon','a676537c09480f14a3b0c0eff7386ea291d2527c45238175b2828c960e6b55f3','CLX0OYx1.J','s79','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('80',b'1','Naida C. Priscilla','42a82b071200089afa8b5ea5f1370175b70b3745dddbd30553ba87a687296295','gJo8tfY1X3','s80','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('81',b'1','Melodie C. Tiger','5abf1a34ee5b89592308a286e75d11990da6553e385a8847ccd05d7b991783c4','*P38yNkaxV','s81','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('82',b'1','Chloe O. Byron','9e1a617bb75889b66b31d0b6cc1f81c7fb7e9c3869b581e690db6bf987fb6bd1','^ZMDT#rjm6','s82','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('83',b'1','Serena L. Warren','64613c9454088a78282ef7f6fe307cc94ec38cd13ee1d702483f2626e79ee4fc','7xnJ5d!kSZ','s83','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('84',b'1','Chester V. Marny','17185e0099908669112feccc4d58daee99fc90d86106951ba2323c280daea8d5','qwTce6ZxI#','s84','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('85',b'1','Sydnee B. Hedda','e977832eacfd8781231a35289c5848eb971654b8e34e9a9c6965dca17c071fb5','oQ*NZqE6Ur','s85','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('86',b'1','Tamara B. Demetria','6de74c87e9bac64e5441dedc04a279275a23d05209e24e06981aa3991e4d4e8a','9TIa!cB.Ue','s86','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('87',b'1','Christine S. Hiroko','ded3bc131fe6ae7e295c5b7fc19345e9b1b7d7a5df3d2a243906509e6ed67648','95r4R3,6SJ','s87','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('88',b'1','Sydnee K. Zachary','9338ef4eb89aaa4913e8f37f4bbf8300f71772fc6ecc7d0c9c10025dc1b6ed5f','XhZTQpduAS','s88','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('89',b'1','Iliana N. Julian','d068363a94d8bd44477278dcb62c037b3d56641c926174967df5bfb2de4b4233','2az#qOrVEp','s89','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('90',b'1','Linda L. Indira','7f2f0949b9db89c673ad76812adf26ed9e8198240e4f8f5acd37e8c546bc7205','2L.KAyeUBV','s90','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('91',b'1','Wyoming F. Lamar','20d8e7472005dd26b7647ebee7219604cfb35ecc92eedd27d303c96af7caa5b7','Ctb.yjrxT3','s91','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('92',b'1','Stacey H. Sara','e9b292f77dfe966cd4b2094ebca5460b6f41ba56b187de31754459735a1632aa','K3tmpj9n5F','s92','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('93',b'1','Rama B. Cedric','ae3daec9748b725b0d9a51c05d4602db4e0cc70b73f858cb7535e1066e4c3e74','JZE7eoNMF*','s93','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('94',b'1','Aaron M. Inez','cc14a299163691b64ebf90d14741e180a61a44fe9f2eedaaffc3609f3adfd3c0','xPCZt1dWl9','s94','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('95',b'1','Zenaida E. Chloe','f453f59fbe07a0a44281f328cce991f06ed77e0f4e330ef1244176c6e45a78c0','ZDsqNMKSnG','s95','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('96',b'1','Raphael H. Demetria','e62e392dfb34ccd67b19f5dcf1de0b610c8e0dfacc32bf2a199c8a4ca4ae7eea','vFY.#WD62l','s96','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('97',b'1','Hannah D. Thane','987e3cffb332e754c258a56f56f1b68d0fa9c7ee9f98a42bbedfde61b3a03365','M9zq8yTRaO','s97','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('98',b'1','Pandora C. Idola','be438bbffde165784f025478ade88804a2686c14c766aacced3775282ea569d5','mo7W4dOgSP','s98','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('99',b'1','Charity R. Tyler','8d3918b7664c3c62fc111d87c90b0e65ffb880c653718dcbb501c0d8a8cde040','mrBZ3kEuOH','s99','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('100',b'1','Ross R. Burke','a59083f0c7420fe1346eaf9abb8bf79fb61658810f1bdd6cac016c73542d1050','rslTIDpeAf','s100','0');

INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('101',b'1','Balaji Raghavachari','b1fb225ce0b4037b5bfa907b2774bba3f87bb7a127eb81ed0f6bebea8b6d3099','7l48aNx-w3','rbk','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('102',b'1','R. Chandrasekaran','cb3298d12b37dca1299c07e18b78ce97a1f4f06e5c0f5122ca8dd49017b764e9','JLi!G*ZvHx','chandra','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('103',b'1','Haim Schweitzer','965f251ec566daf202c81d06808baf610dd4d34ecdc9fee616af98a78bb1b091','An,qc#1eqm','haim','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('104',b'1','Jorge Cobb','965f251ec566daf202c81d06808baf610dd4d34ecdc9fee616af98a78bb1b091','An,qc#1eqm','cobb','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('105',b'1','Murat Kantarcioglu','965f251ec566daf202c81d06808baf610dd4d34ecdc9fee616af98a78bb1b091','An,qc#1eqm','muratk','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('106',b'1','Lawrence Chung','965f251ec566daf202c81d06808baf610dd4d34ecdc9fee616af98a78bb1b091','An,qc#1eqm','chung','0');
INSERT INTO `utd_user` (`id`,`active`,`full_name`,`password`,`salt`,`username`,`version`) VALUES ('107',b'1','Rym Zalila-wenkstern','965f251ec566daf202c81d06808baf610dd4d34ecdc9fee616af98a78bb1b091','An,qc#1eqm','rym','0');


-- UTD_USER_ROLE --

INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '1');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '2');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '3');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '4');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '5');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '6');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '7');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '8');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '9');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '10');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '11');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '12');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '13');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '14');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '15');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '16');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '17');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '18');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '19');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '20');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '21');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '22');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '23');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '24');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '25');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '26');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '27');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '28');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '29');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '30');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '31');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '32');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '33');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '34');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '35');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '36');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '37');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '38');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '39');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '40');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '41');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '42');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '43');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '44');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '45');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '46');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '47');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '48');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '49');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '50');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '51');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '52');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '53');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '54');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '55');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '56');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '57');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '58');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '59');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '60');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '61');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '62');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '63');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '64');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '65');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '66');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '67');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '68');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '69');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '70');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '71');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '72');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '73');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '74');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '75');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '76');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '77');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '78');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '79');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '80');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '81');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '82');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '83');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '84');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '85');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '86');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '87');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '88');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '89');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '90');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '91');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '92');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '93');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '94');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '95');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '96');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '97');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '98');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '99');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'STUDENT', '100');

INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'INSTRUCTOR', '101');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'INSTRUCTOR', '102');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'INSTRUCTOR', '103');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'INSTRUCTOR', '104');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'INSTRUCTOR', '105');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'INSTRUCTOR', '106');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'INSTRUCTOR', '107');
INSERT INTO `utd_user_role` (`id`, `role_name`, `utd_user`) VALUES (NULL, 'ADMIN', '101');


-- DEPARTMENT --

INSERT INTO `department` (`department_code`, `collage`, `department_name`, `office_number`, `phone`)
VALUES ('CS', 'Erik Jonsson School of Engineering & Computer Science', 'Computer Science', '4.210', '9728832185');

INSERT INTO `department` (`department_code`, `collage`, `department_name`, `office_number`, `phone`)
VALUES ('EE', 'Erik Jonsson School of Engineering & Computer Science', 'Electrical Engineering', 'ECSN Suite 4.7', '9728836755');


-- COURSE --

INSERT INTO `course` (`course_number`, `course_name`, `description`, `level`, `number_of_hours`, `department`)
VALUES ('CS 6360', 'Database Design', 'Introductory concepts: Data models, ER diagrams. Relational Model, Query Languages: Relational Algebra, Relational Calculus, SQL. Database Design Concepts: Functional dependencies, Normal forms. Data Organization, Index Structures. Query Optimization. Transaction Processing: Concurrency control, Deadlock prevention, Serializability, Recovery. Security issues. Case studies.', '6000', '3', 'CS');

INSERT INTO `course` (`course_number`, `course_name`, `description`, `level`, `number_of_hours`, `department`)
VALUES ('CS 6363', 'Computer Algorithms', 'Recurrence relations, Order notation. Divide and conquer, greedy methods, lower bounds, dynamic programming, linear programming, and inductive algorithms. Graph algorithms: Search techniques: DFS and BFS, Minimum spanning trees, Shortest path problems, Maximum flow problems, Matching, NP-completeness, Reductions.', '6000', '3', 'CS');

INSERT INTO `course` (`course_number`, `course_name`, `description`, `level`, `number_of_hours`, `department`)
VALUES ('CS 6375', 'Machine Learning', 'Decision Trees, Neural Networks, Evaluation of Learning Algorithms, Linear Discriminants, Bayesian and Naive Bayesian Learning, Computational Learning Theory, Nearest Neighbors Algorithms, Reinforcement Learning Adaptive Boosting., Support Vector Machines, Unsupervised learning (clustering).', '6000', '3', 'CS');

INSERT INTO `course` (`course_number`, `course_name`, `description`, `level`, `number_of_hours`, `department`)
VALUES ('CS 4390', 'Computer Networks', 'The design and analysis of computer networks. Topics include the ISO reference model, transmission media, medium-access protocols, LANs, data link protocols, routing, congestion control, internetworking, and connection management.', '4000', '3', 'CS');

INSERT INTO `course` (`course_number`, `course_name`, `description`, `level`, `number_of_hours`, `department`)
VALUES ('CS 6301', 'Secure Cloud Computing', 'Topics will vary.', '6000', '3', 'CS');

INSERT INTO `course` (`course_number`, `course_name`, `description`, `level`, `number_of_hours`, `department`)
VALUES ('CS 6362', 'Advanced Software Architecture and Design', 'Concepts and methodologies for the development, evolution, and reuse of software architecture and design, with an emphasis on object-orientation. Identification, analysis, and synthesis of system data, process, communication, and control components. Decomposition, assignment, and composition of functionality to design elements and connectors. Use of non-functional requirements for analyzing trade-offs and selecting among design alternatives. Transition from requirements to software architecture, design, and to implementation. State of the practice and art.', '6000', '3', 'CS');

INSERT INTO `course` (`course_number`, `course_name`, `description`, `level`, `number_of_hours`, `department`)
VALUES ('CS 6387', 'Advanced Software Engineering Project', 'This course is intended to provide experience in a group project that requires advanced technical solutions, such as distributed multi-tier architectures, component-based technologies, automated software engineering, etc., for developing applications, such as web-based systems, knowledge-based systems, real-time systems, etc. The students will develop and maintain requirements, architecture and detailed design, implementation, and testing and their traceability relationships. Best practices in software engineering will be applied.', '6000', '3', 'CS');

-- INSTRUCTOR --

INSERT INTO `instructor` (`id`, `full_name`, `utd_user`) VALUES (NULL, 'Balaji Raghavachari', '101');
INSERT INTO `instructor` (`id`, `full_name`, `utd_user`) VALUES (NULL, 'R. Chandrasekaran', '102');
INSERT INTO `instructor` (`id`, `full_name`, `utd_user`) VALUES (NULL, 'Haim Schweitzer', '103');
INSERT INTO `instructor` (`id`, `full_name`, `utd_user`) VALUES (NULL, 'Jorge Cobb', '104');
INSERT INTO `instructor` (`id`, `full_name`, `utd_user`) VALUES (NULL, 'Murat Kantarcioglu', '105');
INSERT INTO `instructor` (`id`, `full_name`, `utd_user`) VALUES (NULL, 'Lawrence Chung', '106');
INSERT INTO `instructor` (`id`, `full_name`, `utd_user`) VALUES (NULL, 'Rym Zalila-wenkstern', '107');

-- SECTION --

INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '1', 'Fall', '2012', 'CS 6360', '1', '15');
INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '2', 'Fall', '2012', 'CS 6360', '1', '13');
INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '1', 'Fall', '2012', 'CS 6363', '2', '18');
INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '1', 'Fall', '2012', 'CS 6375', '3', '15');
INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '1', 'Fall', '2012', 'CS 4390', '4', '15');
INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '1', 'Fall', '2012', 'CS 6301', '5', '16');
INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '1', 'Fall', '2012', 'CS 6362', '6', '10');
INSERT INTO `section` (`id`, `section_number`, `semester`, `year`, `course`, `instructor`, `student_count`) VALUES (NULL, '1', 'Fall', '2012', 'CS 6387', '7', '10');

-- STUDENT --

INSERT INTO `student` (`id`, `current_city`, `current_state`, `current_street`, `current_zip`, `current_phone`, `date_of_birth`, `degree`, `first_name`, `last_name`, `middle_name`, `permanent_city`, `permanent_state`, `permanent_street`, `permanent_zip`, `permanent_phone`, `sex`, `ssn`, `student_class`, `version`, `major_department`, `minor_department`, `utd_user`) VALUES
(1, 'Perth Amboy', 'VT', '206-6422 Consequat Avenue', '58744', '(274) 292-8110', '1961-07-17', 'M.S', 'Mariam', 'Andrews', 'Urielle', 'Gilette', 'South Dakota', '156 Pede Av.', '55229', '(747) 257-4386', 'Male', 495, 'Junior', 0, 'CS', NULL, 1),
(2, 'Thiensville', 'KS', '5001 Enim Street', '00653', '(517) 466-9158', '1965-04-23', 'M.S', 'Sean', 'Mercado', 'Louis', 'Odessa', 'Massachusetts', 'P.O. Box 555, 101 Aenean Rd.', '50803', '(421) 888-7936', 'Other', 981, 'Freshman', 0, 'CS', NULL, 2),
(3, 'Syracuse', 'NE', 'P.O. Box 694, 1181 Phasellus Avenue', '59653', '(358) 340-8979', '1983-09-30', 'B.A', 'Camilla', 'Stevenson', 'Victoria', 'Artesia', 'MS', '3309 Lorem Road', '68424', '(869) 794-7734', 'Male', 519, 'Freshman', 0, 'CS', NULL, 3),
(4, 'Lawrence', 'Missouri', '1470 Sed Avenue', '50338', '(775) 536-5675', '1987-11-02', 'B.A', 'Mariko', 'Cruz', 'Stephanie', 'Elsmere', 'Colorado', 'Ap #557-7793 Commodo Rd.', '08836', '(612) 248-6151', 'Male', 410, 'Senior', 0, 'CS', NULL, 4),
(5, 'Huntsville', 'Ohio', '4856 Sodales Road', '09460', '(985) 836-8606', '1983-04-28', 'M.S', 'Cora', 'Wood', 'Abra', 'Blythe', 'Wyoming', 'P.O. Box 631, 8248 Pellentesque Road', '67127', '(213) 949-8194', 'Female', 540, 'Freshman', 0, 'CS', NULL, 5),
(6, 'Corpus Christi', 'MA', '807-5206 Metus. St.', '24233', '(764) 205-7602', '1968-04-09', 'M.S', 'Joel', 'Woods', 'Preston', 'Passaic', 'FL', '825-9069 Malesuada Road', '03047', '(702) 908-6788', 'Female', 910, 'Junior', 0, 'CS', 'EE', 6),
(7, 'Coral Springs', 'Nevada', 'P.O. Box 764, 5499 Cubilia Street', '83652', '(523) 444-1390', '1968-06-27', 'Ph.D.', 'Lamar', 'Oneil', 'Kelly', 'Rosemead', 'California', 'P.O. Box 538, 9303 Auctor, Road', '33685', '(209) 653-7837', 'Other', 163, 'Senior', 0, 'CS', 'EE', 7),
(8, 'Memphis', 'Louisiana', '902-8306 Risus. Avenue', '42635', '(442) 506-1409', '1965-09-25', 'M.S', 'Joelle', 'Sampson', 'Bevis', 'Asheville', 'MN', 'Ap #503-2092 Augue Road', '84019', '(451) 967-1170', 'Other', 67, 'Junior', 0, 'CS', 'EE', 8),
(9, 'Saratoga Springs', 'NY', '235-6943 Et Rd.', '84391', '(400) 568-6323', '1973-04-28', 'M.S', 'Kyra', 'Schmidt', 'Lacey', 'Hawaiian Gardens', 'GA', '915-4597 Ipsum. Ave', '78060', '(471) 849-4728', 'Male', 143, 'Senior', 0, 'CS', 'EE', 9),
(10, 'DeKalb', 'Alabama', 'Ap #440-2085 Sapien. St.', '71953', '(749) 993-6795', '1971-08-15', 'M.S', 'Gareth', 'Le', 'Garrett', 'Milford', 'KY', '550-6182 Dolor. Road', '27881', '(620) 614-1937', 'Male', 901, 'Sophomore', 0, 'CS', NULL, 10),
(11, 'Rock Island', 'MA', '709-6563 Cras Rd.', '80074', '(741) 752-9195', '1965-02-09', 'B.S', 'Hector', 'Barber', 'Dieter', 'Champaign', 'ND', 'P.O. Box 740, 8906 Metus Street', '59934', '(675) 328-2388', 'Male', 436, 'Senior', 0, 'CS', NULL, 11),
(12, 'Chula Vista', 'MT', 'Ap #640-5531 Quam. Avenue', '84322', '(218) 644-3977', '1972-05-23', 'M.S', 'Ivory', 'Workman', 'Upton', 'New Iberia', 'MI', '981-9595 Dignissim. Road', '83706', '(924) 579-8666', 'Male', 926, 'Freshman', 0, 'CS', NULL, 12),
(13, 'Huntington Park', 'Colorado', 'P.O. Box 768, 2616 Mi Ave', '42409', '(186) 113-9053', '1979-06-23', 'M.S', 'Kellie', 'Parker', 'Riley', 'Waltham', 'Virginia', 'P.O. Box 430, 9243 Elit Ave', '81190', '(276) 399-2955', 'Male', 603, 'Sophomore', 0, 'CS', NULL, 13),
(14, 'Wichita', 'AK', '990-8407 Felis. St.', '98883', '(440) 943-3486', '1973-04-03', 'B.S', 'Reece', 'Hahn', 'Lionel', 'Rolla', 'ND', '851-6608 Habitant Av.', '74668', '(108) 151-3000', 'Male', 733, 'Junior', 0, 'CS', NULL, 14),
(15, 'Cedar City', 'Wyoming', '1353 Quis Av.', '86826', '(932) 805-1461', '1983-09-03', 'B.S', 'Flynn', 'Weiss', 'Kevyn', 'Sheridan', 'WV', 'Ap #851-1455 Non St.', '78204', '(236) 142-1892', 'Male', 165, 'Sophomore', 0, 'CS', NULL, 15),
(16, 'Indio', 'New York', '5406 Phasellus St.', '99008', '(932) 659-1248', '1986-09-25', 'M.S', 'Melinda', 'Simpson', 'Sylvia', 'Lawrenceville', 'Arkansas', 'P.O. Box 851, 7935 Dui. Street', '77086', '(928) 678-7025', 'Female', 979, 'Senior', 0, 'CS', NULL, 16),
(17, 'Mankato', 'Pennsylvania', 'Ap #822-2616 Nam Road', '50863', '(473) 443-2651', '1975-07-07', 'Ph.D.', 'Karen', 'Mcpherson', 'Gary', 'Augusta', 'California', 'P.O. Box 741, 7293 Curabitur Rd.', '37191', '(575) 918-1833', 'Male', 725, 'Senior', 0, 'CS', 'EE', 17),
(18, 'Inglewood', 'Delaware', 'P.O. Box 569, 7509 At Street', '65248', '(628) 354-3835', '1988-07-02', 'M.S', 'Wing', 'Orr', 'Kerry', 'Hartland', 'North Dakota', 'P.O. Box 874, 6836 Nec Avenue', '52301', '(920) 384-6772', 'Male', 456, 'Sophomore', 0, 'CS', 'EE', 18),
(19, 'Alpharetta', 'Missouri', '247-6542 Varius Rd.', '90378', '(527) 984-9755', '1990-03-30', 'M.S', 'Indigo', 'Hahn', 'Helen', 'Kennewick', 'Virginia', 'P.O. Box 376, 2135 A, Rd.', '22001', '(629) 603-5780', 'Male', 272, 'Junior', 0, 'CS', 'EE', 19),
(20, 'Yigo', 'NV', 'Ap #636-6414 Quisque Ave', '69848', '(987) 250-7852', '1966-05-16', 'M.S', 'Anika', 'Durham', 'Lillian', 'Austin', 'DC', '4538 Egestas. Av.', '11496', '(484) 100-1787', 'Male', 37, 'Freshman', 0, 'CS', 'EE', 20),
(21, 'Laguna Niguel', 'Illinois', '888-3683 Tellus, Avenue', '84562', '(360) 397-5863', '1975-03-24', 'Ph.D.', 'Tara', 'Hampton', 'Carson', 'Hampton', 'MA', 'Ap #296-6925 Dui, Street', '11573', '(834) 131-6180', 'Female', 7, 'Junior', 0, 'CS', NULL, 21),
(22, 'Frankfort', 'SC', 'Ap #908-6164 Enim. St.', '28436', '(549) 647-8884', '1965-07-02', 'M.S', 'Sheila', 'Williamson', 'Charde', 'Chicago Heights', 'Wyoming', 'Ap #267-8055 Molestie St.', '36972', '(422) 979-7672', 'Female', 700, 'Sophomore', 0, 'CS', NULL, 22),
(23, 'Guthrie', 'MT', 'Ap #764-9486 Nec Ave', '48416', '(627) 428-3462', '1973-12-01', 'M.S', 'Knox', 'Ayala', 'Donovan', 'Valdez', 'SC', '9258 Curabitur Rd.', '54395', '(158) 891-5352', 'Other', 998, 'Freshman', 0, 'CS', NULL, 23),
(24, 'Anchorage', 'HI', '822-5862 Ipsum Ave', '76812', '(165) 963-9806', '1982-11-06', 'Ph.D.', 'Gannon', 'Russell', 'Gay', 'Hackensack', 'New Hampshire', 'P.O. Box 227, 9259 Nec Road', '96108', '(274) 237-1188', 'Male', 326, 'Senior', 0, 'CS', NULL, 24),
(25, 'West Jordan', 'DE', '933-4831 Urna St.', '22731', '(529) 856-5148', '1974-08-23', 'B.A', 'Bell', 'Salinas', 'Vivian', 'Baltimore', 'California', 'Ap #230-6138 Dui St.', '38879', '(409) 356-8706', 'Other', 34, 'Junior', 0, 'CS', NULL, 25),
(26, 'Grand Island', 'Ohio', 'Ap #920-6574 Accumsan Ave', '42713', '(449) 473-4175', '1967-03-19', 'B.S', 'Willa', 'Chen', 'Kelly', 'Forrest City', 'HI', 'P.O. Box 223, 5636 Ante Avenue', '68871', '(211) 694-0125', 'Male', 287, 'Sophomore', 0, 'CS', 'EE', 26),
(27, 'Walnut', 'Kansas', '602 Ac Rd.', '60061', '(320) 958-6307', '1962-09-13', 'B.A', 'Duncan', 'Maxwell', 'Lucian', 'Saint Cloud', 'North Dakota', 'Ap #319-5907 Ornare. Rd.', '86257', '(677) 526-1579', 'Female', 10, 'Sophomore', 0, 'CS', NULL, 27),
(28, 'Tulsa', 'Colorado', '1769 Sed Av.', '24340', '(139) 541-4100', '1962-06-20', 'B.A', 'Jelani', 'Sexton', 'Savannah', 'Wisconsin Dells', 'Oklahoma', '6951 Ante St.', '69793', '(797) 641-7938', 'Male', 973, 'Junior', 0, 'CS', 'EE', 28),
(29, 'Revere', 'California', 'P.O. Box 891, 1407 Ipsum Road', '32626', '(424) 498-2517', '1967-08-01', 'Ph.D.', 'Ferdinand', 'Vargas', 'Haviva', 'Bayamon', 'MS', '6864 Imperdiet, Avenue', '60322', '(965) 404-2303', 'Other', 922, 'Senior', 0, 'CS', 'EE', 29),
(30, 'Burbank', 'HI', '225-489 Nec Rd.', '25056', '(455) 388-1518', '1974-09-27', 'M.S', 'Roanna', 'Miller', 'Lysandra', 'Vincennes', 'TX', '4834 Ligula Road', '57962', '(508) 137-9520', 'Other', 78, 'Freshman', 0, 'CS', 'EE', 30),
(31, 'Alameda', 'Arizona', '275-1145 Elementum Street', '58500', '(541) 629-2667', '1971-08-11', 'B.S', 'Janna', 'Perkins', 'Aiko', 'Laguna Hills', 'Arkansas', '5776 Volutpat. Road', '51201', '(456) 518-3340', 'Female', 888, 'Junior', 0, 'CS', NULL, 31),
(32, 'Rancho Cucamonga', 'VT', '739-7299 Non St.', '85220', '(334) 222-7045', '1964-02-21', 'Ph.D.', 'Desiree', 'Roth', 'Kenyon', 'Ypsilanti', 'MI', '817-2632 Non Rd.', '68489', '(823) 955-7503', 'Other', 89, 'Senior', 0, 'CS', NULL, 32),
(33, 'Kingsport', 'ND', 'Ap #632-9104 Ipsum. Rd.', '04464', '(726) 806-4854', '1976-12-06', 'B.A', 'Ursula', 'Frye', 'Todd', 'Healdsburg', 'NJ', 'P.O. Box 701, 1114 Cursus. St.', '75149', '(865) 671-0575', 'Female', 625, 'Senior', 0, 'CS', 'EE', 33),
(34, 'Oxford', 'Wisconsin', 'Ap #915-5346 Cras Avenue', '67324', '(956) 672-0352', '1976-03-24', 'B.S', 'Dalton', 'Wooten', 'Yolanda', 'Tupelo', 'WV', '965-4146 Sed, Av.', '51085', '(932) 504-6408', 'Male', 399, 'Senior', 0, 'CS', NULL, 34),
(35, 'Missoula', 'Oregon', 'Ap #544-5929 Eu, Street', '50791', '(660) 960-3486', '1968-01-24', 'B.A', 'Violet', 'Houston', 'Jennifer', 'Loudon', 'HI', 'Ap #539-1436 Posuere, Rd.', '02503', '(274) 135-4831', 'Male', 984, 'Junior', 0, 'CS', 'EE', 35),
(36, 'Yigo', 'NJ', 'Ap #622-3894 Augue, Avenue', '98282', '(472) 456-8895', '1981-11-08', 'Ph.D.', 'Karleigh', 'Wagner', 'Candice', 'Lomita', 'PA', 'Ap #236-866 Commodo Ave', '19791', '(264) 510-3098', 'Other', 691, 'Junior', 0, 'CS', 'EE', 36),
(37, 'Port Orford', 'KS', 'Ap #318-9217 Donec Rd.', '49449', '(481) 172-8114', '1978-12-14', 'B.S', 'Silas', 'Cabrera', 'Baker', 'Monroe', 'Maryland', 'Ap #695-8442 Phasellus Avenue', '08258', '(640) 613-4349', 'Female', 681, 'Sophomore', 0, 'CS', NULL, 37),
(38, 'Warner Robins', 'Oregon', '546 Praesent Rd.', '32885', '(376) 344-4193', '1979-04-29', 'B.S', 'Germane', 'Moon', 'Rahim', 'Effingham', 'Utah', 'Ap #546-5655 Vitae Rd.', '87063', '(449) 784-1045', 'Other', 265, 'Junior', 0, 'CS', 'EE', 38),
(39, 'North Pole', 'SC', 'P.O. Box 430, 1469 Curabitur St.', '26820', '(459) 614-6056', '1976-02-19', 'Ph.D.', 'Jennifer', 'Roth', 'Aurora', 'Buena Park', 'UT', '2919 Ac St.', '55737', '(872) 734-2058', 'Male', 279, 'Senior', 0, 'CS', 'EE', 39),
(40, 'Taunton', 'South Dakota', '411-8499 Malesuada Rd.', '73578', '(443) 613-7948', '1988-09-01', 'B.S', 'Haley', 'Browning', 'Buffy', 'Easton', 'West Virginia', '409-3744 Libero Rd.', '06175', '(528) 232-8367', 'Female', 531, 'Senior', 0, 'CS', NULL, 40),
(41, 'Narragansett', 'Georgia', '920-5700 Consectetuer Ave', '27364', '(164) 696-2519', '1984-04-13', 'M.S', 'Avram', 'Manning', 'Maggy', 'Passaic', 'Tennessee', 'Ap #179-1099 Id Rd.', '38593', '(658) 254-4164', 'Female', 438, 'Junior', 0, 'CS', NULL, 41),
(42, 'Keene', 'MN', 'Ap #584-6081 Sed, Av.', '00127', '(650) 189-2921', '1989-12-26', 'B.S', 'Nehru', 'Hoover', 'Darius', 'Cary', 'Oklahoma', 'Ap #937-1098 Fringilla Rd.', '01528', '(278) 368-4506', 'Other', 273, 'Senior', 0, 'CS', NULL, 42),
(43, 'Anaconda', 'Wyoming', '1447 Lorem, Av.', '97543', '(604) 631-8806', '1988-01-25', 'B.A', 'Sheila', 'Miranda', 'Ursula', 'Pasadena', 'Alaska', 'Ap #991-5434 Egestas Road', '93847', '(551) 192-9726', 'Female', 478, 'Freshman', 0, 'CS', 'EE', 43),
(44, 'Woburn', 'OR', '777-5665 Sed Road', '68441', '(233) 612-0585', '1961-02-09', 'B.A', 'Hop', 'Grant', 'Quinlan', 'Homer', 'Missouri', 'Ap #181-5040 Ac Avenue', '73624', '(757) 470-4389', 'Female', 247, 'Senior', 0, 'CS', NULL, 44),
(45, 'Tampa', 'KS', 'P.O. Box 885, 5402 Amet Ave', '55994', '(998) 246-2258', '1989-05-11', 'B.A', 'Camden', 'Cobb', 'Eve', 'Arlington', 'NY', 'Ap #499-9087 Hendrerit. Road', '04299', '(298) 434-6605', 'Other', 810, 'Junior', 0, 'CS', 'EE', 45),
(46, 'Rosemead', 'Nebraska', '353-2849 Maecenas Rd.', '67328', '(937) 757-8716', '1980-05-23', 'Ph.D.', 'Urielle', 'Huff', 'Ronan', 'Peekskill', 'Kentucky', 'P.O. Box 555, 1093 Vestibulum Av.', '18146', '(173) 721-6932', 'Other', 38, 'Sophomore', 0, 'CS', 'EE', 46),
(47, 'Midwest City', 'WV', 'Ap #766-133 At Rd.', '91095', '(339) 377-1753', '1974-09-07', 'B.A', 'Harriet', 'Weaver', 'Iliana', 'Weirton', 'Maine', '377-108 Vestibulum Avenue', '21826', '(256) 524-6090', 'Other', 394, 'Senior', 0, 'CS', 'EE', 47),
(48, 'Radford', 'Kansas', '9129 Ridiculus St.', '32002', '(108) 538-8188', '1963-09-18', 'Ph.D.', 'Gwendolyn', 'Franklin', 'Charlotte', 'Littleton', 'Iowa', '4623 Mus. Rd.', '47758', '(158) 801-7925', 'Male', 918, 'Sophomore', 0, 'CS', 'EE', 48),
(49, 'Salt Lake City', 'FL', 'Ap #652-7971 Sed, Avenue', '69152', '(737) 646-9701', '1981-12-02', 'B.A', 'Marah', 'Deleon', 'Kaitlin', 'Ithaca', 'Ohio', 'Ap #453-4657 Placerat Rd.', '04166', '(803) 540-4205', 'Female', 734, 'Sophomore', 0, 'CS', 'EE', 49),
(50, 'Burlingame', 'MN', 'P.O. Box 178, 5139 Integer St.', '55985', '(657) 382-5544', '1967-02-09', 'Ph.D.', 'Jael', 'Rosario', 'Angela', 'Monrovia', 'Montana', '3927 Arcu. Rd.', '49648', '(203) 931-2876', 'Female', 134, 'Freshman', 0, 'CS', NULL, 50),
(51, 'Newport', 'Rhode Island', 'Ap #727-9558 Nec Rd.', '01789', '(519) 644-4856', '1977-06-24', 'B.A', 'Casey', 'Craig', 'Sophia', 'San Marino', 'NC', 'Ap #825-2181 Dui. Street', '83862', '(382) 837-3129', 'Male', 99, 'Junior', 0, 'CS', NULL, 51),
(52, 'Maywood', 'Kentucky', 'Ap #701-9111 Vulputate Rd.', '96909', '(886) 886-7692', '1966-11-03', 'Ph.D.', 'Tasha', 'Reeves', 'Alden', 'Juneau', 'ME', 'Ap #424-9270 Neque St.', '35945', '(831) 717-4777', 'Female', 710, 'Senior', 0, 'CS', 'EE', 52),
(53, 'Arcadia', 'North Dakota', '402 Orci. St.', '62109', '(982) 253-2391', '1979-03-12', 'B.S', 'Neville', 'Foreman', 'MacKensie', 'Santa Clara', 'Vermont', 'Ap #324-6310 A Rd.', '88298', '(370) 434-6737', 'Other', 490, 'Freshman', 0, 'CS', 'EE', 53),
(54, 'Youngstown', 'Alabama', '645-9072 A Av.', '93567', '(495) 885-8698', '1971-04-08', 'M.S', 'Samson', 'Pate', 'Lael', 'Selma', 'NH', 'Ap #110-3392 Faucibus Road', '96064', '(469) 254-0149', 'Female', 288, 'Freshman', 0, 'CS', 'EE', 54),
(55, 'Savannah', 'Vermont', '194-2471 Felis Street', '67571', '(583) 771-6460', '1985-01-30', 'B.S', 'Libby', 'Gay', 'Carly', 'Independence', 'AZ', 'Ap #789-6084 Blandit Road', '33515', '(198) 870-4164', 'Other', 404, 'Sophomore', 0, 'CS', NULL, 55),
(56, 'Easton', 'WI', '5940 Facilisis, Rd.', '63304', '(159) 299-6533', '1968-02-05', 'Ph.D.', 'Dexter', 'Golden', 'Noelani', 'Toledo', 'DC', '329-3593 In Ave', '86091', '(140) 340-9942', 'Other', 948, 'Senior', 0, 'CS', NULL, 56),
(57, 'Easthampton', 'New Hampshire', '443-8315 Vivamus Ave', '78673', '(908) 847-4812', '1961-12-31', 'Ph.D.', 'Norman', 'Downs', 'Nina', 'Wichita', 'Indiana', 'Ap #648-8583 In St.', '37810', '(818) 665-0572', 'Male', 41, 'Sophomore', 0, 'CS', NULL, 57),
(58, 'Mesquite', 'North Dakota', 'P.O. Box 993, 5679 Nunc. Ave', '61829', '(297) 239-9630', '1961-05-06', 'B.A', 'Linda', 'Chase', 'Alisa', 'Chesapeake', 'Ohio', '6134 At Road', '62145', '(154) 877-7740', 'Male', 983, 'Freshman', 0, 'CS', 'EE', 58),
(59, 'Vincennes', 'MA', 'P.O. Box 690, 3404 Pellentesque Avenue', '40514', '(682) 576-6515', '1963-02-28', 'M.S', 'Ava', 'Clark', 'Charissa', 'Albuquerque', 'New Jersey', 'P.O. Box 524, 8491 Vulputate Rd.', '99504', '(296) 662-2137', 'Other', 837, 'Senior', 0, 'CS', NULL, 59),
(60, 'Manhattan Beach', 'UT', 'P.O. Box 733, 9389 Luctus Street', '31055', '(881) 629-6642', '1974-10-10', 'M.S', 'Martina', 'Myers', 'Faith', 'Cleveland', 'Florida', '871-4176 Non Rd.', '16271', '(153) 773-3476', 'Male', 912, 'Junior', 0, 'CS', 'EE', 60),
(61, 'El Cerrito', 'WV', 'Ap #244-4832 Quis St.', '97735', '(491) 304-5410', '1981-01-16', 'B.A', 'Astra', 'Morales', 'Fulton', 'Gilette', 'Indiana', 'Ap #340-8957 Cursus Road', '26662', '(154) 369-9009', 'Female', 916, 'Freshman', 0, 'CS', NULL, 61),
(62, 'Sierra Madre', 'Nevada', '935-2550 Fringilla Av.', '51762', '(772) 799-9405', '1974-01-16', 'B.S', 'Reagan', 'Tucker', 'Ishmael', 'New York', 'AL', 'Ap #101-800 Ut Av.', '52114', '(997) 686-5361', 'Female', 699, 'Junior', 0, 'CS', 'EE', 62),
(63, 'Rehoboth Beach', 'IL', '3909 Duis Ave', '42005', '(717) 786-7923', '1982-09-12', 'M.S', 'Althea', 'Farmer', 'Rose', 'Bell', 'California', 'P.O. Box 820, 9327 Euismod Rd.', '21527', '(334) 111-7141', 'Female', 226, 'Sophomore', 0, 'CS', NULL, 63),
(64, 'Concord', 'South Carolina', '3360 Dui. Rd.', '95176', '(688) 910-6143', '1975-01-17', 'B.A', 'Aimee', 'Reilly', 'Kelly', 'North Las Vegas', 'ID', '6292 Placerat, St.', '96013', '(772) 573-6350', 'Male', 88, 'Freshman', 0, 'CS', 'EE', 64),
(65, 'Gloucester', 'OH', 'P.O. Box 759, 2936 Convallis St.', '46282', '(360) 449-1859', '1990-10-17', 'B.A', 'Finn', 'Hess', 'Kathleen', 'Oneida', 'HI', 'P.O. Box 174, 5542 Rutrum Street', '52934', '(294) 544-7396', 'Female', 118, 'Senior', 0, 'CS', NULL, 65),
(66, 'North Little Rock', 'Vermont', '4536 Nibh Street', '28202', '(260) 681-4496', '1975-07-29', 'B.A', 'Jemima', 'Richards', 'Porter', 'Charlotte', 'Vermont', '766-8102 Non, Road', '07309', '(579) 251-5012', 'Male', 387, 'Freshman', 0, 'CS', 'EE', 66),
(67, 'Kona', 'VT', '701-7849 Vulputate, Av.', '29920', '(260) 647-6496', '1975-05-11', 'M.S', 'Sonya', 'Velazquez', 'Daphne', 'Gardena', 'CT', '487-7199 Tellus Avenue', '66897', '(157) 605-2459', 'Male', 84, 'Freshman', 0, 'CS', 'EE', 67),
(68, 'Logan', 'Ohio', '663-2315 Nam Road', '68113', '(118) 293-3177', '1977-12-05', 'B.A', 'Cassandra', 'Franklin', 'Calista', 'Palo Alto', 'Tennessee', '271-5053 Magna. Street', '83396', '(405) 608-9257', 'Female', 896, 'Senior', 0, 'CS', NULL, 68),
(69, 'Bakersfield', 'West Virginia', '8189 Vestibulum Rd.', '49931', '(519) 908-6037', '1990-02-28', 'B.S', 'Allen', 'Sexton', 'Jakeem', 'Palm Springs', 'HI', 'P.O. Box 183, 7627 Inceptos Avenue', '46188', '(707) 605-2090', 'Male', 507, 'Senior', 0, 'CS', NULL, 69),
(70, 'Plainfield', 'New Mexico', 'Ap #424-1856 Nullam Rd.', '37546', '(645) 242-2184', '1961-11-12', 'B.S', 'Sonya', 'Phelps', 'Mariko', 'Mobile', 'Illinois', 'P.O. Box 902, 8979 Eu Ave', '26872', '(417) 660-7792', 'Other', 994, 'Sophomore', 0, 'CS', 'EE', 70),
(71, 'Idaho Falls', 'California', 'Ap #327-1427 A Road', '82051', '(468) 362-8287', '1962-07-09', 'M.S', 'Emerson', 'Black', 'Raja', 'Plainfield', 'TX', 'Ap #752-3367 Ipsum St.', '55016', '(485) 647-5762', 'Male', 527, 'Junior', 0, 'CS', NULL, 71),
(72, 'La Jolla', 'Illinois', '9594 Fringilla. Avenue', '44291', '(920) 682-4126', '1968-11-14', 'B.A', 'Philip', 'Meyer', 'Marvin', 'Lancaster', 'NM', 'Ap #441-7012 Eget Ave', '81383', '(303) 996-3089', 'Male', 215, 'Junior', 0, 'CS', NULL, 72),
(73, 'Clarksville', 'CA', '3981 Sit Road', '73413', '(308) 329-8165', '1963-06-15', 'B.A', 'Tara', 'Boyer', 'Galena', 'Shamokin', 'South Carolina', '670-4823 Ornare, St.', '37441', '(859) 189-9054', 'Male', 156, 'Junior', 0, 'CS', NULL, 73),
(74, 'Owensboro', 'NM', '8436 Adipiscing. Av.', '06697', '(333) 859-5935', '1976-04-08', 'B.A', 'Mariko', 'Ferguson', 'Nigel', 'Las Vegas', 'Missouri', '950 Consequat Av.', '61330', '(153) 449-3987', 'Other', 478, 'Sophomore', 0, 'CS', NULL, 74),
(75, 'Irwindale', 'Wisconsin', '7751 Nonummy. St.', '11351', '(236) 474-2495', '1979-05-02', 'B.A', 'Simone', 'Rasmussen', 'Clayton', 'Powell', 'CT', 'Ap #704-1291 Ipsum Road', '83444', '(771) 145-2857', 'Female', 682, 'Freshman', 0, 'CS', 'EE', 75),
(76, 'Bozeman', 'SC', 'P.O. Box 981, 3730 Sed Street', '49534', '(329) 111-8659', '1961-06-03', 'M.S', 'Thor', 'Taylor', 'Phyllis', 'Albany', 'Nebraska', '9681 Consectetuer Av.', '04067', '(690) 591-6882', 'Male', 106, 'Sophomore', 0, 'CS', NULL, 76),
(77, 'Fresno', 'FL', '7416 Fermentum Avenue', '47015', '(943) 664-3720', '1976-10-12', 'B.A', 'Hamish', 'Robertson', 'Flynn', 'Chesapeake', 'Minnesota', 'P.O. Box 526, 9661 Eu, Street', '96212', '(256) 721-1931', 'Male', 497, 'Freshman', 0, 'CS', 'EE', 77),
(78, 'Santa Fe Springs', 'CA', 'P.O. Box 548, 285 Nunc Road', '71064', '(224) 612-3215', '1962-07-31', 'B.S', 'Duncan', 'Hanson', 'Graham', 'Biddeford', 'Michigan', '648-8173 Sed Av.', '39104', '(429) 942-2638', 'Other', 752, 'Senior', 0, 'CS', 'EE', 78),
(79, 'Christiansted', 'Delaware', 'Ap #839-5279 Cras Rd.', '27980', '(819) 662-7273', '1969-01-27', 'Ph.D.', 'Alvin', 'Joseph', 'Vernon', 'Covington', 'CA', '440-2003 Augue Ave', '69940', '(760) 422-1594', 'Other', 167, 'Freshman', 0, 'CS', 'EE', 79),
(80, 'Rapid City', 'WI', '490-221 Vulputate St.', '72932', '(495) 563-6418', '1975-10-21', 'B.S', 'Naida', 'Clements', 'Priscilla', 'Jeannette', 'Oregon', 'Ap #783-7601 Natoque Ave', '40373', '(778) 332-9837', 'Male', 440, 'Freshman', 0, 'CS', 'EE', 80),
(81, 'Arlington', 'MT', 'P.O. Box 666, 7376 Pede Av.', '99283', '(161) 511-7077', '1982-03-17', 'Ph.D.', 'Melodie', 'Chen', 'Tiger', 'Philadelphia', 'MA', 'P.O. Box 799, 177 Cursus Street', '79763', '(725) 337-9346', 'Male', 101, 'Sophomore', 0, 'CS', NULL, 81),
(82, 'LaGrange', 'Oklahoma', '9416 Orci. St.', '22226', '(780) 701-8082', '1972-01-07', 'B.S', 'Chloe', 'Ochoa', 'Byron', 'Vicksburg', 'Idaho', 'Ap #404-8933 Iaculis Avenue', '51578', '(268) 869-7689', 'Other', 732, 'Junior', 0, 'CS', NULL, 82),
(83, 'Sutter Creek', 'Delaware', 'Ap #170-8296 Orci Avenue', '77146', '(261) 893-7278', '1974-09-29', 'B.A', 'Serena', 'Little', 'Warren', 'Port St. Lucie', 'Colorado', 'Ap #689-8989 Elit, St.', '46383', '(544) 448-0769', 'Female', 976, 'Sophomore', 0, 'CS', NULL, 83),
(84, 'Lima', 'North Carolina', '794-4874 Amet Avenue', '23799', '(790) 777-5255', '1982-06-03', 'B.S', 'Chester', 'Vincent', 'Marny', 'Pendleton', 'IA', '4438 Orci Street', '56126', '(295) 263-9254', 'Female', 356, 'Freshman', 0, 'CS', NULL, 84),
(85, 'Mequon', 'MD', '4333 Tellus St.', '00993', '(531) 966-5988', '1965-02-12', 'B.A', 'Sydnee', 'Bonner', 'Hedda', 'New Iberia', 'New Jersey', 'P.O. Box 224, 4811 Cum St.', '15608', '(240) 117-5164', 'Male', 150, 'Sophomore', 0, 'CS', NULL, 85),
(86, 'Zanesville', 'HI', '8144 Urna. St.', '89940', '(687) 503-5551', '1976-06-28', 'M.S', 'Tamara', 'Battle', 'Demetria', 'Medford', 'MT', '4892 Donec Av.', '03607', '(766) 517-8623', 'Male', 198, 'Junior', 0, 'CS', 'EE', 86),
(87, 'Grand Island', 'Pennsylvania', 'Ap #864-2271 Mauris Rd.', '99062', '(552) 651-8750', '1962-01-31', 'B.S', 'Christine', 'Shelton', 'Hiroko', 'Mechanicville', 'District of Columbia', '165-9221 Fermentum Ave', '08670', '(123) 774-4595', 'Other', 525, 'Freshman', 0, 'CS', NULL, 87),
(88, 'Cody', 'NH', '9428 A Rd.', '57402', '(453) 206-7043', '1969-07-11', 'M.S', 'Sydnee', 'Kaufman', 'Zachary', 'Mount Vernon', 'WA', '3197 Auctor Rd.', '78228', '(564) 875-4459', 'Male', 785, 'Junior', 0, 'CS', NULL, 88),
(89, 'Wisconsin Rapids', 'Nevada', '7026 Nisi. Road', '64419', '(907) 685-0141', '1968-11-30', 'M.S', 'Iliana', 'Norton', 'Julian', 'Buffalo', 'ME', 'P.O. Box 735, 1718 Nunc Rd.', '36355', '(362) 848-9521', 'Male', 502, 'Freshman', 0, 'CS', 'EE', 89),
(90, 'Union City', 'NC', 'Ap #983-4569 Dignissim. St.', '42405', '(561) 163-1825', '1974-09-09', 'M.S', 'Linda', 'Larson', 'Indira', 'Lowell', 'CA', '774-7443 Tristique Street', '10326', '(987) 950-0326', 'Female', 68, 'Freshman', 0, 'CS', NULL, 90),
(91, 'Falls Church', 'NH', 'Ap #975-9122 Sagittis St.', '49682', '(285) 353-6651', '1967-10-20', 'B.A', 'Wyoming', 'Franks', 'Lamar', 'East Rutherford', 'DE', '401-2650 Aliquet Road', '82564', '(850) 104-6608', 'Other', 829, 'Freshman', 0, 'CS', 'EE', 91),
(92, 'San Antonio', 'MI', 'P.O. Box 896, 9778 Libero Avenue', '94864', '(790) 619-0606', '1987-01-13', 'B.A', 'Stacey', 'Herrera', 'Sara', 'Ogdensburg', 'Indiana', 'P.O. Box 372, 1958 Magna. St.', '25180', '(870) 499-4501', 'Male', 740, 'Junior', 0, 'CS', 'EE', 92),
(93, 'Mission Viejo', 'Texas', 'Ap #729-9211 Vulputate, Av.', '68419', '(675) 426-9378', '1972-01-25', 'B.A', 'Rama', 'Butler', 'Cedric', 'Green River', 'AK', 'Ap #858-8329 Cursus Avenue', '47066', '(642) 168-9068', 'Male', 730, 'Sophomore', 0, 'CS', NULL, 93),
(94, 'Tuscaloosa', 'Maryland', 'Ap #742-3341 Tellus. St.', '32548', '(497) 227-0999', '1970-07-05', 'B.S', 'Aaron', 'Mcbride', 'Inez', 'Tustin', 'TN', '345-2360 Integer Avenue', '64602', '(109) 227-2271', 'Female', 986, 'Junior', 0, 'CS', 'EE', 94),
(95, 'Compton', 'Oregon', '4359 Vestibulum, Avenue', '17639', '(448) 547-1740', '1971-02-18', 'M.S', 'Zenaida', 'English', 'Chloe', 'Farrell', 'NH', 'P.O. Box 347, 4370 Magnis St.', '41670', '(128) 565-5406', 'Other', 34, 'Freshman', 0, 'CS', 'EE', 95),
(96, 'Newburyport', 'MD', '125-3272 Erat Rd.', '78319', '(941) 186-3461', '1984-07-31', 'B.A', 'Raphael', 'Huber', 'Demetria', 'Idaho Springs', 'NC', '2201 Nec, St.', '79310', '(315) 523-1587', 'Male', 667, 'Freshman', 0, 'CS', NULL, 96),
(97, 'Charleston', 'TN', 'Ap #948-4545 Dictum Avenue', '18376', '(146) 714-7052', '1967-06-08', 'B.S', 'Hannah', 'Delaney', 'Thane', 'Mankato', 'Oregon', 'Ap #602-957 Diam Rd.', '79245', '(382) 996-7020', 'Male', 8, 'Freshman', 0, 'CS', 'EE', 97),
(98, 'Farrell', 'Kentucky', '8924 Erat Avenue', '88868', '(165) 776-5722', '1975-01-18', 'B.S', 'Pandora', 'Castillo', 'Idola', 'Chino', 'Alabama', '878-9426 Adipiscing St.', '77436', '(502) 378-7409', 'Male', 560, 'Sophomore', 0, 'CS', NULL, 98),
(99, 'Huntington Park', 'RI', '523-6730 Nunc Road', '25475', '(464) 924-9199', '1977-12-15', 'B.S', 'Charity', 'Roberson', 'Tyler', 'Mount Pleasant', 'OH', '7468 Vehicula. St.', '50397', '(934) 437-8287', 'Female', 114, 'Sophomore', 0, 'CS', NULL, 99),
(100, 'North Pole', 'TN', '3010 Ac Rd.', '16798', '(670) 891-2912', '1975-04-20', 'B.S', 'Ross', 'Reed', 'Burke', 'Ogden', 'CA', 'P.O. Box 284, 3103 Nullam St.', '39838', '(418) 200-4926', 'Female', 459, 'Freshman', 0, 'CS', NULL, 100);

-- REGISTERED --
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '1');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '2');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '3');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '4');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '5');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '6');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '7');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '8');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '9');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '10');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '11');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '12');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '13');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '14');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '1', '15');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '16');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '17');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '18');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '19');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '20');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '21');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '22');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '23');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '24');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '25');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '26');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '27');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '2', '28');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '1');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '2');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '3');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '4');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '5');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '28');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '29');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '30');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '31');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '32');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '33');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '34');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '35');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '36');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '37');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '38');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '39');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '3', '40');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '1');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '2');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '3');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '4');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '5');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '41');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '42');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '43');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '44');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '45');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '46');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '47');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '48');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '49');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '4', '50');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '51');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '52');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '53');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '54');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '55');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '56');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '57');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '58');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '59');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '60');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '61');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '62');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '63');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '64');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '5', '65');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '66');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '67');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '68');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '69');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '70');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '71');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '72');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '73');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '74');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '75');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '76');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '77');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '78');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '79');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '80');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '6', '81');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '81');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '82');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '83');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '84');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '85');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '86');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '87');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '88');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '89');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '7', '90');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '91');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '92');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '93');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '94');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '95');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '96');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '97');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '98');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '99');
INSERT INTO `registered` (`letter_grade`, `numeric_grade`, `section_id`, `student_id`) VALUES (NULL, NULL, '8', '100');

