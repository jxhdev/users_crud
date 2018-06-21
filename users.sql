-- DROP DATABASE IF EXISTS users_crud;
-- CREATE DATABASE users_crud;
\c users_crud
-- DROP TABLE IF EXISTS CASCADE users;
-- DROP TABLE IF EXISTS CASCADE messages;
-- DROP TABLE IF EXISTS tags;
-- DROP TABLE IF EXISTS messages_tags;


-- create table users (
-- 	id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(200),
-- 	last_name VARCHAR(200),
-- 	email VARCHAR(200),
-- 	cc_number VARCHAR(200),
-- 	gender VARCHAR(200),
-- 	avatar_url VARCHAR(200)
-- );

-- CREATE TABLE messages (
--   id SERIAL PRIMARY KEY,
--   content VARCHAR(500),
--   userID INT,
--   FOREIGN KEY (userID) REFERENCES users(id)
-- );

-- CREATE TABLE tags (
-- 	id SERIAL PRIMARY KEY,
-- 	content VARCHAR(80)
-- );

-- CREATE TABLE messages_tags(
-- 	id SERIAL PRIMARY KEY,
-- 	message_id INT, FOREIGN KEY (message_id) REFERENCES messages(id) ON DELETE CASCADE,
-- 	tagID INT, FOREIGN KEY (tagID) REFERENCES tags(id) ON DELETE CASCADE
-- );

insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Franciska', 'Best', 'fbest0@joomla.org', '201900518399173', 'Female', 'https://robohash.org/veltemporaquibusdam.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Roddie', 'Eighteen', 'reighteen1@webeden.co.uk', '5100134027545552', 'Male', 'https://robohash.org/quiquiconsequatur.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Zahara', 'Phillins', 'zphillins2@apache.org', '3589299137866472', 'Female', 'https://robohash.org/saepererumqui.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Matthiew', 'Vosper', 'mvosper3@earthlink.net', '3588094660394021', 'Male', 'https://robohash.org/evenietplaceatnulla.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Vin', 'Pinniger', 'vpinniger4@npr.org', '5602211589779101', 'Female', 'https://robohash.org/nullaaperiamvoluptatem.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Tommie', 'Iorillo', 'tiorillo5@hibu.com', '5533529575528271', 'Female', 'https://robohash.org/expeditatemporibusillo.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Shellysheldon', 'Ren', 'sren6@oracle.com', '3549900843380034', 'Male', 'https://robohash.org/nonvelvoluptas.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Cedric', 'Braghini', 'cbraghini7@cpanel.net', '3534660086139102', 'Male', 'https://robohash.org/estcupatevoluptatem.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ('Jonie', 'Farebrother', 'jfarebrother8@loc.gov', '3573027894335953', 'Female', 'https://robohash.org/laudantiumeummolestias.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Dagny', 'Kedwell', 'dkedwell9@typepad.com', '5602259441879700', 'Male', 'https://robohash.org/velfugiatiure.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Worth', 'Gehrts', 'wgehrtsa@google.com.br', '3579683382715637', 'Male', 'https://robohash.org/suntmaioressapiente.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Lorrayne', 'Zahor', 'lzahorb@archive.org', '4913392763383386', 'Female', 'https://robohash.org/ipsamvoluptatemvoluptas.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Alika', 'Capewell', 'acapewellc@google.cn', '376422780682227', 'Female', 'https://robohash.org/velitevenietest.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Francesco', 'Gealle', 'fgealled@seesaa.net', '30491743929320', 'Male', 'https://robohash.org/erroretaccusamus.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Reinold', 'Mityashev', 'rmityasheve@multiply.com', '3550916318721565', 'Male', 'https://robohash.org/dolorautcum.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Muire', 'Doni', 'mdonif@samsung.com', '3541581480748515', 'Female', 'https://robohash.org/voluptasinventorequia.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Isaak', 'Johann', 'ijohanng@so-net.ne.jp', '3528972163135996', 'Male', 'https://robohash.org/ipsamquiaenim.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Andrey', 'McNuff', 'amcnuffh@ted.com', '3557991206015084', 'Male', 'https://robohash.org/velitsunttenetur.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Pascale', 'Berlin', 'pberlini@shinystat.com', '5168417507024100', 'Male', 'https://robohash.org/insimiliqueeum.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Helaina', 'Roncelli', 'hroncellij@blogtalkradio.com', '201791854379295', 'Female', 'https://robohash.org/etsimiliqueomnis.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Sarina', 'Thickin', 'sthickink@time.com', '5147025770047900', 'Female', 'https://robohash.org/veladipisciet.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Othella', 'Fried', 'ofriedl@indiatimes.com', '4175004590724152', 'Female', 'https://robohash.org/utsedcorrupti.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Dalenna', 'Piercey', 'dpierceym@google.co.jp', '5100145943875287', 'Female', 'https://robohash.org/repudiandaequaeea.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Mersey', 'Donoghue', 'mdonoghuen@rambler.ru', '5002358063600471', 'Female', 'https://robohash.org/inventoreautarchitecto.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Hastings', 'Hoonahan', 'hhoonahano@google.com.hk', '5010123412829399', 'Male', 'https://robohash.org/etenimconsequatur.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Corey', 'Skade', 'cskadep@gov.uk', '6382229096293980', 'Female', 'https://robohash.org/ximeearum.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Myrta', 'Minette', 'mminetteq@mail.ru', '060452693596923069', 'Female', 'https://robohash.org/doloremquefugiatsimilique.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Marlena', 'Yeoman', 'myeomanr@shop-pro.jp', '3532700428136267', 'Female', 'https://robohash.org/consequaturmolestiaeneque.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Meryl', 'Schwerin', 'mschwerins@prnewswire.com', '4175000992841859', 'Male', 'https://robohash.org/temporeaharum.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Karla', 'Writtle', 'kwrittlet@ifeng.com', '6767349460047467505', 'Female', 'https://robohash.org/estutsunt.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Hieronymus', 'O''Kuddyhy', 'hokuddyhyu@ibm.com', '3547518201335929', 'Male', 'https://robohash.org/quasisuntenim.jpg?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Abram', 'O'' Molan', 'aomolanv@pen.io', '30253314918268', 'Male', 'https://robohash.org/laborumipsavoluptatem.bmp?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Petronella', 'Puncher', 'ppuncherw@privacy.gov.au', '5602236936206649', 'Female', 'https://robohash.org/quisitet.png?size=100x100&set=set1');
insert into users (first_name, last_name, email, cc_number, gender, avatar_url) values ( 'Sapphira', 'Lesor', 'slesorx@over-blog.com', '3579960176860518', 'Female', 'https://robohash.org/autnumquamnon.png?size=100x100&set=set1');



