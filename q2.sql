SET SEARCH_PATH TO vacationschema, public;
DROP TABLE IF EXISTS q2 cascade;

CREATE TABLE q2(
    Capacity VARCHAR(10),
    NumProperty INTEGER,
    AverageRating SCORE
);

DROP VIEW IF EXISTS AtCapacityRents CASCADE;
DROP VIEW IF EXISTS AtCapacityRatings CASCADE;
DROP VIEW IF EXISTS BelowCapacityRents CASCADE;
DROP VIEW IF EXISTS BelowCapacityRatings CASCADE;

--A row in this table indicates an at-capacity rental.
CREATE VIEW AtCapacityRents AS 
	SELECT order_id
	FROM PropertyOrder JOIN PropertyInfo 
		ON PropertyOrder.property_id = PropertyInfo.property_id
	WHERE num_of_renters >= capacity;

--This table reports the average rating of all at-capacity rentals.
CREATE VIEW AtCapacityRatings AS 
	SELECT 'At' AS Capacity, count(property_id) AS NumProperty, avg(rating) AS AverageRating
	FROM AtCapacityRents JOIN PropertyRating 
		ON AtCapacityRents.order_id = PropertyRating.order_id;

--A row in this table indicates an below-capacity rental.
CREATE VIEW BelowCapacityRents AS 
	SELECT order_id
	FROM PropertyOrder JOIN PropertyInfo 
		ON PropertyOrder.property_id = PropertyInfo.property_id
	WHERE num_of_renters < capacity;

--This table reports the average rating of all below-capacity rentals.
CREATE VIEW BelowCapacityRatings AS 
	SELECT 'Below' AS Capacity, count(property_id) AS NumProperty, avg(rating) AS AverageRating
	FROM BelowCapacityRents JOIN PropertyRating 
		ON BelowCapacityRents.order_id = PropertyRating.order_id;

INSERT INTO q2
	(SELECT * FROM AtCapacityRatings)
	UNION
	(SELECT * FROM BelowCapacityRatings);