CREATE DATABASE "stat170-project"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE SCHEMA IF NOT EXISTS yelp_data;
SET search_path TO yelp_data,public;