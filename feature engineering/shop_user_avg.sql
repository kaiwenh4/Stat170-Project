set search_path to yelp_data;

CREATE INDEX re_bid ON yelp_review(business_id);
CREATE INDEX shop_bid ON yelp_coffee_info(business_id);
CREATE INDEX uid ON yelp_user_info(user_id);

CREATE VIEW user_aver_for_shop AS
SELECT t1.business_id
	,avg(ui.average_stars) as avg_stars
	,avg(ui.review_count) as avg_review_count
	,avg(ui.useful) as avg_useful
	,avg(ui.funny) as avg_funny
	,avg(ui.cool) as avg_cool
	,avg(fans) as avg_fans
	,avg(compliment_hot) as avg_compliment_hot
	,avg(compliment_more) as avg_compliment_more
	,avg(compliment_profile) as avg_compliment_profile
	,avg(compliment_cute) as avg_compliment_cute
	,avg(compliment_list) as avg_compliment_list
	,avg(compliment_note) as avg_compliment_note
	,avg(compliment_plain) as avg_compliment_plain
	,avg(compliment_cool) as avg_compliment_cool
	,avg(compliment_funny) as avg_compliment_funny
	,avg(compliment_writer) as avg_compliment_writer
	,avg(compliment_photos) as avg_compliment_photos
	,avg(LOCALTIMESTAMP - correct_yelp_since) as yelp_years
	,avg(combined_compliment) as avg_total_compliment
FROM (SELECT re.business_id, re.user_id
	 FROM yelp_review re join yelp_shop_info si on re.business_id = si.business_id) t1 
	 join yelp_user_info ui on t1.user_id = ui.user_id
GROUP BY 1;
