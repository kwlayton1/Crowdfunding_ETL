---- Tables Schemata -------------------
CREATE TABLE category (
    category_id varchar(10) PRIMARY KEY,
    category varchar(30))
;
----------------------------------------
CREATE TABLE subcategory (
    subcategory_id varchar(10) PRIMARY KEY,
    subcategory varchar(30))
;
----------------------------------------
CREATE TABLE campaign (
    cf_id int,
    contact_id serial PRIMARY KEY,
    company_name varchar(60),
    description varchar(60),
    goal float,
    pledged float, 
    outcome varchar(10),
    backers_count int,
    country varchar(2),
    currency varchar(3),
    launched_date timestamp,
    end_date timestamp,
    staff_pick varchar(5),
    spotlight varchar(5),
    category varchar(30),
    subcategory varchar(30),
    category_id varchar(10) REFERENCES category (category_id) ON UPDATE CASCADE ON DELETE CASCADE,
    subcategory_id varchar(10) REFERENCES subcategory (subcategory_id) ON UPDATE CASCADE ON DELETE CASCADE
);
----------------------------------------
CREATE TABLE contacts (
    contact_id serial PRIMARY KEY,
    first_name varchar(20),
    last_name varchar(20),
    email varchar(60),
    -- Add an index on the foreign key column for better performance.
    CONSTRAINT fk_campaign_contact FOREIGN KEY (contact_id) REFERENCES campaign (contact_id)
);
----------------------------------------