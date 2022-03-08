-- Database: stat170-project

-- DROP DATABASE IF EXISTS "stat170-project";

CREATE DATABASE "stat170-project"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;


CREATE SCHEMA IF NOT EXISTS yelp_data;
SET search_path TO yelp_data;

CREATE TABLE shop_info(
	business_id text not null,
	name text,
	address text,
	city text,
	state text,
	postal_code text,
	latitude float,
	longitude float,
	stars int,
	review_count int,
	is_open bool,
	other_att text,
	hours text,
	primary key(business_id)
);

CREATE TABLE shop_category(
	business_id text not null,
	category text,
	primary key(business_id, category)
);

CREATE TABLE review(
	review_id text not null,
	user_id text not null,
	business_id text not null,
	stars float,
	useful int,
	funny int,
	cool int,
	text text,
	date time,
	primary key(review_id)
);

COPY review FROM ".\\yelp_academic_dataset_review.csv" CSV HEADER
