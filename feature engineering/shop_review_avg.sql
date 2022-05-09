set search_path to yelp_data;

CREATE VIEW avg_review AS

SELECT business_id
    ,avg(useful) as avg_review_useful
    ,avg(funny) as avg_review_funny
    ,avg(cool) as avg_review_cool
FROM yelp_review re join yelp_coffee_info ci
        on re.business_id = ci.business_id
GROUP BY 1;