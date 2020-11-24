
create table addressClient( 
    address_id INTEGER PRIMARY KEY,   
    address Varchar(50) NOT NULL,
    phone_number INTEGER
    );

insert into addressClient (address_id, address, phone_number) 
values (10, '12 S Adams st, McLean VA', 123343322);

insert into addressClient (address_id, address, phone_number) 
values (12, '20 S Adams st, McLean VA', 938924729);

select * from addressClient;


create table customer ( 

customer_id INTEGER PRIMARY KEY,   
first_name VARCHAR(30) NOT NULL,
address_id INTEGER references addressClient (address_id)
);

insert into customer (customer_id, first_name, address_id) 
values (1, 'Alex', 10);

insert into customer (customer_id, first_name, address_id) 
values (2, 'Max',  12);

select * from customer;

update customer set first_name = 'Alexander'
where first_name = 'Alex';

select * from customer;

delete from customer 
where customer_id = 2;

select * from customer;

commit;

select * from customer;

delete from customer 
where customer_id = 1;

select * from customer;

alter table customer drop column "Last Name";

alter table customer drop column last_name;

select * from customer;

insert into customer (customer_id, first_name, address_id) 
values (1, 'Alex', 10);

insert into customer (customer_id, first_name, address_id) 
values (2, 'Max',  12);

select * from customer;

alter table customer rename to Clients ;

select * from Clients;

commit;

select * from addressClient;

drop table Clients; 


select * from addressClient;

truncate table addressClient;

select * from addressClient;

commit work;





