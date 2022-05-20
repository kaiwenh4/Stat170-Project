 SELECT *
   FROM yelp_data.yelp_coffee_info_processed
     LEFT JOIN yelp_data.yelp_photo_count USING (business_id)
     LEFT JOIN yelp_data.user_aver_for_shop USING (business_id)
     LEFT JOIN yelp_data.state_code ON yelp_coffee_info_processed.state = state_code.code
     LEFT JOIN yelp_data.census_bureau_final ON state_code.state_state = census_bureau_final.full_state
     LEFT JOIN yelp_data.google_place_distance USING (business_id)
     LEFT JOIN yelp_data.yelp_yolo_by_shop USING (business_id);