insert into messages (content, userID) values ('Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 6);
insert into messages (content, userID) values ('Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 11);
insert into messages (content, userID) values ('Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 9);
insert into messages (content, userID) values ('Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 5);
insert into messages (content, userID) values ('Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 16);
insert into messages (content, userID) values ('Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 3);
insert into messages (content, userID) values ('Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 17);
insert into messages (content, userID) values ('Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 12);
insert into messages (content, userID) values ('Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 19);
insert into messages (content, userID) values ( 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 19);
insert into messages (content, userID) values ( 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 7);
insert into messages (content, userID) values ( 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', 5);
insert into messages (content, userID) values ( 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 7);
insert into messages (content, userID) values ( 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 16);
insert into messages (content, userID) values ( 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 9);
insert into messages (content, userID) values ( 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 9);
insert into messages (content, userID) values ( 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 17);
insert into messages (content, userID) values ( 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.', 19);
insert into messages (content, userID) values ( 'Pellentesque at nulla. Suspendisse potenti.', 4);
insert into messages (content, userID) values ( 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 13);
insert into messages (content, userID) values ( 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 19);
insert into messages (content, userID) values ( 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 4);
insert into messages (content, userID) values ( 'In congue.', 8);
insert into messages (content, userID) values ( 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 13);
insert into messages (content, userID) values ( 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 1);
insert into messages (content, userID) values ( 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 12);
insert into messages (content, userID) values ( 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 18);
insert into messages (content, userID) values ( 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.', 14);
insert into messages (content, userID) values ( 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 15);
insert into messages (content, userID) values ( 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 16);
insert into messages (content, userID) values ( 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 4);
insert into messages (content, userID) values ( 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 14);
insert into messages (content, userID) values ( 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', 6);
insert into messages (content, userID) values ( 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 18);
insert into messages (content, userID) values ( 'Donec vitae nisi.', 13);
insert into messages (content, userID) values ( 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 17);
insert into messages (content, userID) values ( 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', 15);
insert into messages (content, userID) values ( 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 20);
insert into messages (content, userID) values ( 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 6);
insert into messages (content, userID) values ( 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 13);
insert into messages (content, userID) values ( 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 17);
insert into messages (content, userID) values ( 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 4);
insert into messages (content, userID) values ( 'Proin risus.', 8);
insert into messages (content, userID) values ( 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 9);
insert into messages (content, userID) values ( 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 2);
insert into messages (content, userID) values ( 'Pellentesque ultrices mattis odio. Donec vitae nisi.', 15);
insert into messages (content, userID) values ( 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 19);
insert into messages (content, userID) values ( 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 16);
insert into messages (content, userID) values ( 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 17);
insert into messages (content, userID) values ( 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 15);

insert into tags (content) values ('full-range');
insert into tags (content) values ('Decentralized');
insert into tags (content) values ('Adaptive');
insert into tags (content) values ('De-engineered');
insert into tags (content) values ('initiative');
insert into tags (content) values ('coherent');
insert into tags (content) values ('encompassing');
insert into tags (content) values ('emulation');
insert into tags (content) values ('Proactive');
insert into tags (content) values ('high-level');
insert into tags (content) values ('alliance');
insert into tags (content) values ('secondary');
insert into tags (content) values ('challenge');
insert into tags (content) values ('Monitored');
insert into tags (content) values ('Enterprise-wide');
insert into tags (content) values ('approach');
insert into tags (content) values ('Fully-configurable');
insert into tags (content) values ('help-desk');
insert into tags (content) values ('User-centric');
insert into tags (content) values ('Multi-lateral');

insert into messages_tags (message_id, tag_id) values (38, 11);
insert into messages_tags (message_id, tag_id) values (36, 14);
insert into messages_tags (message_id, tag_id) values (10, 16);
insert into messages_tags (message_id, tag_id) values (21, 5);
insert into messages_tags (message_id, tag_id) values (35, 12);
insert into messages_tags (message_id, tag_id) values (11, 17);
insert into messages_tags (message_id, tag_id) values (39, 16);
insert into messages_tags (message_id, tag_id) values (44, 3);
insert into messages_tags (message_id, tag_id) values (19, 15);
insert into messages_tags (message_id, tag_id) values (9, 11);
insert into messages_tags (message_id, tag_id) values (12, 8);
insert into messages_tags (message_id, tag_id) values (25, 3);
insert into messages_tags (message_id, tag_id) values (2, 6);
insert into messages_tags (message_id, tag_id) values (25, 2);
insert into messages_tags (message_id, tag_id) values (46, 14);
insert into messages_tags (message_id, tag_id) values (17, 1);
insert into messages_tags (message_id, tag_id) values (38, 16);
insert into messages_tags (message_id, tag_id) values (22, 5);
insert into messages_tags (message_id, tag_id) values (47, 17);
insert into messages_tags (message_id, tag_id) values (48, 19);
insert into messages_tags (message_id, tag_id) values (1, 14);
insert into messages_tags (message_id, tag_id) values (2, 13);
insert into messages_tags (message_id, tag_id) values (3, 4);
insert into messages_tags (message_id, tag_id) values (4, 17);
insert into messages_tags (message_id, tag_id) values (5, 19);
insert into messages_tags (message_id, tag_id) values (6, 16);
insert into messages_tags (message_id, tag_id) values (7, 8);
insert into messages_tags (message_id, tag_id) values (8, 4);
insert into messages_tags (message_id, tag_id) values (9, 12);
insert into messages_tags (message_id, tag_id) values (10, 5);
insert into messages_tags (message_id, tag_id) values (11, 18);
insert into messages_tags (message_id, tag_id) values (12, 2);
insert into messages_tags (message_id, tag_id) values (13, 16);
insert into messages_tags (message_id, tag_id) values (14, 10);
insert into messages_tags (message_id, tag_id) values (15, 12);
insert into messages_tags (message_id, tag_id) values (16, 9);
insert into messages_tags (message_id, tag_id) values (17, 10);
insert into messages_tags (message_id, tag_id) values (18, 11);
insert into messages_tags (message_id, tag_id) values (19, 10);
insert into messages_tags (message_id, tag_id) values (20, 8);
insert into messages_tags (message_id, tag_id) values (21, 9);
insert into messages_tags (message_id, tag_id) values (22, 15);
insert into messages_tags (message_id, tag_id) values (23, 13);
insert into messages_tags (message_id, tag_id) values (24, 1);
insert into messages_tags (message_id, tag_id) values (25, 20);
insert into messages_tags (message_id, tag_id) values (26, 16);
insert into messages_tags (message_id, tag_id) values (27, 7);
insert into messages_tags (message_id, tag_id) values (28, 3);
insert into messages_tags (message_id, tag_id) values (29, 19);
insert into messages_tags (message_id, tag_id) values (30, 8);
insert into messages_tags (message_id, tag_id) values (31, 20);
insert into messages_tags (message_id, tag_id) values (32, 1);
insert into messages_tags (message_id, tag_id) values (33, 2);
insert into messages_tags (message_id, tag_id) values (34, 9);
insert into messages_tags (message_id, tag_id) values (35, 8);
insert into messages_tags (message_id, tag_id) values (36, 5);
insert into messages_tags (message_id, tag_id) values (37, 17);
insert into messages_tags (message_id, tag_id) values (38, 1);
insert into messages_tags (message_id, tag_id) values (39, 15);
insert into messages_tags (message_id, tag_id) values (40, 7);
insert into messages_tags (message_id, tag_id) values (41, 20);
insert into messages_tags (message_id, tag_id) values (42, 15);
insert into messages_tags (message_id, tag_id) values (43, 10);
insert into messages_tags (message_id, tag_id) values (44, 6);
insert into messages_tags (message_id, tag_id) values (45, 3);
insert into messages_tags (message_id, tag_id) values (46, 7);
insert into messages_tags (message_id, tag_id) values (47, 12);
insert into messages_tags (message_id, tag_id) values (48, 20);
insert into messages_tags (message_id, tag_id) values (49, 9);
insert into messages_tags (message_id, tag_id) values (1, 7);
insert into messages_tags (message_id, tag_id) values (2, 13);
insert into messages_tags (message_id, tag_id) values (3, 18);
insert into messages_tags (message_id, tag_id) values (4, 1);
insert into messages_tags (message_id, tag_id) values (5, 11);
insert into messages_tags (message_id, tag_id) values (6, 18);
insert into messages_tags (message_id, tag_id) values (7, 20);
insert into messages_tags (message_id, tag_id) values (8, 14);
insert into messages_tags (message_id, tag_id) values (9, 16);
insert into messages_tags (message_id, tag_id) values (10, 19);
insert into messages_tags (message_id, tag_id) values (11, 4);
insert into messages_tags (message_id, tag_id) values (12, 18);
insert into messages_tags (message_id, tag_id) values (13, 17);
insert into messages_tags (message_id, tag_id) values (14, 9);
insert into messages_tags (message_id, tag_id) values (15, 19);
insert into messages_tags (message_id, tag_id) values (16, 5);
insert into messages_tags (message_id, tag_id) values (17, 11);
insert into messages_tags (message_id, tag_id) values (18, 6);
insert into messages_tags (message_id, tag_id) values (19, 16);
insert into messages_tags (message_id, tag_id) values (20, 20);
insert into messages_tags (message_id, tag_id) values (21, 19);
insert into messages_tags (message_id, tag_id) values (22, 12);
insert into messages_tags (message_id, tag_id) values (23, 20);
insert into messages_tags (message_id, tag_id) values (24, 19);
insert into messages_tags (message_id, tag_id) values (25, 4);
insert into messages_tags (message_id, tag_id) values (26, 4);
insert into messages_tags (message_id, tag_id) values (27, 14);
insert into messages_tags (message_id, tag_id) values (28, 20);
insert into messages_tags (message_id, tag_id) values (29, 5);
insert into messages_tags (message_id, tag_id) values (30, 5);
insert into messages_tags (message_id, tag_id) values (31, 8);
insert into messages_tags (message_id, tag_id) values (32, 18);
insert into messages_tags (message_id, tag_id) values (33, 20);
insert into messages_tags (message_id, tag_id) values (34, 19);
insert into messages_tags (message_id, tag_id) values (35, 16);
insert into messages_tags (message_id, tag_id) values (36, 8);
insert into messages_tags (message_id, tag_id) values (37, 15);
insert into messages_tags (message_id, tag_id) values (38, 6);
insert into messages_tags (message_id, tag_id) values (39, 15);
insert into messages_tags (message_id, tag_id) values (40, 5);
insert into messages_tags (message_id, tag_id) values (41, 20);
insert into messages_tags (message_id, tag_id) values (42, 13);
insert into messages_tags (message_id, tag_id) values (43, 13);
insert into messages_tags (message_id, tag_id) values (44, 12);
insert into messages_tags (message_id, tag_id) values (45, 20);
insert into messages_tags (message_id, tag_id) values (46, 1);
insert into messages_tags (message_id, tag_id) values (47, 15);
insert into messages_tags (message_id, tag_id) values (48, 20);
insert into messages_tags (message_id, tag_id) values (49, 16);
insert into messages_tags (message_id, tag_id) values (50, 10);
insert into messages_tags (message_id, tag_id) values (1, 7);
insert into messages_tags (message_id, tag_id) values (2, 13);
insert into messages_tags (message_id, tag_id) values (3, 18);
insert into messages_tags (message_id, tag_id) values (4, 1);
insert into messages_tags (message_id, tag_id) values (5, 11);
insert into messages_tags (message_id, tag_id) values (6, 18);
insert into messages_tags (message_id, tag_id) values (7, 20);
insert into messages_tags (message_id, tag_id) values (8, 14);
insert into messages_tags (message_id, tag_id) values (9, 16);
insert into messages_tags (message_id, tag_id) values (10, 19);
insert into messages_tags (message_id, tag_id) values (11, 4);
insert into messages_tags (message_id, tag_id) values (12, 18);
insert into messages_tags (message_id, tag_id) values (13, 17);
insert into messages_tags (message_id, tag_id) values (14, 9);
insert into messages_tags (message_id, tag_id) values (15, 19);
insert into messages_tags (message_id, tag_id) values (16, 5);
insert into messages_tags (message_id, tag_id) values (17, 11);
insert into messages_tags (message_id, tag_id) values (18, 6);
insert into messages_tags (message_id, tag_id) values (19, 16);
insert into messages_tags (message_id, tag_id) values (20, 20);
insert into messages_tags (message_id, tag_id) values (21, 19);
insert into messages_tags (message_id, tag_id) values (22, 12);
insert into messages_tags (message_id, tag_id) values (23, 20);
insert into messages_tags (message_id, tag_id) values (24, 19);
insert into messages_tags (message_id, tag_id) values (25, 4);
insert into messages_tags (message_id, tag_id) values (26, 4);
insert into messages_tags (message_id, tag_id) values (27, 14);
insert into messages_tags (message_id, tag_id) values (28, 20);
insert into messages_tags (message_id, tag_id) values (29, 5);
insert into messages_tags (message_id, tag_id) values (30, 5);
insert into messages_tags (message_id, tag_id) values (31, 8);
insert into messages_tags (message_id, tag_id) values (32, 18);
insert into messages_tags (message_id, tag_id) values (33, 20);
insert into messages_tags (message_id, tag_id) values (34, 19);
insert into messages_tags (message_id, tag_id) values (35, 16);
insert into messages_tags (message_id, tag_id) values (36, 8);
insert into messages_tags (message_id, tag_id) values (37, 15);
insert into messages_tags (message_id, tag_id) values (38, 6);
insert into messages_tags (message_id, tag_id) values (39, 15);
insert into messages_tags (message_id, tag_id) values (40, 5);
insert into messages_tags (message_id, tag_id) values (41, 20);
insert into messages_tags (message_id, tag_id) values (42, 13);
insert into messages_tags (message_id, tag_id) values (43, 13);
insert into messages_tags (message_id, tag_id) values (44, 12);
insert into messages_tags (message_id, tag_id) values (45, 20);
insert into messages_tags (message_id, tag_id) values (46, 1);
insert into messages_tags (message_id, tag_id) values (47, 15);
insert into messages_tags (message_id, tag_id) values (48, 20);
insert into messages_tags (message_id, tag_id) values (49, 16);
insert into messages_tags (message_id, tag_id) values (50, 10);