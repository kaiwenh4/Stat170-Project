SET search_path TO yelp_data;
CREATE TABLE shop_distance(
	business_id text not null,
	less_100m int,
    less_500m int,
    less_1km int,
    less_5km int,
    less_10km int,
    less_50km int,
	primary key(business_id)
);