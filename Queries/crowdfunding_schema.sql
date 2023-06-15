drop table if exists category;
CREATE TABLE category (
	category_id varchar primary key unique NOT NULL,
	category varchar

);

drop table if exists subcategory;
CREATE TABLE subcategory (
	subcategory_id varchar primary key unique NOT NULL,
	sub_category varchar
);

drop table if exists contacts;
CREATE TABLE contacts (
	contact_id int primary key unique NOT NULL,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null
);


CREATE TABLE campaign (
	cf_id int primary key unique not null,
	customer_id int not null,
	company_name varchar,
	description varchar,
	goal float,
	pledged float,
	outcome varchar not null,
	backers_count int,
	country varchar,
	currency varchar,
	launched_at DATE NOT NULL,
	end_date DATE,
	staff_pick BOOLEAN,
	spotlight BOOLEAN,
	category_id varchar not null,
	subcategory_id varchar not null,
	FOREIGN KEY (customer_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);



select * from campaign;
select * from category;
select * from subcategory;
select * from contacts;