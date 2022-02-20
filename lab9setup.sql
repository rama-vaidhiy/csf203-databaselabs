DELETE FROM books_authors	;
DELETE  FROM search_books	;
DELETE  FROM location     	;
DELETE  FROM books       	;
DELETE  FROM authors      	;
DELETE  FROM searchTags  	 ;

DROP TABLE books_authors;
DROP TABLE search_books;
DROP TABLE location;
DROP TABLE books;
DROP TABLE authors;
DROP TABLE searchTags;



/******************* TABLES ***********************************************/
CREATE TABLE books(
	  bk_id 		bigint  NOT NULL  PRIMARY KEY 
	, bk_title 		varchar(100) NULL
	, bk_ISBN 		varchar(50) NULL
	, bk_publisher 	varchar(100) NULL
	, bk_published_year 	int NULL
	, bk_price 		numeric NULL
	, bk_page_count 	int NULL
	, bk_bought_on 	date NULL
	, bk_hard_cover 	bit NULL
	, bk_cover_pic 	longblob NULL
	, bk_notes 		text NULL
) ;

CREATE TABLE authors (
	  au_id 		bigint NOT NULL PRIMARY KEY 
	, au_first_name 	varchar(50) NULL
	, au_middle_name	varchar (50) NULL
	, au_last_name 	varchar(50) NULL
	, au_notes 		text NULL
);


CREATE TABLE search_books(
	  bt_id 		bigint NOT NULL PRIMARY KEY AUTO_INCREMENT 
	, bk_id 		bigint NOT NULL
	, tag_id 		bigint NOT NULL
);

CREATE TABLE searchTags(
	  tag_id 		bigint NOT NULL  PRIMARY KEY 
	, tag_value 		varchar(50) NULL
);


CREATE TABLE books_authors(
	  ba_id 	bigint  NOT NULL PRIMARY KEY AUTO_INCREMENT
	, bk_id 	bigint NOT NULL
	, au_id 	bigint NOT NULL
);


CREATE TABLE location (
	  loc_id 		bigint NOT NULL PRIMARY KEY 
	, fk_bk_loc 		bigint NOT NULL
	, loc_bookcase 	varchar(100) NULL
	, loc_shelf 		int NULL
	, loc_position_left 	int NULL
);

ALTER TABLE books_authors
	ADD  CONSTRAINT FK_bk_au_au FOREIGN KEY(au_id)
	REFERENCES authors (au_id);

ALTER TABLE books_authors
	ADD  CONSTRAINT FK_bk_au_books FOREIGN KEY(bk_id)
	REFERENCES books (bk_id);

ALTER TABLE location  
	ADD  CONSTRAINT FK_location_books FOREIGN KEY(fk_bk_loc)
	REFERENCES books (bk_id);

ALTER TABLE search_books
	ADD  CONSTRAINT FK_search_bk_searchTags FOREIGN KEY(tag_id)
	REFERENCES searchTags (tag_id);

ALTER TABLE search_books  
	ADD  CONSTRAINT FK_search_bk_bk FOREIGN KEY(bk_id)
	REFERENCES books (bk_id);
    
    
    
INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(1,'SQL Bible','978-0470229064','Wiley',2008,39.9900,888,'2009-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(2,'Wiley Pathways: Introduction to Database Management','978-0470101865','Wiley',2007,55.26,504,'2007-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(3,'Microsoft SQL Server 2000 Weekend Crash Course','978-0764548406','Wiley',2001,29.99,408,'2002-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(4,'SQL Functions: Programmers Reference','978-0764569012','Wiley',2005,26.3900,790,'2006-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(5,'A La Recherche du Temps Perdu','978-2070754922','Gallimard',2002,69.2600,2164,'2005-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(6,'After the Gold Rush: Creating a True Profession of Software Engineering','978-0735608771','Microsoft Press',1999,24.99,182,'2000-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(7,'Letters From Earth','978-1617430060','Greenbook Publications',2010,8.8900,52,'2010-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(8,'Mindswap','978-0765315601','Orb Books',2006,16.2900,204,'2007-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(9,'Stranger in a Strange Land','978-0441788385','Ace Trade',1991,16.2900,528,'2007-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(10,'Jonathan Livingston Seagull','978-0075119616','MacMillan',1972,38.8800,NULL,'1999-10-10',1,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(11,'A Short History of Nearly Everything','978-0307885159','MacBroadway',2010,18.48, 624,'2010-10-10',0,NULL,NULL);

INSERT INTO  books   
( bk_id  , bk_title  , bk_ISBN  , bk_publisher  , bk_published_year  , bk_price  , bk_page_count  , bk_bought_on  , bk_hard_cover  , bk_cover_pic  , bk_notes  )
VALUES(12,'Steppenwolf','978-0312278670','Picador',2002,10.2000,224,'2003-10-10',0,NULL,NULL);


INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(1,'Alexander',NULL,'Kriegel',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(2,'Boris','M','Trukhnov',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(3,'Mark','L','Gillenson',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(4,'Paulraj',NULL,'Ponniah',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(5,'Allen','G','Taylor',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(6,'Gavin',NULL,'Powell',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(7,'Frank',NULL,'Miller',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(8,'Arie',NULL,'Jones',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(9,'Ryan','K','Stephens',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(10,'Ronald','R','Plew',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(11,'Robert','F','Garrett',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(12,'Robert',NULL,'Sheckley',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(13,'Robert','A','Heinlein',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(14,'Richard',NULL,'Bach',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(15,'Hermann',NULL,'Hesse',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(16,'Bill',NULL,'Bryson',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(17,'Marcel',NULL,'Proust',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(18,'Steve',NULL,'McConnell',NULL);
INSERT INTO  authors   ( au_id  , au_first_name  , au_middle_name  , au_last_name  , au_notes  )VALUES(19,'Mark',NULL,'Twain',NULL);


INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(1,1);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(1,2);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(2,3);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(2,4);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(2,5);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(2,6);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(2,7);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(3,1);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(2,2);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(2,1);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(4,1);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(4,8);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(4,9);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(4,10);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(4,11);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(8,12);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(9,13);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(10,14);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(12,15);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(11,16);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(5,17);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(6,18);
INSERT INTO  books_authors   ( bk_id  , au_id  )VALUES(7,19);

INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(1,1,'The one in the living room to the right',5,1);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(2,2,'The one in the living room to the right',5,2);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(3,3,'The one in the living room to the right',5,3);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(4,4,'The one in the living room to the right',5,4);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(5,6,'The one in the living room to the right',4,1);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(6,11,'The one in the living room to the right',4,2);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(7,8,'The one in the living room to the right',3,1);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(8,9,'The one in the living room to the right',3,2);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(9,10,'The one in the living room to the right',3,3);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(10,5,'The one in the living room to the right',2,1);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(11,7,'The one in the living room to the right',2,2);
INSERT INTO  location   ( loc_id  , fk_bk_loc  , loc_bookcase  , loc_shelf  , loc_position_left  )VALUES(12,12,'The one in the living room to the right',2,3);


INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(1,'SQL');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(2,'philosophy');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(3,'Glasperlenspiel');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(4,'Hesse');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(5,'science');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(6,'history');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(7,'programming');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(8,'classics');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(9,'software');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(10,'engineering');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(11,'functions');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(12,'seagull');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(13,'stranger');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(14,'Mars');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(15,'grok');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(16,'water');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(17,'Marvin');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(18,'interstellar');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(19,'alien');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(20,'Jubal');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(21,'Smith');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(22,'Swann');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(23,'French');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(24,'France');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(25,'religion');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(26,'heaven');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(27,'Earth');
INSERT INTO  searchTags   ( tag_id  , tag_value  )VALUES(28,'history');

INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(1,1);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(2,1);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(3,1);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(4,1);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(5,2);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(7,2);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,2);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(12,3);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(12,4);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(6,5);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(2,5);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(8,5);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,5);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(11,5);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(6,6);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(11,6);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(1,7);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(2,7);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(3,7);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(4,7);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(5,7);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(6,7);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(5,8);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,8);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(10,8);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(12,8);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(1,9);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(2,9);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(3,9);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(4,9);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(1,10);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(2,10);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(6,10);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(1,11);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(3,11);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(4,11);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(10,12);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,13);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(8,14);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,14);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,15);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(8,16);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,16);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(8,17);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(8,18);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,18);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(11,18);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(8,19);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,19);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,20);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,21);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(5,22);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(5,23);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(5,24);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(7,25);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(9,25);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(7,26);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(7,27);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(11,27);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(5,28);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(7,28);
INSERT INTO  search_books   ( bk_id  , tag_id  )VALUES(11,28);


