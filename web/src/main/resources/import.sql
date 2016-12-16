INSERT INTO PortalUser (id, email, firstName, surname, nick, passwordHash, type) VALUES (DEFAULT, 'michalkysilko@gmail.com', 'Michal', 'Kysilko', 'mikaelonosov', '', 'ADMIN'), (DEFAULT, 'kamiljanousek@alfamail.cz', 'Kamil', 'Janoušek', 'kamja', '', 'USER'),(DEFAULT, 'jana124@globalnarcotraficantes.com', 'Jana', '', 'janDa', '', 'USER'),(DEFAULT, 'strejdadavid@kellyfamily.org', '', '', 'strycu', '', 'USER'),(DEFAULT, 'ponton.j@elgoog.un', 'Jiří', 'Pondora', 'ponton', '', 'USER'),(DEFAULT, 'helcavelca@glorious.com', 'Helena', '', 'heuca', '', 'USER'),(DEFAULT, 'lesninetvor@ceskelesy.cz', '', '', 'houbovyMag', '', 'USER'),(DEFAULT, 'standa.mraz@svitavskepouste.org', 'Stanislav', 'Mrazov', 'lesapan', '', 'USER'),(DEFAULT, 'alena@abcde.com', 'Ala', '', 'korenarka', '', 'USER');
INSERT INTO Forest (id, locality_description, name) VALUES (DEFAULT, 'Oblast navazuje na zastavěná území Ochoz u Brna, Kanice, Řícmanice, Bílovice nad Svitavou, Obřany, Maloměřice, Židenice, Líšeň, Mokrá – Horákov a Hostěnice.  Mezi dvěma posledními navazuje na hranici dobývacího prostoru vápencového lomu Mokrá.', 'Bílovické lesy'),(DEFAULT, 'Oblast navazuje na území obcí, které ohraničují MČÚtěchov, Ořešín, Jehnice, Mokrá Hora, Řečkovice, Královo Pole, Lesná, Obřany, na východní straně je území ohraničeno hluboce zaříznutým údolím řeky Svitavy.','Soběšické lesy'),(DEFAULT, 'Oblast navazuje na zastavěná území obcí Šebrov – Kateřina na severu, Lelekovice na jihu, na západě je území ohraničeno průběhem „císařské silnice“ z Brna směrem na sever na Lipůvku, Letovice, Svitavy, na východě je území ohraničeno řekou Svitavou.','Vranovské lesy'),(DEFAULT, 'Oblast navazuje po západní straně na zastavěná území Moravských Knínic, Chudčic, Veverské Bítýšky, na jihu je území ohraničeno vodní nádrží Brněnské přehrady, na východě navazuje na zastavěné území Rozdrojovic.','Rozdrojovické lesy'),(DEFAULT, 'Oblast ze západní strany nenavazuje přímo na zastavěná území a je Boskovickou brázdou oddělena od okolních obcí, na východní straně navazuje na zastavěná území Žebětín a Bystrc, ze severu je oblast ohraničena vodní nádrží Brněnské přehrady.','Podkomorské lesy'),(DEFAULT, 'Oblast se nachází nejblíže centra brněnské městské aglomerace, je obklopena velkými komplexy sídlišť a městské zástavby – navazuje na městské části Komín, Bystrc, Žebětín, ..., uvnitř území leží Jundrov a Kohoutovice.','Kohoutovické lesy'),(DEFAULT, 'Oblast navazuje na zastavěná území obcí Ostopovice, Střelice, Moravany a Želešice, na jihu je území ohraničeno řekou Bobravou, ve středu území leží obec Nebovidy. Nejvýznamnější atraktivitou je říčka Bobrava s údolní nivou.','Střelické lesy');
INSERT INTO Hunter (id, rank) VALUES ((SELECT id from PortalUser WHERE email='michalkysilko@gmail.com'), 'GURU'), ((SELECT id from PortalUser WHERE email='kamiljanousek@alfamail.cz'),'SKILLED'), (3 ,'BEGINNER'), (4 ,'BEGINNER'), (5 ,'SKILLED'), (6 ,'BEGINNER'), (7 ,'EXPERT');
INSERT INTO Mushroom (id, name, description, fromDate, toDate, type) VALUES (DEFAULT, 'hřib dubový', 'Hřib dubový patří mezi pravé bílé hřiby vyrůstající převážně v nižších polohách v oblasti teplomilné květeny. Objevuje se v lesích, parcích, na hřbitovech a hrázích rybníků, kde se s ním můžeme setkat pod duby a buky.', '1970-05-15', '1970-10-31', 'EDIBLE'),(DEFAULT, 'bedla vysoká', 'Představuje velmi hojnou a oblíbenou houbu vyrůstající v lesích, při jejich okrajích na loukách a pastvinách, v parcích, sadech a na jiných podobných místech. Objevuje se jednotlivě i ve skupinách.', '1970-07-01', '1970-11-30', 'EDIBLE'),(DEFAULT, 'křemenáč osikový', 'Křemenáč osikový vyrůstá zhruba od května do počátku listopadu, vyhledává osikové háje při okrajích lesů a většinou se objevuje ve skupinách ve spadu listí nebo v trávě.', '1970-06-01', '1970-10-15', 'EDIBLE'),(DEFAULT, 'čirůvka havelka', 'Roste roztroušeně v jehličnatých nebo smíšených lesích, nejčastěji ve vyšších polohách v písčitých borech. Objevuje se jednotlivě i ve skupinách.', '1970-08-20', '1970-12-05', 'EDIBLE'),(DEFAULT, 'pečárka císařská', 'Pečárka císařská patří k největším a zároveň snadno poznatelným jedlým houbám, které se v našich lesích hojně objevují. Setkat se s ní můžeme prakticky v každém lese. Roste v jehličnatých i listnatých lesích, s oblibou podél cest, zejména pod smrky.', '1970-07-01', '1970-11-05', 'EDIBLE'),(DEFAULT, 'bělochoroš pýchavkovitý', 'Bělochoroš pýchavkovitý patří mezi zajímavé nejedlé houby vyrůstající na padlých kmenech a pařezech jehličnanů. Daří se mu především ve vlhčích smrkových lesích.', '1970-07-01', '1970-11-19', 'NONEDIBLE'),(DEFAULT, 'ohnivec rakouský', 'Ohnivec rakouský patří k nádherným jarním houbám, které se objevují brzy poté, co roztaje sníh. Vyrůstá hojně na starých spadaných větvičkách některých listnáčů, jež jsou potažené mechem. ', '1970-02-01', '1970-10-31', 'NONEDIBLE'),(DEFAULT, 'holubinka rudonohá', 'Holubinka rudonohá patří k méně běžným holubinkám, objevujícím se pouze na některých místech ve vyšších polohách. Vyhledává vlhčí lokality s kyselým podložím, vyrůstá pod smrky (některé prameny uvádí i borovice)', '1970-07-01', '1970-10-31', 'NONEDIBLE'),(DEFAULT, 'třepenitka cihlová', 'Třepenitka cihlová patří k nějvětším zástupcům rodu Hypholoma. Její plodnice dokáží narůst až do úctyhodných 12 cm, což je pro tento rod opravdu neobvyklé. Patří k dobře poznatelným houbám.', '1970-07-01', '1970-11-23', 'NONEDIBLE'),(DEFAULT, 'hřib žlučník', 'Hřib žlučník (hořčák) patří k velmi hojným hřibovitým houbám, kterým se skvěle daří v jehličnatých lesích s kyselejším podložím. Praktický význam: Hřib žlučník nepatří k oblíbeným houbám a z kulinářského hlediska je nezajímavý.', '1970-06-22', '1970-10-18', 'NONEDIBLE'),(DEFAULT, 'muchomůrka zelená', 'Muchomůrku zelenou můžeme objevit především v nižších polohách, kde je místy velmi hojná. Daří se jí pod duby, buky a habry, ale nalézt se dá i pod jinými listnáči a občas také na mechatých lokalitách pod smrky.', '1970-06-01', '1970-11-01', 'POISONOUS'),(DEFAULT, 'vláknice začervenalá', 'Vláknice začervenalá (Patouillardova) patří mezi nejnebezpečnější druhy hub, které se v našich lesích objevují. Jedná se o smrtelně jedovatou houbu vyrůstající v prosvětlených listnatých lesích, ale také v sadech a parcích.', '1970-05-20', '1970-06-30', 'POISONOUS'),(DEFAULT, 'ryzec hnědý', 'Ryzec hnědý představuje jeden z mála jedovatých ryzců, se kterým se v našich lesích setkáváme. Nepatří sice k nejnebezpečnějším houbám, ale způsobuje nepříjemné gastrointestinální otravy, které se projevují zvracením a průjmy.', '1970-07-01', '1970-11-20', 'POISONOUS'),(DEFAULT, 'bedla ostrošupinná', 'Bedla ostrošupinná roste místy poměrně hojně, většinou jednotlivě, ale i v menších skupinách, v listnatých i jehličnatých lesích, s oblibou při okrajích cest na rudeálních místech s vysokou koncentrací draslíku a dusíku.', '1970-07-01', '1970-10-31', 'POISONOUS'),(DEFAULT, 'muchomůrka červená', 'Muchomůrka červená patří k nejkrásnějším a nejběžnějším houbám, které potěší oko každého houbaře. Vyrůstá jednotlivě i ve skupinách, nejčastěji pod břízami, smrky a borovicemi. Muchomůrka červená obsahuje také psychotropní látku muscimol.', '1970-07-01', '1970-11-30', 'PSYCHEDELIC'),(DEFAULT, 'lysohlávka česká', 'Lysohlávka česká patří k jedovatým houbám, může být také prospěšná. Využívá se v lékařství a údajně v ní byly objeveny některé protirakovinné látky. Vzhledem k tomu, že obsahuje psychoaktivní látky psilocin a psilocybin, je velmi vyhledávaná a oblíbená.', '1970-09-20', '1970-11-15', 'PSYCHEDELIC');
INSERT INTO Visit (id, note, fromDate, toDate, forest_id, hunter_id) VALUES (DEFAULT, 'Šel jsem hodně z rána a po dešti, takže hub bylo všude plno. Les byl klidný.', '2016-06-03', '2016-06-03', 5, 4),(DEFAULT, 'Vůbec nic :(DEFAULT, ', '2016-06-08', '2016-06-09', 1, 2),(DEFAULT, 'Paráda, zítra jdu zase!', '2016-06-09', '2016-06-09', 2, 4),(DEFAULT, 'Všechno jsem si včera vysbíral.', '2016-06-10', '2016-06-10', 2, 4),(DEFAULT, 'Teplý letní den, houbami obdařen.', '2016-06-18', '2016-06-18', 4, 3),(DEFAULT, 'Docela zima po ránu, na tohle období.', '2016-06-24', '2016-06-24', 5, 7),(DEFAULT, 'Kvalitní procházka. Nemusím měsíc nakupovat.', '2016-07-02', '2016-07-02', 3, 7),(DEFAULT, 'Jen pár prašivek a něco málo klouzků.', '2016-07-12', '2016-07-12', 7, 5),(DEFAULT, 'Lysohlávky, Howgh.', '2016-07-21', '2016-07-21', 6, 6),(DEFAULT, 'Ty lesy už nejsou co bývaly.', '2016-07-21', '2016-07-21', 6, 2),(DEFAULT, 'Potkal jsem medvěda a pi útěku jsem přišel o všechny houby.', '2016-07-23', '2016-07-23', 1, 5),(DEFAULT, 'Vedro po dešti, mám 3 koše.', '2016-08-18', '2016-08-18', 5, 3),(DEFAULT, 'Plný košík, ale ukradli mi auto.', '2016-08-27', '2016-08-27', 6, 6),(DEFAULT, 'Houby rostou, běžte do lesa.', '2016-08-28', '2016-08-28', 3, 4),(DEFAULT, 'Dnes po ránu jsem měl příležitost nasbírat asi nejvíce hub za svůj život. Hřiby, bedly, růžovky, křemenáče, muchomůrky všechny roste. Nejlepší den mého života.', '2016-09-02', '2016-09-02', 5, 3),(DEFAULT, 'Super!', '2016-09-02', '2016-09-02', 5, 5),(DEFAULT, 'Už je asi zima. Jen pár malých hřibů a jinak všechno nejedlé.', '2016-09-23', '2016-09-23', 1, 2),(DEFAULT, 'Skoro jsem umrzl.', '2016-10-30', '2016-10-30', 3, 7),(DEFAULT, 'Nic, ale zase jsem v lese byl jedinný.', '2016-12-24', '2016-12-24', 7, 7);;
INSERT INTO MushroomCount (id, count, mushroom_id, visit_id) VALUES (DEFAULT, 10, 2, 1),(DEFAULT, 12, 1, 1),(DEFAULT, 3, 9, 1),(DEFAULT, 4, 2, 2),(DEFAULT, 40, 16, 2),(DEFAULT, 2, 5, 2),(DEFAULT, 9, 4, 2),(DEFAULT, 6, 7, 3),(DEFAULT, 14, 12, 3),(DEFAULT, 16, 13, 3),(DEFAULT, 22, 2, 3),(DEFAULT, 23, 1, 3),(DEFAULT, 1, 3, 3),(DEFAULT, 20, 7, 4),(DEFAULT, 18, 6, 4),(DEFAULT, 34, 4, 5),(DEFAULT, 2, 1, 6),(DEFAULT, 48, 4, 6),(DEFAULT, 6, 2, 6),(DEFAULT, 2, 1, 7),(DEFAULT, 12, 1, 8),(DEFAULT, 17, 4, 7),(DEFAULT, 7, 16, 7),(DEFAULT, 9, 10, 7),(DEFAULT, 6, 9, 7),(DEFAULT, 3, 2, 8),(DEFAULT, 13, 3, 8),(DEFAULT, 12, 2, 9),(DEFAULT, 15, 12, 9),(DEFAULT, 4, 1, 9),(DEFAULT, 6, 2, 10),(DEFAULT, 22, 4, 10),(DEFAULT, 13, 5, 10),(DEFAULT, 1, 3, 10),(DEFAULT, 15, 3, 11),(DEFAULT, 2, 4, 11),(DEFAULT, 17, 3, 12),(DEFAULT, 19, 4, 12),(DEFAULT, 13, 8, 12),(DEFAULT, 20, 2, 12),(DEFAULT, 17, 1, 12),(DEFAULT, 2, 16, 12),(DEFAULT, 1, 11, 12),(DEFAULT, 3, 10, 12),(DEFAULT, 9, 8, 13),(DEFAULT, 12, 2, 13),(DEFAULT, 12, 1, 13),(DEFAULT, 12, 7, 13),(DEFAULT, 19, 12, 14),(DEFAULT, 33, 3, 14),(DEFAULT, 30, 4, 14),(DEFAULT, 6, 1, 14),(DEFAULT, 9, 1, 15),(DEFAULT, 8, 1, 16),(DEFAULT, 18, 2, 15),(DEFAULT, 20, 3, 15),(DEFAULT, 13, 3, 16),(DEFAULT, 2, 2, 16),(DEFAULT, 14, 1, 17),(DEFAULT, 16, 2, 17),(DEFAULT, 13, 4, 17),(DEFAULT, 12, 3, 17),(DEFAULT, 14, 5, 17),(DEFAULT, 1, 7, 17),(DEFAULT, 2, 6, 17);
INSERT INTO PortalUser (id,firstName,surname,nick,email,type,passwordHash) VALUES (DEFAULT ,'Samuel', 'Hunter', 'Samuel', 'samo@hunter.cz','USER','1000:1Iv2U5Y7GKIRZUCA0h4OLotmiVe/d5uM:5BerC98I42mDrt7UAgtjpFKH');
INSERT INTO Hunter (id, rank) VALUES ( (SELECT id from PortalUser WHERE email='samo@hunter.cz'), 'BEGINNER');
INSERT INTO PortalUser (id,firstName,surname,nick,email,type,passwordHash) VALUES (DEFAULT ,'Adele', 'Hunter', 'Adele', 'admin@hunter.cz','ADMIN','1000:1Iv2U5Y7GKIRZUCA0h4OLotmiVe/d5uM:5BerC98I42mDrt7UAgtjpFKH');
INSERT INTO Hunter (id, rank) VALUES ( (SELECT id from PortalUser WHERE email='admin@hunter.cz'), 'GURU');
