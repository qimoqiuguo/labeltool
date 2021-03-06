PRAGMA foreign_keys = ON;
drop table if exists users;
create table users (
  name varchar primary key not null,
  pwd varchar not null
);
drop table if exists datasets;
create table datasets (
  id integer primary key not null,
  name varchar not null,
  data_path varchar not null
);
drop table if exists tasks;
create table tasks (
  task_id integer primary key,
  dataset_id integer not null,
  class_id integer not null unique,
  user_name varchar not null,
  accept varchar not null
);
drop table if exists class;
create table class (
  id integer primary key not null,
  dataset_id integer not null,
  class_name varchar not null,
  FOREIGN KEY(dataset_id) REFERENCES datasets(id) ON UPDATE CASCADE ON DELETE CASCADE

);
drop table if exists image;
create table image (
  id integer primary key not null,
  dataset_id integer not null,
  class_id integer not null,
  image_path varchar not null,
  status varchar not null,
  FOREIGN KEY(class_id) REFERENCES class(id) ON UPDATE CASCADE ON DELETE CASCADE

);
insert into datasets values(1,"SGFood","");
insert into users values("lcy4869@qq.com","123");

insert into tasks values(1,1,1,"lcy4869@qq.com","none");
insert into tasks values(2,1,2,"lcy4869@qq.com","none");
insert into tasks values(3,1,3,"lcy4869@qq.com","none");
insert into tasks values(4,1,4,"lcy4869@qq.com","none");
insert into class values(1,1,"Chinese");
insert into class values(2,1,"Abacus_Seeds");
insert into class values(3,1,"Herbal_Chicken");
insert into class values(4,1,"Ah_boling");
insert into class values(5,1,"Bak_Chang");
insert into class values(6,1,"Bak_Chor_Mee");
insert into class values(7,1,"Bak_Kut_Teh");
insert into class values(8,1,"Ban_Mian");
insert into class values(9,1,"Bao");
insert into class values(10,1,"Beef_Ball_Bee_Hoon");
insert into class values(11,1,"Beef_Kway_Teow");
insert into class values(12,1,"Cantonese_Roasts");
insert into class values(13,1,"Chai_Tow_Kway");
insert into class values(14,1,"Char_Kway_Teow");
insert into class values(15,1,"Chicken_Noodles");
insert into class values(16,1,"Chicken_Rice");
insert into class values(17,1,"Chow_Tau_Foo");
insert into class values(18,1,"Chwee_Jia_Bao");
insert into class values(19,1,"Chwee_Kueh ");
insert into class values(20,1,"Claypot_Rice");
insert into class values(21,1,"Dian_Xin");
insert into class values(22,1,"Drunken_Prawn");
insert into class values(23,1,"Duck_Rice");
insert into class values(24,1,"Fish_Ball");
insert into class values(25,1,"Fish_Head_Bee_Hoon");
insert into class values(26,1,"Fish_Head_Steamboat");
insert into class values(27,1,"Fish_Soup");
insert into class values(28,1,"Foochow_Fish_Ball");
insert into class values(29,1,"Foochow_Oyster_Cake");
insert into class values(30,1,"Fried_Bee_Hoon");
insert into class values(31,1,"Fried_Hokkien_Mee");
insert into class values(32,1,"Hainanese_Kueh");
insert into class values(33,1,"Har_Cheong_Gai");
insert into class values(34,1,"Herbal_Soup");
insert into class values(35,1,"Hor_Fun");
insert into class values(36,1,"Hum_Chim_Peng");
insert into class values(37,1,"Kaya_Toast");
insert into class values(38,1,"Kuay_Chap");
insert into class values(39,1,"Lor_Mai_Fun");
insert into class values(40,1,"Mee_suah");
insert into class values(41,1,"Min_Chiang_Kueh");
insert into class values(42,1,"Muah_Chee");
insert into class values(43,1,"Mutton_Soup");
insert into class values(44,1,"Ngoh_Hiang");
insert into class values(45,1,"Onde_Onde");
insert into class values(46,1,"Or_Luak");
insert into class values(47,1,"Pig's_Brain_Soup");
insert into class values(48,1,"Pig's_Organ_Soup");
insert into class values(49,1,"Pig_Fallopian_Tubes");
insert into class values(50,1,"Popiah");
insert into class values(51,1,"Popiah_Skins");
insert into class values(52,1,"Porridge");
insert into class values(53,1,"Prawn_Mee");
insert into class values(54,1,"Red_Wine_Ginger_Chicken");
insert into class values(55,1,"Soon_Kway");
insert into class values(56,1,"Soya_Bean_Curd");
insert into class values(57,1,"Streamboat");
insert into class values(58,1,"Taiwan_Porridge");
insert into class values(59,1,"Tau_Kwa");
insert into class values(60,1,"Tau_Kwa_Pau");
insert into class values(61,1,"Tau_Sar_Piah");
insert into class values(62,1,"Teochew");
insert into class values(63,1,"Teochew_Kueh");
insert into class values(64,1,"Teochew_Porridge");
insert into class values(65,1,"Ter_Ka");
insert into class values(66,1,"Turtle_Soup");
insert into class values(67,1,"Vegetarian_Bee_Hoon");
insert into class values(68,1,"Wanton_Mee");
insert into class values(69,1,"Yam_Cake");
insert into class values(70,1,"Yong_Tau_Foo");
insert into class values(71,1,"Youtiao");
insert into class values(72,1,"Cross-cultural");
insert into class values(73,1,"Ayam_Buah_Keluak");
insert into class values(74,1,"Black_Pepper_Crab");
insert into class values(75,1,"Cereal_Prawns");
insert into class values(76,1,"Chap_Chye_Rice");
insert into class values(77,1,"Chicken_Curry");
insert into class values(78,1,"Chicken_Wings(BBQ)");
insert into class values(79,1,"Chilli_Crab");
insert into class values(80,1,"Cold_Crab");
insert into class values(81,1,"Crab_Bee_Hoon");
insert into class values(82,1,"Curry_Mee");
insert into class values(83,1,"Cuttlefish_KangKong");
insert into class values(84,1,"Fish_Head_Curry");
insert into class values(85,1,"Fried_Sweet_Potato_Balls");
insert into class values(86,1,"Grilled_Cuttlefish");
insert into class values(87,1,"Grilled_Stingray");
insert into class values(88,1,"Kacang_Phool");
insert into class values(89,1,"Kari_Debal");
insert into class values(90,1,"Kari_Lemak_Ayam");
insert into class values(91,1,"Kueh_Pie_Tee");
insert into class values(92,1,"Laksa");
insert into class values(93,1,"Lor_Mee");
insert into class values(94,1,"Mee_Goreng");
insert into class values(95,1,"Nasi_Briyani");
insert into class values(96,1,"Nasi_Lemak");
insert into class values(97,1,"Oyster_Omelette");
insert into class values(98,1,"Ramen");
insert into class values(99,1,"Rickshaw_Noodles");
insert into class values(100,1,"Roti_John");
insert into class values(101,1,"Sambal_Kangkong");
insert into class values(102,1,"Sambal_Stingray");
insert into class values(103,1,"Satay_Lok_Lok");
insert into class values(104,1,"Tapioca_Cake");
insert into class values(105,1,"Tauhu_Goreng");
insert into class values(106,1,"Tutu_Kueh");
insert into class values(107,1,"kiam_chye_ark");
insert into class values(108,1,"lei_cha_fan");
insert into class values(109,1,"Desserts");
insert into class values(110,1,"Ang_Ku_Kueh");
insert into class values(111,1,"Apom");
insert into class values(112,1,"Bak_Kwa");
insert into class values(113,1,"Cheng_Tng");
insert into class values(114,1,"Custard");
insert into class values(115,1,"Ice_Kacang");
insert into class values(116,1,"Kuih");
insert into class values(117,1,"Or-ni_dessert");
insert into class values(118,1,"Pulut_hitam");
insert into class values(119,1,"Tau_suan");
insert into class values(120,1,"Drink");
insert into class values(121,1,"Bandung");
insert into class values(122,1,"Beer");
insert into class values(123,1,"Chin_Chow_Drink ");
insert into class values(124,1,"Coffe");
insert into class values(125,1,"Fruit_Juice");
insert into class values(126,1,"Lemon_Barley_Drink");
insert into class values(127,1,"Sugar_Cane_Juice");
insert into class values(128,1,"Teh_Halia_Tarik");
insert into class values(129,1,"From_Fruit");
insert into class values(130,1,"Iced_Desserts");
insert into class values(131,1,"Rojak");
insert into class values(132,1,"Sweet_and_Sour_Pork");
insert into class values(133,1,"Fruit");
insert into class values(134,1,"Durian");
insert into class values(135,1,"Jackfruit");
insert into class values(136,1,"Longan");
insert into class values(137,1,"Lychee");
insert into class values(138,1,"Mangosteen");
insert into class values(139,1,"Pineapple");
insert into class values(140,1,"Rambutan");
insert into class values(141,1,"Indian");
insert into class values(142,1,"Appam");
insert into class values(143,1,"Bihun_Goreng");
insert into class values(144,1,"Chapati");
insert into class values(145,1,"Dosa");
insert into class values(146,1,"Mee_Kuah");
insert into class values(147,1,"Murtabak");
insert into class values(148,1,"Nasi_Goreng");
insert into class values(149,1,"Nasi_Padang");
insert into class values(150,1,"Roti_Prata");
insert into class values(151,1,"Satay_bee_hoon");
insert into class values(152,1,"Sup_Kambing");
insert into class values(153,1,"Sup_Tulang");
insert into class values(154,1,"Tandoori");
insert into class values(155,1,"Thosai");
insert into class values(156,1,"Vadai");
insert into class values(157,1,"Malay");
insert into class values(158,1,"Acar");
insert into class values(159,1,"Assam_Pedas");
insert into class values(160,1,"Ayam_Penyet");
insert into class values(161,1,"Bakso");
insert into class values(162,1,"Begedil");
insert into class values(163,1,"Belacan");
insert into class values(164,1,"Curry_Puff");
insert into class values(165,1,"Dendeng_Paru");
insert into class values(166,1,"Epok_Epok");
insert into class values(167,1,"Goreng_Pisang");
insert into class values(168,1,"Gudeg_Putih");
insert into class values(169,1,"Gulai_Daun_Ubi");
insert into class values(170,1,"Ipoh_Hor_Fun");
insert into class values(171,1,"Keropok");
insert into class values(172,1,"Ketupat");
insert into class values(173,1,"Lemak_Siput");
insert into class values(174,1,"Lontong");
insert into class values(175,1,"Lontong_Goreng");
insert into class values(176,1,"Mee_Rebus");
insert into class values(177,1,"Mee_Siam");
insert into class values(178,1,"Otah");
insert into class values(179,1,"Otak-otak");
insert into class values(180,1,"Pecel_Lele");
insert into class values(181,1,"Putu_Piring");
insert into class values(182,1,"Sambal");
insert into class values(183,1,"Satay");
insert into class values(184,1,"Soto_Ayam");
insert into class values(185,1,"Tumpeng");
insert into class values(186,1,"Western_cuisine");
insert into class values(187,1,"Baked_Beans");
insert into class values(188,1,"Bread");
insert into class values(189,1,"Cheese_Fries");
insert into class values(190,1,"Chicken_Chops");
insert into class values(191,1,"Chicken_Pie");
insert into class values(192,1,"Doughnuts");
insert into class values(193,1,"Egg_Tart");
insert into class values(194,1,"Fish_and_Chips");
insert into class values(195,1,"Fried_Chicken_Wings");
insert into class values(196,1,"Hamburger");
insert into class values(197,1,"Hot_Dog");
insert into class values(198,1,"Mixed_Grills");
insert into class values(199,1,"Oxtail_Stew");
insert into class values(200,1,"Pasta");
insert into class values(201,1,"Pies");
insert into class values(202,1,"Pizza");
insert into class values(203,1,"Sausage_Rolls");
insert into class values(204,1,"Steak");
insert into image values(1,1,4,'../static/image/Chinese/Ah_boling/boiling.jpg','unlabelled');
insert into image values(2,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174251.jpg','unlabelled');
insert into image values(3,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174256.jpg','unlabelled');
insert into image values(4,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174331.jpg','unlabelled');
insert into image values(5,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174405.jpg','unlabelled');
insert into image values(6,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174415.jpg','unlabelled');
insert into image values(7,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174444.jpg','unlabelled');
insert into image values(8,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174547.jpg','unlabelled');
insert into image values(9,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_174643.jpg','unlabelled');
insert into image values(10,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_182857.jpg','unlabelled');
insert into image values(11,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_182908.jpg','unlabelled');
insert into image values(12,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_182928.jpg','unlabelled');
insert into image values(13,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_182949.jpg','unlabelled');
insert into image values(14,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183014.jpg','unlabelled');
insert into image values(15,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183030.jpg','unlabelled');
insert into image values(16,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183058.jpg','unlabelled');
insert into image values(17,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183105.jpg','unlabelled');
insert into image values(18,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183110.jpg','unlabelled');
insert into image values(19,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183118.jpg','unlabelled');
insert into image values(20,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183149.jpg','unlabelled');
insert into image values(21,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183210.jpg','unlabelled');
insert into image values(22,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183238.jpg','unlabelled');
insert into image values(23,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183254.jpg','unlabelled');
insert into image values(24,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183324.jpg','unlabelled');
insert into image values(25,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183339.jpg','unlabelled');
insert into image values(26,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183355.jpg','unlabelled');
insert into image values(27,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183408.jpg','unlabelled');
insert into image values(28,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183430.jpg','unlabelled');
insert into image values(29,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183445.jpg','unlabelled');
insert into image values(30,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183447.jpg','unlabelled');
insert into image values(31,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183506.jpg','unlabelled');
insert into image values(32,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183603.jpg','unlabelled');
insert into image values(33,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183626.jpg','unlabelled');
insert into image values(34,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183638.jpg','unlabelled');
insert into image values(35,1,4,'../static/image/Chinese/Ah_boling/IMG_20150831_183710.jpg','unlabelled');
