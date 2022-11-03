create database plan1;
use plan1;
create table customer(
PHONE_NUMBER varchar(10) primary key not null,
CUSTOMER_NAME varchar(20),
EMAIL_ID varchar(35),
ADDRESS varchar(50)
);

create table plan
(
PLAN_AMOUNT INT(8) NOT NULL PRIMARY KEY,
VALIDITY_INDAYS INT(4),
LOCAL_VOICE_INMINS_PERDAY_SN INT(3),
LOCAL_VOICE_INMINS_PERDAY_ON INT(3),
STD_VOICE_INMINS_PERDAY_SN INT(3),
STD_VOICE_INMINS_PERDAY_ON INT(3),
DATA_INGB_PERDAY decimal(3,1),
SMS_PERDAY INT(3),
PLAN_TYPE varchar(10)
);

create table subscription(
PHONE_NUMBER varchar(10),
PLAN_AMOUNT int(6),
RECHARGE_DATE date,
EXPIRY_DATE date
);

select * from plan;

alter table subscription
add foreign key(PHONE_NUMBER)references customer(PHONE_NUMBER),
add foreign key(PLAN_AMOUNT)references PLAN(PLAN_AMOUNT);
