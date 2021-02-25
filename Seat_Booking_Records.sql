create database seatBooking;

use seatBooking;

create table SeatWing(
    id int NOT NULL,
    wingName varchar(10) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO SeatWing VALUES (1 , 'NORTH'),(2 , 'SOUTH'), (3 , 'EAST'), (4 , 'WEST'), (5 , 'NONE');

create table BookingStatus(
    id int NOT NULL,
    status varchar(15) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO BookingStatus VALUES (1 , 'RESERVED'),(2 , 'OCCUPIED'), (3 , 'CANCELLED');

create table seatBooking.Seat(
    id int NOT NULL AUTO_INCREMENT, 
    seatNumber int NOT NULL,
    cubicleNumber varchar(10) NOT NULL,
    floorNumber int NOT NULL,
    buildingName varchar(50) NOT NULL,
    wingId int,
    active boolean NOT NULL,
    isNearCafeteria boolean,
    isNearWashroom boolean,
    isNearWindow boolean,
    PRIMARY KEY (id),
	FOREIGN KEY (wingId) REFERENCES SeatWing(id) ON DELETE CASCADE
);

INSERT INTO seatBooking.Seat (id,seatNumber,cubicleNumber,floorNumber,buildingName,wingId,active)
VALUES (1,1,'C1',1,'Pingala',5,true);


INSERT INTO seatBooking.Seat (seatNumber,cubicleNumber,floorNumber,buildingName,wingId,active)
VALUES (2,'C1',1,'Pingala',5,true),
(3,'C1',1,'Pingala',5,true),
(4,'C1',1,'Pingala',5,true),
(1,'C2',1,'Pingala',5,true),
(2,'C2',1,'Pingala',5,true),
(3,'C2',1,'Pingala',5,true),
(4,'C2',1,'Pingala',5,true),
(2,'C1',2,'Pingala',5,true),
(4,'C1',2,'Pingala',5,true),
(1,'C2',2,'Pingala',5,true),
(3,'C2',2,'Pingala',5,true),
(1,'C1',1,'Aryabhatta',5,true),
(2,'C1',1,'Aryabhatta',5,true),
(3,'C2',1,'Aryabhatta',5,true),
(4,'C2',1,'Aryabhatta',5,true),
(1,'C3',1,'Aryabhatta',5,true),
(3,'C3',1,'Aryabhatta',5,true),
(1,'C1',2,'Aryabhatta',5,true),
(2,'C1',2,'Aryabhatta',5,true),
(3,'C2',2,'Aryabhatta',5,true),
(4,'C2',2,'Aryabhatta',5,true),
(1,'C3',2,'Aryabhatta',5,true),
(3,'C3',2,'Aryabhatta',5,true),
(1,'C1',1,'Yajurveda',5,true),
(3,'C1',1,'Yajurveda',5,true),
(2,'C2',1,'Yajurveda',5,true),
(4,'C2',1,'Yajurveda',5,true),
(1,'C1',2,'Yajurveda',5,true),
(3,'C1',2,'Yajurveda',5,true),
(2,'C2',2,'Yajurveda',5,true),
(4,'C2',2,'Yajurveda',5,true),
(1,'C1',1,'Maitreyi',5,true),
(3,'C1',1,'Maitreyi',5,true),
(2,'C2',1,'Maitreyi',5,true),
(4,'C2',1,'Maitreyi',5,true),
(1,'C1',2,'Maitreyi',5,true),
(3,'C1',2,'Maitreyi',5,true),
(2,'C2',2,'Maitreyi',5,true),
(4,'C2',2,'Maitreyi',5,true),
(1,'C1',1,'Gargi',5,true),
(3,'C1',1,'Gargi',5,true),
(2,'C2',1,'Gargi',5,true),
(4,'C2',1,'Gargi',5,true),
(1,'C1',2,'Gargi',5,true),
(3,'C1',2,'Gargi',5,true),
(2,'C2',2,'Gargi',5,true),
(4,'C2',2,'Gargi',5,true),
(1,'C1',1,'Bhaskar',1,true),
(3,'C1',1,'Bhaskar',1,true),
(2,'C2',1,'Bhaskar',2,true),
(4,'C2',1,'Bhaskar',2,true),
(1,'C1',2,'Bhaskar',1,true),
(3,'C1',2,'Bhaskar',1,true),
(2,'C2',2,'Bhaskar',2,true),
(4,'C2',2,'Bhaskar',2,true);


create table SeatBooking.Employee(
    id varchar(20) NOT NULL,
    firstName varchar(25) NOT NULL,
    lastName varchar(25) NOT NULL,
    email varchar(100),
    PRIMARY KEY (id)
);

INSERT INTO seatBooking.Employee (id,firstName,lastName,email)
VALUES
('002286','Ashwini','Joshi','ashwini_joshi@persistent.com'),
('005081','Manjushri','Bankar','manjushri_bankar@persistent.com'),
('009031','Priya','Karkele','priya_karkele@persistent.com'),
('015416','Mandar','Baxi','mandar_baxi@persistent.com'),
('019164','Vinayak','Joshi','vinayak_joshi@persistent.com'),
('020014','Devika','Bapat','devika_bapat@persistent.com'),
('020426','Vallari','Gokhale','vallari_gokhale@persistent.com'),
('021048','Samiksha','Shah','samiksha_shah@persistent.com'),
('022565','Kalpesh','Modi','kalpesh_modi@persistent.com'),
('024181','Akanksha','Bhansali','akanksha_bhansali@persistent.com'),
('024190','Suvarnamala','Kshirsagar','suvarnamala_kshirsagar@persistent.com'),
('024452','Shiwangi','Pasari','shiwangi_pasari@persistent.com'),
('024461','Sanchari','Roy','sanchari_roy@persistent.com'),
('024466','Dilkash','Ghazala','dilkash_ghazala@persistent.com'),
('024716','Shefali','Inamdar','shefali_inamdar@persistent.com'),
('024750','Nidhi','Neema','nidhi_neema@persistent.com'),
('024828','Harshal','Musale','harshal_musale@persistent.com'),
('025230','Jasmeet','Singh','jasmeet_singh@persistent.com'),
('026092','Pravin','Yadav','pravin_yadav@persistent.com'),
('026203','Onkar','Kate','onkar_kate@persistent.com'),
('024385','Prajyot','Parab','prajyot_parab@persistent.com'),
('035163','Yogesh','Kumar','yogesh_kumar@persistent.com'),
('024180','Dinesh','Raj','dinesh_raj@persistent.com'),
('024179','Darshana','Gosavi','darshana_gosavi@persistent.com'),
('024178','Vidya','Chintamani','vidya_chintamani@persistent.com'),
('024177','Priya','Heda','priya_heda@persistent.com'),
('024176','Krunal','Gaikwad','krunal_gaikwad@persistent.com'),
('024175','Aishwarya','Kirte','aishwarya_kirte@persistent.com'),
('024174','Tanmay','Patil','tanmay_patil@persistent.com'),
('024173','Satyanand','Tiwari','satyanand_tiwari@persistent.com'),
('024172','Vishal','Khowal','vishal_khowal@persistent.com'),
('024171','Divyansh','Sharma','divyansh_sharma@persistent.com'),
('024170','Pankaj','Meshram','pankaj_meshram@persistent.com'),
('024169','Margesha','Devlekar','margesha_devlekar@persistent.com'),
('024168','Sayeram','Eashwar','sayeram_easher@persistent.com');

create table seatBooking.Reservation(
    id int NOT NULL AUTO_INCREMENT,
    employeeId varchar(36) NOT NULL,
    seatId int NOT NULL,
    dateOfBooking DATE NOT NULL,
    bookingStartsAt time NOT NULL,
    bookingEndsAt time NOT NULL,
    bookingStatusId int NOT NULL,
    occupiedFrom time,
    occupiedTill time,
    PRIMARY KEY (id),
	INDEX (dateOfBooking),
	INDEX (dateOfBooking, bookingStartsAt, bookingEndsAt),
	FOREIGN KEY (employeeId) REFERENCES Employee(id) ON DELETE CASCADE,
	FOREIGN KEY (seatId) REFERENCES Seat(id) ON DELETE CASCADE,
	FOREIGN KEY (bookingStatusId) REFERENCES BookingStatus(id) ON DELETE CASCADE
);

INSERT INTO seatBooking.Reservation 
VALUES
(1,'024181',8,'2021-02-21','14:00:00','17:00:00',2,'14:05:00','17:00:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024181',8,'2021-02-22','14:00:00','17:00:00',2,'14:15:00','16:30:00'),
('024181',8,'2021-02-23','14:00:00','17:00:00',2,'14:15:00','16:30:00'),
('024181',8,'2021-02-24','14:00:00','17:00:00',2,'14:15:00','16:30:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
('024181',8,'2021-02-25','14:00:00','17:00:00',1);

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024452',34,'2021-02-20','11:00:00','17:00:00',2,'11:10:00','17:20:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
('024452',34,'2021-02-21','13:00:00','16:00:00',3);

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024452',34,'2021-02-22','13:00:00','16:00:00',2,'13:20:00','16:20:00');


INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024385',56,'2021-02-23','13:00:00','16:00:00',2,'13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024385',56,'2021-02-24','13:00:00','16:00:00',2,'13:10:00','15:50:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('035163',30,'2021-02-22','09:00:00','15:00:00',2,'09:20:00','14:45:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('035163',31,'2021-02-23','09:00:00','15:00:00',2,'09:20:00','14:45:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024461',50,'2021-02-24','09:00:00','15:00:00',2,'09:20:00','14:50:00');


INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024461',51,'2021-02-24','15:00:00','18:00:00',2,'15:20:00','17:50:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024466',48,'2021-02-23','13:00:00','16:00:00',2,'13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024466',44,'2021-02-24','13:00:00','16:00:00',2,'13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('024461',52,'2021-02-23','13:00:00','16:00:00',2,'13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
('024466',33,'2021-02-22','13:00:00','16:00:00',1);


create table seatBooking.Feedback(
    id int NOT NULL AUTO_INCREMENT,
    employeeId varchar(36) NOT NULL,
    seatId int NOT NULL,
    rating int NOT NULL,
    comments varchar(100),
    PRIMARY KEY (id),
	FOREIGN KEY (employeeId) REFERENCES Employee(id) ON DELETE CASCADE,
	FOREIGN KEY (seatId) REFERENCES Seat(id) ON DELETE CASCADE
);


INSERT INTO seatBooking.Feedback (id,employeeId,seatId,rating)
VALUES
(1,'024181',8, 4);

INSERT INTO seatBooking.Feedback (employeeId,seatId,rating)
VALUES
('024452',34, 5);


INSERT INTO seatBooking.Feedback (employeeId,seatId,rating)
VALUES
('024385',56, 3);

INSERT INTO seatBooking.Feedback (employeeId,seatId,rating)
VALUES
('024466',44, 4);

INSERT INTO seatBooking.Feedback (employeeId,seatId,rating)
VALUES
('024461',50, 5);

create index date_index on seatBooking.Reservation (dateOfBooking);
create index date_time_index on seatBooking.reservation (dateOfBooking, bookingStartsAt, bookingEndsAt);