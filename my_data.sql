INSERT INTO HostInfo VALUES
(11, 'host1@gmail.com'),
(12, 'host2@gmail.com'),
(13, 'host1@gmali.com');

INSERT INTO PropertyInfo VALUES
(101, 11, 5, 5, '1 Spadina Ave', 5), -- both
(102, 11, 5, 5, '2 Spadina Ave', 6), -- water
(103, 12, 5, 4, '3 Spadina Ave', 7), -- city
(104, 12, 5, 4, '4 Spadina Ave', 8), -- city
(105, 13, 5, 3, '5 Spadina Ave', 10), -- neither
(106, 13, 5, 3, '6 Spadina Ave', 10); -- neither

INSERT INTO WaterProperty VALUES
(101, 'beach', true),
(101, 'lake', true),
(101, 'pool', false),
(102, 'beach', false);

INSERT INTO CityProperty VALUES
(101, 10, 'LRT'),
(103, 50, 'bus'),
(104, 100, 'subway');

-- INSERT INTO PropertyHost VALUES
-- (101, 11),
-- (102, 11),
-- (103, 12),
-- (104, 12),
-- (105, 13);

INSERT INTO Price VALUES
(101, '2019-11-02', 1000),
(102, '2019-11-02', 800),
(103, '2019-11-02', 700),
(104, '2019-11-02', 500),
(105, '2019-11-02', 100),
(106, '2019-11-02', 100),
(101, '2019-11-09', 1500),
(102, '2019-11-09', 700),
(103, '2019-11-09', 600),
(104, '2019-11-09', 400),
(105, '2019-11-09', 100),
(101, '2019-11-16', 1200),
(102, '2019-11-16', 1000),
(103, '2019-11-16', 400),
(104, '2019-11-16', 200),
(105, '2019-11-16', 200);

INSERT INTO Services VALUES
(101, true, true, true, true, true, true),
(102, true, true, true, true, true, true),
(103, true, false, true, true, true, false),
(104, true, true, true, false, false, false),
(105, true, false, false, false, false, false),
(106, true, false, false, false, false, false);

INSERT INTO Guest VALUES
(1001, 'guest1', '1998-01-01', '1 St.George St'),
(1002, 'guest2', '2001-11-02', '1 St.George St'),
(1003, 'guest3', '1994-01-01', '1 St.George St'),
(1004, 'guest4', '1997-01-01', '1 St.George St'),
(1005, 'guest5', '2004-01-01', '1 St.George St'),
(1006, 'guest6', '1999-01-01', '2 St.George St'),
(1007, 'guest7', '2001-11-03', '2 St.George St'),
(1008, 'guest8', '2001-11-04', '2 St.George St'),
(1009, 'guest9', '2001-11-01', '3 St.George St'),
(1010, 'guest10', '2001-11-08', '4 St.George St'),
(1011, 'guest11', '1998-01-01', '4 St.George St'),
(1012, 'guest12', '1998-01-01', '4 St.George St'),
(1013, 'guest13', '1998-01-01', '4 St.George St'),
(1014, 'guest14', '1998-01-01', '4 St.George St'),
(1015, 'guest15', '1998-01-01', '5 St.George St'),
(1016, 'guest16', '1998-01-01', '5 St.George St');

INSERT INTO PropertyOrder VALUES
(10001, 1001, 101, '2019-11-02', 2, 4, 0000000000000000),
(10002, 1006, 102, '2019-11-02', 1, 5, 0000000000000001),
(10003, 1007, 103, '2019-11-02', 1, 2, 0000000000000002),
(10004, 1011, 104, '2019-11-02', 1, 1, 0000000000000003),
(10005, 1014, 105, '2019-11-09', 1, 0, 0000000000000004),
(10006, 1015, 102, '2019-11-09', 1, 1, 0000000000000005),
(10007, 1016, 104, '2019-11-09', 1, 0, 0000000000000006),
(10008, 1002, 101, '2019-11-16', 1, 0, 0000000000000007);

INSERT INTO RentInfo VALUES
(10001, 1001),
(10001, 1002),
(10001, 1003),
(10001, 1004),
(10001, 1005),
(10002, 1006),
(10002, 1008),
(10002, 1009),
(10002, 1010),
(10002, 1011),
(10002, 1012),
(10003, 1013),
(10003, 1007),
(10003, 1014),
(10004, 1015),
(10004, 1011),
(10005, 1014),
(10006, 1015),
(10006, 1010),
(10007, 1016),
(10008, 1002);

INSERT INTO PropertyRating VALUES
(10001, 1001, 5),
(10001, 1002, 5),
(10002, 1008, 4),
(10002, 1009, 5),
(10002, 1010, 4),
(10005, 1014, 3),
(10006, 1010, 4);

INSERT INTO HostRating VALUES
(10001, 1001, 5),
(10002, 1006, 5),
(10005, 1014, 3),
(10006, 1015, 5),
(10007, 1016, 5);

INSERT INTO Comments VALUES
(10001, 1001, 'Excellent!'),
(10005, 1014, 'Soso!'),
(10006, 1010, 'OK!');


