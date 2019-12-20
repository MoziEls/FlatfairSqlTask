
create table f_sales
(
	agent_id int,
	customer_id int,
	sales_date date,
	sales_amount numeric(12,2)
);

create table d_customer
(
	customer_id int,
	country varchar(2),
	dob date,
	start_date date,
	end_date date,
	current_record varchar(1)
);

create table d_agent
(
	agent_id integer,
	parent_agent_id integer,
	commission_percent double precision,
	agent_name varchar(100),
	agent_type varchar(10),
	start_date date,
	end_date date,
	current_record varchar(1)
);

insert into f_sales values(1,1,'2019-09-12',3);
insert into f_sales values(1,2,'2019-09-10',3);
insert into f_sales values(1,3,'2019-09-11',3);
insert into f_sales values(1,3,'2019-09-12',3);
insert into f_sales values(1,4,'2019-09-11',2);
insert into f_sales values(2,5,'2019-09-22',4);
insert into f_sales values(2,6,'2019-09-23',5);
insert into f_sales values(1,7,'2019-09-09',3);
insert into f_sales values(3,8,'2019-09-10',4);


select * from f_sales;

ALTER TABLE d_customer 
alter COLUMN country type varchar(25);


insert into d_customer(customer_id ,country,dob) values (1,'usa','1995-08-07');
insert into d_customer(customer_id ,country,dob) values (2,'china','2005-08-07');
insert into d_customer(customer_id ,country,dob) values (3,'uk','1984-02-07');
insert into d_customer(customer_id ,country,dob) values (4,'France','1994-02-07');
insert into d_customer(customer_id ,country,dob) values (5,'Germany','1984-02-07');
insert into d_customer(customer_id ,country,dob) values (6,'china','1984-02-07');
insert into d_customer(customer_id ,country,dob) values (4,'France','1994-02-07');
insert into d_customer(customer_id ,country,dob) values (3,'usa','1974-02-07');
insert into d_customer(customer_id ,country,dob) values (2,'china','2005-08-07');

select * from d_customer;
