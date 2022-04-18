set search_path to yelp_data;

ALTER TABLE review ADD IF NOT EXISTS correct_date TIMESTAMP;