SET search_path TO yelp_data;

ALTER TABLE yelp_review 
ADD COLUMN month int; 
ALTER TABLE yelp_review 
ADD COLUMN quarter int; 
ALTER TABLE yelp_review 
ADD COLUMN year int; 

UPDATE yelp_review 
SET month = EXTRACT(MONTH FROM TIMESTAMP correct_yelp_since);
UPDATE yelp_review 
SET quarter = EXTRACT(QUARTER FROM TIMESTAMP correct_yelp_since); 
UPDATE yelp_review 
SET year = EXTRACT(YEAR FROM TIMESTAMP correct_yelp_since); z