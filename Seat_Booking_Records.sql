create database seatBooking;

use seatBooking;

create table seatBooking.SeatWing(
    id varchar(36) NOT NULL,
    wingName varchar(10) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO seatBooking.SeatWing VALUES ('north' , 'NORTH'),('south' , 'SOUTH'), ('east' , 'EAST'), ('west' , 'WEST'), ('none' , 'NONE');

create table seatBooking.BookingStatus(
    id varchar(36) NOT NULL,
    status varchar(15) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO seatBooking.BookingStatus VALUES ('reserved' , 'RESERVED'),('occupied' , 'OCCUPIED'), ('cancelled' , 'CANCELLED');

create table seatBooking.Seat(
    id varchar(36) NOT NULL, 
    seatNumber int NOT NULL,
    cubicleNumber varchar(10) NOT NULL,
    floorNumber int NOT NULL,
    buildingName varchar(50) NOT NULL,
    wingId varchar(36),
    active boolean NOT NULL,
    isNearCafeteria boolean,
    isNearWashroom boolean,
    isNearWindow boolean,
    PRIMARY KEY (id),
	FOREIGN KEY (wingId) REFERENCES seatBooking.SeatWing(id) ON DELETE CASCADE
);

INSERT INTO seatBooking.Seat (id,seatNumber,cubicleNumber,floorNumber,buildingName,wingId,active)
VALUES 
(UUID(),1,'C1',1,'Pingala','none',true),
(UUID(), 2,'C1',1,'Pingala','none',true),
(UUID(), 3,'C1',1,'Pingala','none',true),
(UUID(), 4,'C1',1,'Pingala','none',true),
(UUID(), 1,'C2',1,'Pingala','none',true),
(UUID(), 2,'C2',1,'Pingala','none',true),
(UUID(), 3,'C2',1,'Pingala','none',true),
(UUID(), 4,'C2',1,'Pingala','none',true),
(UUID(), 2,'C1',2,'Pingala','none',true),
(UUID(), 4,'C1',2,'Pingala','none',true),
(UUID(), 1,'C2',2,'Pingala','none',true),
(UUID(), 3,'C2',2,'Pingala','none',true),
(UUID(), 1,'C1',1,'Aryabhatta','none',true),
(UUID(), 2,'C1',1,'Aryabhatta','none',true),
(UUID(), 3,'C2',1,'Aryabhatta','none',true),
(UUID(), 4,'C2',1,'Aryabhatta','none',true),
(UUID(), 1,'C3',1,'Aryabhatta','none',true),
(UUID(), 3,'C3',1,'Aryabhatta','none',true),
(UUID(), 1,'C1',2,'Aryabhatta','none',true),
(UUID(), 2,'C1',2,'Aryabhatta','none',true),
(UUID(), 3,'C2',2,'Aryabhatta','none',true),
(UUID(), 4,'C2',2,'Aryabhatta','none',true),
(UUID(), 1,'C3',2,'Aryabhatta','none',true),
(UUID(), 3,'C3',2,'Aryabhatta','none',true),
(UUID(), 1,'C1',1,'Yajurveda','none',true),
(UUID(), 3,'C1',1,'Yajurveda','none',true),
(UUID(), 2,'C2',1,'Yajurveda','none',true),
(UUID(), 4,'C2',1,'Yajurveda','none',true),
(UUID(), 1,'C1',2,'Yajurveda','none',true),
(UUID(), 3,'C1',2,'Yajurveda','none',true),
(UUID(), 2,'C2',2,'Yajurveda','none',true),
(UUID(), 4,'C2',2,'Yajurveda','none',true),
(UUID(), 1,'C1',1,'Maitreyi','none',true),
(UUID(), 3,'C1',1,'Maitreyi','none',true),
(UUID(), 2,'C2',1,'Maitreyi','none',true),
(UUID(), 4,'C2',1,'Maitreyi','none',true),
(UUID(), 1,'C1',2,'Maitreyi','none',true),
(UUID(), 3,'C1',2,'Maitreyi','none',true),
(UUID(), 2,'C2',2,'Maitreyi','none',true),
(UUID(), 4,'C2',2,'Maitreyi','none',true),
(UUID(), 1,'C1',1,'Gargi','none',true),
(UUID(), 3,'C1',1,'Gargi','none',true),
(UUID(), 2,'C2',1,'Gargi','none',true),
(UUID(), 4,'C2',1,'Gargi','none',true),
(UUID(), 1,'C1',2,'Gargi','none',true),
(UUID(), 3,'C1',2,'Gargi','none',true),
(UUID(), 2,'C2',2,'Gargi','none',true),
(UUID(), 4,'C2',2,'Gargi','none',true),
(UUID(), 1,'C1',1,'Bhaskar','north',true),
(UUID(), 3,'C1',1,'Bhaskar','north',true),
(UUID(), 2,'C2',1,'Bhaskar','south',true),
(UUID(), 4,'C2',1,'Bhaskar','south',true),
(UUID(), 1,'C1',2,'Bhaskar','north',true),
(UUID(), 3,'C1',2,'Bhaskar','north',true),
(UUID(), 2,'C2',2,'Bhaskar','south',true),
(UUID(), 4,'C2',2,'Bhaskar','south',true);

create table seatBooking.Employee(
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
    id varchar(36) NOT NULL,
    employeeId varchar(36) NOT NULL,
    seatId varchar(36) NOT NULL,
    dateOfBooking DATE NOT NULL,
    bookingStartsAt time NOT NULL,
    bookingEndsAt time NOT NULL,
    bookingStatusId varchar(36) NOT NULL,
    occupiedFrom time,
    occupiedTill time,
    PRIMARY KEY (id),
	INDEX (dateOfBooking),
	INDEX (dateOfBooking, bookingStartsAt, bookingEndsAt),
	FOREIGN KEY (employeeId) REFERENCES Employee(id) ON DELETE CASCADE,
	FOREIGN KEY (seatId) REFERENCES Seat(id) ON DELETE CASCADE,
	FOREIGN KEY (bookingStatusId) REFERENCES BookingStatus(id) ON DELETE CASCADE
);

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024181',8,'2021-02-21','14:00:00','17:00:00','occupied','14:05:00','17:00:00'),
(UUID(),'024181',8,'2021-02-22','14:00:00','17:00:00','occupied','14:15:00','16:30:00'),
(UUID(),'024181',8,'2021-02-23','14:00:00','17:00:00','occupied','14:15:00','16:30:00'),
(UUID(),'024181',8,'2021-02-24','14:00:00','17:00:00','occupied','14:15:00','16:30:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
(UUID(),'024181',8,'2021-02-25','14:00:00','17:00:00','reserved');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024452',34,'2021-02-20','11:00:00','17:00:00','occupied','11:10:00','17:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
(UUID(),'024452',34,'2021-02-21','13:00:00','16:00:00','cancelled');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024452',34,'2021-02-22','13:00:00','16:00:00','occupied','13:20:00','16:20:00');


INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024385',56,'2021-02-23','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024385',56,'2021-02-24','13:00:00','16:00:00','occupied','13:10:00','15:50:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'035163',30,'2021-02-22','09:00:00','15:00:00','occupied','09:20:00','14:45:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'035163',31,'2021-02-23','09:00:00','15:00:00','occupied','09:20:00','14:45:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024461',50,'2021-02-24','09:00:00','15:00:00','occupied','09:20:00','14:50:00');


INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024461',51,'2021-02-24','15:00:00','18:00:00','occupied','15:20:00','17:50:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024466',48,'2021-02-23','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024466',44,'2021-02-24','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
(UUID(),'024461',52,'2021-02-23','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
(UUID(),'024466',33,'2021-02-22','13:00:00','16:00:00','reserved');


create table seatBooking.Feedback(
    id varchar(36) NOT NULL,
    employeeId varchar(36) NOT NULL,
    rating int NOT NULL,
    comments varchar(100),
    PRIMARY KEY (id),
	FOREIGN KEY (employeeId) REFERENCES Employee(id) ON DELETE CASCADE,
);


INSERT INTO seatBooking.Feedback (id,employeeId,rating)
VALUES
(UUID(),'024181', 4);
(UUID(),'024452', 5);
(UUID(),'024385', 3);
(UUID(),'024466', 4);
(UUID(),'024461', 5);

create index date_index on seatBooking.Reservation (dateOfBooking);
create index date_time_index on seatBooking.Reservation (dateOfBooking, bookingStartsAt, bookingEndsAt);