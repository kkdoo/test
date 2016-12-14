create table people (
  id int,
  name varchar(100)
);

create table pets (
  id int,
  owner_id int,
  name varchar(100)
);

insert into people values (1,'John');
insert into people values (2,'Steve');
insert into people values (3,'Mary');
insert into people values (4,'Doug');
insert into people values (5,'Mark');
insert into people values (6,'Helen');

insert into pets values (1,1,'Spot');
insert into pets values (2,1,'Bailey');
insert into pets values (3,3,'Max');
insert into pets values (4,4,'Charlie');
insert into pets values (5,4,'Lucy');
insert into pets values (6,7,'Maggie');
insert into pets values (7,4,'Daisy');

-- query 1:  write a query that shows people who have no pets
SELECT people.* FROM people LEFT JOIN pets ON people.id = pets.owner_id WHERE owner_id IS NULL;

-- query 2:  write a query that pets that don't have an owner
SELECT pets.* FROM pets LEFT JOIN people ON people.id = pets.owner_id WHERE people.id IS NULL;

-- query 3:  write one query, without using a stored procedure or cursor, that sets Helen as the owner of all pets who do not have an owner
WITH homeless AS (
  SELECT pets.id FROM pets LEFT JOIN people ON people.id = pets.owner_id WHERE people.id IS NULL
), new_owner AS (SELECT people.id FROM people WHERE people.name = 'Helen' LIMIT 1)
UPDATE pets SET owner_id = new_owner.id FROM homeless h, new_owner WHERE pets.id=h.id;
