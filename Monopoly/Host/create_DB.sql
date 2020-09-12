clear screen;

--delete existing table
drop table chance_cards cascade constraints;
drop table lands cascade constraints;

--Create chance_cards
create table chance_cards(
cid     integer, 
action   varchar2(200),
        PRIMARY KEY (cid)
);

--Create lands
create table lands(
lid     integer, 
name   varchar2(50),
color_group varchar2(10),
price integer,
rent integer,
owner integer,
        PRIMARY KEY (lid)
);

--Create bank
create table bank(
aid     integer, 
ammount integer,
        PRIMARY KEY (aid)
);

--Insert data into the chance_cards database
insert into chance_cards values(1, 'It is your birthday! collect $100 from the other player');
insert into chance_cards values(2, 'Pay Medical bill, $50');
insert into chance_cards values(3, 'Go to Jail');
insert into chance_cards values(4, 'Move to St. Clair Road. Collect $200 if you pass Go');
insert into chance_cards values(5, 'Youu just won a spelling bee. Here is your price, $200');
insert into chance_cards values(6, 'pay $50 for each of the lands you have purchased');


--Insert data into the lands database
insert into lands values(1, 'St. Clairs', 'Pink', 50, 25, 0);
insert into lands values(2, 'St. Patrick', 'Pink', 50, 25, 0);
insert into lands values(3, 'Greensborough', 'Green', 100, 50, 0);
insert into lands values(4, 'Charlotte', 'Green', 100, 50, 0);
insert into lands values(5, 'Queens', 'Red', 200, 100, 0);
insert into lands values(6, 'Jamaica', 'Red', 200, 100, 0);
insert into lands values(7, 'Utah', 'Red', 200, 100, 0);
insert into lands values(8, 'Station Jake', 'Blue', 50, 25, 0);
insert into lands values(9, 'Station Terrance', 'Blue', 50, 25, 0);


--Insert data into the bank database
insert into bank values(1, 200);
insert into bank values(2, 200);

commit;

--Display all data from three databases
select * from chance_cards;
select * from lands;
select * from bank;