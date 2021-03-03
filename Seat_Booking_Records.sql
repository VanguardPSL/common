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
('31c399c7-24fa-48b5-b9c1-210b420c967c', 1, 'C1', 1, 'Pingala', 'none', True), ('c27ce7a3-b5e8-401b-a1ab-754eaa1e467e', 2, 'C1', 1, 'Pingala', 'none', True), ('28a21be9-9fd1-48b3-8fc8-98091bfa763b', 3, 'C1', 1, 'Pingala', 'none', True), ('9f56059e-f6e3-4d4f-a9bc-7c55363f73dd', 4, 'C1', 1, 'Pingala', 'none', True), ('47ffc3af-19c8-479e-a87d-ac8f2e528546', 1, 'C2', 1, 'Pingala', 'none', True), ('3b5000bc-9d07-4573-b81f-cd00791b344d', 2, 'C2', 1, 'Pingala', 'none', True), ('57fe82bd-7939-4bf0-b978-ea86d26b3c35', 3, 'C2', 1, 'Pingala', 'none', True), ('be4e2482-4052-4a39-9ebc-fd4925b00bcc', 4, 'C2', 1, 'Pingala', 'none', True), ('8565be4a-ea1f-429b-8657-ccf9725bf8cf', 2, 'C1', 2, 'Pingala', 'none', True), ('ed5ec9f5-dfe7-482d-887c-11981492a60c', 4, 'C1', 2, 'Pingala', 'none', True), ('7b576fcc-e054-40e9-847c-238811dcd26e', 1, 'C2', 2, 'Pingala', 'none', True), ('bd55957f-9137-418a-9805-10da8ac8e445', 3, 'C2', 2, 'Pingala', 'none', True), ('b967573f-1536-4c79-80f2-0efdf17d060c', 1, 'C1', 1, 'Aryabhatta', 'none', True), ('51b126cd-d69b-479d-8323-c9b37c6bb6f2', 2, 'C1', 1, 'Aryabhatta', 'none', True), ('89478161-82a7-442a-a050-8747135d7872', 3, 'C2', 1, 'Aryabhatta', 'none', True), ('4a19fb63-14ed-41c8-a0c1-9c6ac7d83c25', 4, 'C2', 1, 'Aryabhatta', 'none', True), ('788714df-d311-4dd3-a180-378f0bb5c33a', 1, 'C3', 1, 'Aryabhatta', 'none', True), ('a5baaca8-620d-45f5-93eb-6eef1cff702f', 3, 'C3', 1, 'Aryabhatta', 'none', True), ('18dd6638-1a1c-49da-b266-ef478f1275a8', 1, 'C1', 2, 'Aryabhatta', 'none', True), ('494118e4-ecdc-46e0-a713-fa9ecd2c6e76', 2, 'C1', 2, 'Aryabhatta', 'none', True), ('293aeba1-4625-4a08-8fef-236ee91acf5d', 3, 'C2', 2, 'Aryabhatta', 'none', True), ('6deb8a2d-6cfd-40ad-a75f-4110e62b595d', 4, 'C2', 2, 'Aryabhatta', 'none', True), ('1819e433-b61d-4623-921d-a140c65d341f', 1, 'C3', 2, 'Aryabhatta', 'none', True), ('8a3395d2-5784-4fec-b572-e0a2fb39e6a2', 3, 'C3', 2, 'Aryabhatta', 'none', True), ('32f83300-43e8-4fee-813e-f3cf08c5ff41', 1, 'C1', 1, 'Yajurveda', 'none', True), ('a9f8a24c-a845-4c24-a969-64d745d6b372', 3, 'C1', 1, 'Yajurveda', 'none', True), ('d889b08f-a78f-4e1f-bad8-efce98dafd36', 2, 'C2', 1, 'Yajurveda', 'none', True), ('0fb6f864-5960-4d6e-8ec6-22cbf6883a9f', 4, 'C2', 1, 'Yajurveda', 'none', True), ('5b1ffe6d-84c2-4ef1-b041-dee8e6205ffc', 1, 'C1', 2, 'Yajurveda', 'none', True), ('dee4b5aa-550d-409a-9ee4-a526f7b56aa6', 3, 'C1', 2, 'Yajurveda', 'none', True), ('b204ef28-3bc9-438b-9e24-45560f0531a6', 2, 'C2', 2, 'Yajurveda', 'none', True), ('eb7b8f9b-dbe9-427b-b667-403bfbc31d2e', 4, 'C2', 2, 'Yajurveda', 'none', True), ('660d28d5-5fa1-47c9-a93c-d9f8c6791663', 1, 'C1', 1, 'Maitreyi', 'none', True), ('f406cf4b-72c5-4494-a8ae-d5ee459e6a93', 3, 'C1', 1, 'Maitreyi', 'none', True), ('707f93e1-c0af-4de9-a8ba-4de07acbddf6', 2, 'C2', 1, 'Maitreyi', 'none', True), ('cefc5142-caa8-4e9a-bb7a-2cdab61aad67', 4, 'C2', 1, 'Maitreyi', 'none', True), ('f26c469e-4c5b-4174-9834-5ae7b7b0f3fb', 1, 'C1', 2, 'Maitreyi', 'none', True), ('58138ac3-1749-4475-b4a0-676bb764a2b9', 3, 'C1', 2, 'Maitreyi', 'none', True), ('54c7e38e-525a-4411-8d29-0375aff23f54', 2, 'C2', 2, 'Maitreyi', 'none', True), ('ac58cb8d-ba81-4cc2-bc09-973e53c4192e', 4, 'C2', 2, 'Maitreyi', 'none', True), ('6909d1b0-2c7c-40d1-b143-58ca5ad76222', 1, 'C1', 1, 'Gargi', 'none', True), ('600db8ee-ae8c-432d-854b-e20837352911', 3, 'C1', 1, 'Gargi', 'none', True), ('3eb9fd5d-209e-4d4b-9b38-7d262d5cdacd', 2, 'C2', 1, 'Gargi', 'none', True), ('f72e58ef-af89-4581-839b-cfe49d1a1e52', 4, 'C2', 1, 'Gargi', 'none', True), ('b0c91c98-9982-4c9d-8671-942fd432ccbf', 1, 'C1', 2, 'Gargi', 'none', True), ('968b4573-8229-4f67-af17-28625b321991', 3, 'C1', 2, 'Gargi', 'none', True), ('43a46c42-6b90-4966-a698-e20fc23f2bed', 2, 'C2', 2, 'Gargi', 'none', True), ('65db3605-6f8e-46e4-87d3-d688912d32a0', 4, 'C2', 2, 'Gargi', 'none', True), ('bc2909e1-788f-4c72-a827-4005629475c8', 1, 'C1', 1, 'Bhaskar', 'north', True), ('5b9376f8-bd63-4081-b87a-345d95611450', 3, 'C1', 1, 'Bhaskar', 'north', True), ('583defc3-31fa-4b14-ba7f-2288ad517ace', 2, 'C2', 1, 'Bhaskar', 'south', True), ('b4e5a72d-80cc-4939-b3b3-80fa6520927e', 4, 'C2', 1, 'Bhaskar', 'south', True), ('1b4f0cd2-ddf9-4d41-bbf6-791d13c4573c', 1, 'C1', 2, 'Bhaskar', 'north', True), ('ad5e1677-87d9-4f25-bc06-f461a4a1a4fe', 3, 'C1', 2, 'Bhaskar', 'north', True), ('37cc7a48-2a04-4c9c-8d07-02ed39ed05f2', 2, 'C2', 2, 'Bhaskar', 'south', True), ('c41aebc7-1620-45b5-9714-db9e92ab63a7', 4, 'C2', 2, 'Bhaskar', 'south', True);

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
('2736659e-0abe-4fa9-8974-aba4829577b6','024181','968b4573-8229-4f67-af17-28625b321991','2021-02-21','14:00:00','17:00:00','occupied','14:05:00','17:00:00'),
('d9b7580d-e5c5-4eb2-b372-cbe4da82f156','024181','494118e4-ecdc-46e0-a713-fa9ecd2c6e76','2021-02-22','14:00:00','17:00:00','occupied','14:15:00','16:30:00'),
('c13a9196-e455-4d7b-bcb1-b98071db6cd8','024181','f72e58ef-af89-4581-839b-cfe49d1a1e52','2021-02-23','14:00:00','17:00:00','occupied','14:15:00','16:30:00'),
('b11e1533-b2e1-4f27-bc07-8b395134b68c','024181','8565be4a-ea1f-429b-8657-ccf9725bf8cf','2021-02-24','14:00:00','17:00:00','occupied','14:15:00','16:30:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
('9bf33947-c643-478b-96b8-61b812265dd7','024181','707f93e1-c0af-4de9-a8ba-4de07acbddf6','2021-02-25','14:00:00','17:00:00','reserved');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('1019a021-26b0-4a43-adb4-d5420d46c5c9','024452','293aeba1-4625-4a08-8fef-236ee91acf5d','2021-02-20','11:00:00','17:00:00','occupied','11:10:00','17:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
('40175e57-ea96-496a-a071-473c6cd91eea','024452','31c399c7-24fa-48b5-b9c1-210b420c967c','2021-02-21','13:00:00','16:00:00','cancelled');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('f9112019-9a81-48bf-9fb6-1cdd65afd79b','024452','dee4b5aa-550d-409a-9ee4-a526f7b56aa6','2021-02-22','13:00:00','16:00:00','occupied','13:20:00','16:20:00');


INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('6b9eb9d8-35aa-439b-abcc-74231e736002','024385','3b5000bc-9d07-4573-b81f-cd00791b344d','2021-02-23','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('dac54848-618d-4ca5-9505-c399fb6557f8','024385','494118e4-ecdc-46e0-a713-fa9ecd2c6e76','2021-02-24','13:00:00','16:00:00','occupied','13:10:00','15:50:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('ffa08bf3-a16d-4a95-989a-cd6ffeedcece','035163','3eb9fd5d-209e-4d4b-9b38-7d262d5cdacd','2021-02-22','09:00:00','15:00:00','occupied','09:20:00','14:45:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('418efc61-7fa9-407f-9cfd-99042c382e0c','035163','707f93e1-c0af-4de9-a8ba-4de07acbddf6','2021-02-23','09:00:00','15:00:00','occupied','09:20:00','14:45:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('655a7285-c137-4401-9b2f-00ce59c3f3cf','024461','8565be4a-ea1f-429b-8657-ccf9725bf8cf','2021-02-24','09:00:00','15:00:00','occupied','09:20:00','14:50:00');


INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('dba48201-d701-41cd-beb5-64a90e1924ea','024461','b967573f-1536-4c79-80f2-0efdf17d060c','2021-02-24','15:00:00','18:00:00','occupied','15:20:00','17:50:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('0e87bd16-0307-463c-8c64-e480fdaacd20','024466','660d28d5-5fa1-47c9-a93c-d9f8c6791663','2021-02-23','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('82817876-5dda-4fc3-abd6-fb24c26a7156','024466','bc2909e1-788f-4c72-a827-4005629475c8','2021-02-24','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId,occupiedFrom,occupiedTill)
VALUES
('9912dd34-1112-442e-967c-07ac5f71eda8','024461','600db8ee-ae8c-432d-854b-e20837352911','2021-02-23','13:00:00','16:00:00','occupied','13:20:00','16:20:00');

INSERT INTO seatBooking.Reservation (id,employeeId,seatId,dateOfBooking,bookingStartsAt,bookingEndsAt,bookingStatusId)
VALUES
('7e4c065a-d2e9-425f-8669-65fd49581246','024466','660d28d5-5fa1-47c9-a93c-d9f8c6791663','2021-02-22','13:00:00','16:00:00','reserved');


create table seatBooking.Feedback(
    id varchar(36) NOT NULL,
    employeeId varchar(36) NOT NULL,
    rating int NOT NULL,
    comments varchar(100),
    PRIMARY KEY (id),
	FOREIGN KEY (employeeId) REFERENCES Employee(id) ON DELETE CASCADE
);


INSERT INTO seatBooking.Feedback (id,employeeId,rating)
VALUES
('0861217e-2a80-416d-a262-5c1721762bd6', '024181', 4);
('5d3d8b25-eb48-4296-9c3a-5d3e120ace4f', '024452', 5);
('5974a2f5-5251-45b5-bd92-90577d96d547', '024385', 3);
('594cde7b-babb-4fe1-92d3-068fd0c3ca89', '024466', 4);
('11d21ff0-2374-4a0d-87cd-119c923a1303', '024461', 5);

create index date_index on seatBooking.Reservation (dateOfBooking);
create index date_time_index on seatBooking.Reservation (dateOfBooking, bookingStartsAt, bookingEndsAt);
