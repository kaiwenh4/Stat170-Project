set search_path to yelp_data;

CREATE INDEX bid ON review(business_id);
CREATE INDEX bid ON shop_info(business_id);
CREATE INDEX uid ON user_info(user_id);

CREATE VIEW user_aver_for_shop AS
SELECT t1.business_id, avg(ui.average_stars)
FROM (SELECT re.business_id, re.user_id
	 FROM review re join shop_info si on re.business_id = si.business_id) t1 
	 join user_info ui on t1.user_id = ui.user_id
GROUP BY 1;

