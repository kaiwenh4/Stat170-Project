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

CREATE TABLE tip(
	user_id text not null,
	business_id text not null,
	text text,
	date time,
	compliment_count int,
	primary key(user_id, business_id, date)
);

CREATE TABLE user_info(
	user_id text not null,
	name text,
	review_count int,
	yelping_since time,
	useful int,
	funny int, 
	cool int, 
	elite text,
	friends text,
	fans int,
	average_stars float, 
	compliment_hot int,
	compliment_more int,
	compliment_profile int,
	compliment_cute int,
	compliment_list int, 
	compliment_note int,
	compliment_plain int,
	compliment_cool int,
	compliment_funny int,
	compliment_writer int, 
	compliment_photos int,
	primary key(user_id)
);

CREATE TABLE checkin(
	business_id text not null,
	date text,
	primary key(business_id)
);

CREATE TABLE photo(
	photo_id text not null,
	business_id text not null,
	caption text,
	labal text,
	primary key(photo_id)
);