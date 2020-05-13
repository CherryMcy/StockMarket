DROP TABLE company;
CREATE TABLE company (id bigint NOT NULL, board_of_directors varchar(255) NOT NULL, brief_writeup longtext NOT NULL, ceo varchar(255) NOT NULL, company_name varchar(255) NOT NULL, turnover float NOT NULL, sector_id bigint NOT NULL, PRIMARY KEY (id), INDEX FKmumulhrkylrdxsl33736gudi6 (sector_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO company (id, board_of_directors, brief_writeup, ceo, company_name, turnover, sector_id) VALUES (18, 'Jing  Bruce  Tom', 'At IBM Research, we invent things that matter to the world. Today, we are pioneering the most promising and disruptive technologies that will transform industries and society, including the future of AI, blockchain and quantum computing. We are driven to discover. With more than 3,000 researchers in 12 labs located across six continents, IBM Research is one of the world¡¯s largest and most influential corporate research labs.', 'Bruce', 'IBM', 300000.0, 8);
INSERT INTO company (id, board_of_directors, brief_writeup, ceo, company_name, turnover, sector_id) VALUES (108, 'James George', 'IBM researchers from our labs around the world will present more than 100 papers across regular sessions and workshops at NeurIPS. They are all focused on different core technologies and use cases of AI. And a number of them will be on display in booth #111 with demos scientists will be presenting throughout the week.', 'King', 'SAP', 450000.0, 10);
INSERT INTO company (id, board_of_directors, brief_writeup, ceo, company_name, turnover, sector_id) VALUES (109, 'Stephen Joson', 'Museum of Science Boston unveils new temporary exhibit featuring IBM Q System One ', 'Spirng boot', 'Oracle', 600000.0, 9);
INSERT INTO company (id, board_of_directors, brief_writeup, ceo, company_name, turnover, sector_id) VALUES (110, 'Jons   TestMan', 'computing patents in 2018, including a patent on a specialized monitor for unikernel-based virtual machines that takes a lightweight approach to improving isolation and security between a cloud application and its host, while also reducing provisioning times and improving performance. The approach is related to IBM¡¯s research in container security and could enable organizations to more easily move data and applications securely across cloud and on-premises environments.', 'Spring Cloud', 'RedHat', 900000.0, 11);
DROP TABLE company_and_exchange;
CREATE TABLE company_and_exchange (company_id bigint NOT NULL, exchange_id bigint NOT NULL, stock_code varchar(255) NOT NULL, PRIMARY KEY (company_id, exchange_id), INDEX FKd81tri4imok5k36pmu8u26ixd (exchange_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO company_and_exchange (company_id, exchange_id, stock_code) VALUES (18, 14, 'SZ000001');
INSERT INTO company_and_exchange (company_id, exchange_id, stock_code) VALUES (18, 102, 'SZ000023');
INSERT INTO company_and_exchange (company_id, exchange_id, stock_code) VALUES (108, 14, 'SZ000045');
INSERT INTO company_and_exchange (company_id, exchange_id, stock_code) VALUES (109, 14, 'SZ000012');
INSERT INTO company_and_exchange (company_id, exchange_id, stock_code) VALUES (109, 102, 'SZ000056');
INSERT INTO company_and_exchange (company_id, exchange_id, stock_code) VALUES (110, 14, 'SZ000002');
INSERT INTO company_and_exchange (company_id, exchange_id, stock_code) VALUES (110, 102, 'SZ000004');
DROP TABLE hibernate_sequence;
CREATE TABLE hibernate_sequence (next_val bigint) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO hibernate_sequence (next_val) VALUES (2344);
INSERT INTO hibernate_sequence (next_val) VALUES (2344);
INSERT INTO hibernate_sequence (next_val) VALUES (2344);
INSERT INTO hibernate_sequence (next_val) VALUES (2344);
INSERT INTO hibernate_sequence (next_val) VALUES (2344);
DROP TABLE ipo_details;
CREATE TABLE ipo_details (id bigint NOT NULL, open_date datetime NOT NULL, price float NOT NULL, remarks varchar(255), total_shares int NOT NULL, company_id bigint NOT NULL, exchange_id bigint NOT NULL, PRIMARY KEY (id), INDEX FKek03rhtf07rhluv1kles21w4r (company_id), INDEX FKicuvpno08x573c054b1fqdm1w (exchange_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO ipo_details (id, open_date, price, remarks, total_shares, company_id, exchange_id) VALUES (20, '1970-01-16 00:00:00', 56.0, null, 50000, 18, 14);
INSERT INTO ipo_details (id, open_date, price, remarks, total_shares, company_id, exchange_id) VALUES (104, '2019-12-13 00:00:00', 55.0, '', 566000, 18, 102);
INSERT INTO ipo_details (id, open_date, price, remarks, total_shares, company_id, exchange_id) VALUES (105, '2019-12-13 00:00:00', 67.0, '', 234000, 18, 14);
INSERT INTO ipo_details (id, open_date, price, remarks, total_shares, company_id, exchange_id) VALUES (106, '2019-12-01 00:00:00', 89.0, '', 4563200, 18, 14);
INSERT INTO ipo_details (id, open_date, price, remarks, total_shares, company_id, exchange_id) VALUES (107, '2019-10-19 00:00:00', 23.0, 'AAAA rating', 234000, 18, 14);
INSERT INTO ipo_details (id, open_date, price, remarks, total_shares, company_id, exchange_id) VALUES (2272, '2019-12-10 00:00:00', 89.0, '', 90000, 110, 14);
DROP TABLE sector;
CREATE TABLE sector (id bigint NOT NULL, name varchar(255) NOT NULL, PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO sector (id, name) VALUES (8, 'Banks Pvt. Sector');
INSERT INTO sector (id, name) VALUES (9, 'Hotels');
INSERT INTO sector (id, name) VALUES (10, 'Food Processing');
INSERT INTO sector (id, name) VALUES (11, 'Consumer Goods - Electronics');
DROP TABLE stock_exchange;
CREATE TABLE stock_exchange (id bigint NOT NULL, address varchar(255) NOT NULL, brief varchar(255) NOT NULL, code varchar(255) NOT NULL, remarks varchar(255) NOT NULL, PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO stock_exchange (id, address, brief, code, remarks) VALUES (14, 'China', 'Bombay Stock Exchange', 'BSE', '');
INSERT INTO stock_exchange (id, address, brief, code, remarks) VALUES (102, 'China', 'National Stock Exchange', 'NSE', '');
DROP TABLE stock_price;
CREATE TABLE stock_price (id bigint NOT NULL, price float NOT NULL, timestamp datetime NOT NULL, company_id bigint NOT NULL, exchange_id bigint NOT NULL, PRIMARY KEY (id), INDEX FKjavcfro8axnb5qkgkyxfoobsm (company_id), INDEX FKt9gdlb2cylesey611hifm0hpp (exchange_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (231, 357.23, '2019-11-01 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (232, 361.23, '2019-11-01 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (233, 376.23, '2019-11-01 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (234, 366.23, '2019-11-01 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (235, 374.23, '2019-11-01 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (236, 376.23, '2019-11-01 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (237, 358.23, '2019-11-01 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (238, 368.23, '2019-11-01 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (239, 369.23, '2019-11-01 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (240, 364.23, '2019-11-01 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (241, 364.23, '2019-11-01 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (242, 375.23, '2019-11-01 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (243, 373.23, '2019-11-01 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (244, 376.23, '2019-11-01 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (245, 373.23, '2019-11-01 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (246, 372.23, '2019-11-01 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (247, 375.23, '2019-11-01 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (248, 374.23, '2019-11-01 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (249, 364.23, '2019-11-01 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (250, 369.23, '2019-11-01 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (251, 369.23, '2019-11-01 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (252, 368.23, '2019-11-01 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (253, 363.23, '2019-11-01 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (254, 363.23, '2019-11-01 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (255, 360.23, '2019-11-01 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (256, 367.23, '2019-11-01 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (257, 363.23, '2019-11-01 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (258, 358.23, '2019-11-01 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (259, 366.23, '2019-11-01 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (260, 358.23, '2019-11-01 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (261, 358.23, '2019-11-01 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (262, 363.23, '2019-11-01 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (263, 367.23, '2019-11-01 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (264, 358.23, '2019-11-01 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (265, 371.23, '2019-11-01 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (266, 357.23, '2019-11-01 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (267, 362.23, '2019-11-01 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (268, 362.23, '2019-11-01 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (269, 364.23, '2019-11-01 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (270, 361.23, '2019-11-01 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (271, 374.23, '2019-11-01 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (272, 362.23, '2019-11-01 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (273, 361.23, '2019-11-01 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (274, 357.23, '2019-11-01 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (275, 370.23, '2019-11-01 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (276, 368.23, '2019-11-01 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (277, 364.23, '2019-11-01 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (278, 361.23, '2019-11-01 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (279, 359.23, '2019-11-01 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (280, 376.23, '2019-11-01 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (281, 357.23, '2019-11-01 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (282, 373.23, '2019-11-01 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (283, 358.23, '2019-11-01 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (284, 360.23, '2019-11-01 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (285, 368.23, '2019-11-01 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (286, 372.23, '2019-11-01 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (287, 359.23, '2019-11-01 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (288, 366.23, '2019-11-01 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (289, 371.23, '2019-11-01 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (290, 375.23, '2019-11-01 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (291, 360.23, '2019-11-01 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (292, 360.23, '2019-11-01 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (293, 376.23, '2019-11-01 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (294, 375.23, '2019-11-01 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (295, 360.23, '2019-11-01 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (296, 364.23, '2019-11-01 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (331, 367.23, '2019-11-02 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (332, 351.23, '2019-11-02 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (333, 368.23, '2019-11-02 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (334, 366.23, '2019-11-02 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (335, 365.23, '2019-11-02 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (336, 367.23, '2019-11-02 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (337, 357.23, '2019-11-02 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (338, 369.23, '2019-11-02 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (339, 354.23, '2019-11-02 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (340, 357.23, '2019-11-02 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (341, 367.23, '2019-11-02 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (342, 370.23, '2019-11-02 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (343, 358.23, '2019-11-02 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (344, 358.23, '2019-11-02 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (345, 361.23, '2019-11-02 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (346, 358.23, '2019-11-02 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (347, 361.23, '2019-11-02 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (348, 366.23, '2019-11-02 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (349, 368.23, '2019-11-02 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (350, 355.23, '2019-11-02 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (351, 363.23, '2019-11-02 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (352, 370.23, '2019-11-02 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (353, 357.23, '2019-11-02 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (354, 367.23, '2019-11-02 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (355, 366.23, '2019-11-02 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (356, 369.23, '2019-11-02 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (357, 370.23, '2019-11-02 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (358, 363.23, '2019-11-02 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (359, 357.23, '2019-11-02 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (360, 366.23, '2019-11-02 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (361, 361.23, '2019-11-02 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (362, 361.23, '2019-11-02 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (363, 355.23, '2019-11-02 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (364, 355.23, '2019-11-02 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (365, 354.23, '2019-11-02 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (366, 365.23, '2019-11-02 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (367, 367.23, '2019-11-02 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (368, 361.23, '2019-11-02 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (369, 366.23, '2019-11-02 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (370, 352.23, '2019-11-02 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (371, 359.23, '2019-11-02 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (372, 360.23, '2019-11-02 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (373, 369.23, '2019-11-02 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (374, 357.23, '2019-11-02 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (375, 359.23, '2019-11-02 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (376, 357.23, '2019-11-02 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (377, 357.23, '2019-11-02 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (378, 354.23, '2019-11-02 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (379, 353.23, '2019-11-02 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (380, 360.23, '2019-11-02 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (381, 356.23, '2019-11-02 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (382, 366.23, '2019-11-02 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (383, 366.23, '2019-11-02 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (384, 351.23, '2019-11-02 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (385, 352.23, '2019-11-02 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (386, 351.23, '2019-11-02 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (387, 357.23, '2019-11-02 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (388, 369.23, '2019-11-02 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (389, 366.23, '2019-11-02 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (390, 354.23, '2019-11-02 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (391, 357.23, '2019-11-02 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (392, 351.23, '2019-11-02 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (393, 353.23, '2019-11-02 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (394, 363.23, '2019-11-02 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (395, 360.23, '2019-11-02 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (396, 368.23, '2019-11-02 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (397, 360.23, '2019-11-03 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (398, 352.23, '2019-11-03 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (399, 354.23, '2019-11-03 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (400, 350.23, '2019-11-03 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (401, 355.23, '2019-11-03 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (402, 355.23, '2019-11-03 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (403, 350.23, '2019-11-03 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (404, 353.23, '2019-11-03 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (405, 359.23, '2019-11-03 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (406, 347.23, '2019-11-03 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (407, 364.23, '2019-11-03 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (408, 359.23, '2019-11-03 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (409, 349.23, '2019-11-03 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (410, 354.23, '2019-11-03 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (411, 365.23, '2019-11-03 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (412, 352.23, '2019-11-03 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (413, 349.23, '2019-11-03 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (414, 347.23, '2019-11-03 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (415, 357.23, '2019-11-03 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (416, 348.23, '2019-11-03 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (417, 365.23, '2019-11-03 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (418, 351.23, '2019-11-03 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (419, 363.23, '2019-11-03 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (420, 356.23, '2019-11-03 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (421, 361.23, '2019-11-03 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (422, 348.23, '2019-11-03 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (423, 352.23, '2019-11-03 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (424, 355.23, '2019-11-03 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (425, 365.23, '2019-11-03 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (426, 359.23, '2019-11-03 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (427, 358.23, '2019-11-03 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (428, 351.23, '2019-11-03 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (429, 351.23, '2019-11-03 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (430, 353.23, '2019-11-03 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (431, 348.23, '2019-11-03 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (432, 365.23, '2019-11-03 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (433, 357.23, '2019-11-03 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (434, 356.23, '2019-11-03 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (435, 358.23, '2019-11-03 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (436, 351.23, '2019-11-03 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (437, 355.23, '2019-11-03 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (438, 358.23, '2019-11-03 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (439, 353.23, '2019-11-03 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (440, 347.23, '2019-11-03 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (441, 353.23, '2019-11-03 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (442, 360.23, '2019-11-03 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (443, 364.23, '2019-11-03 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (444, 346.23, '2019-11-03 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (445, 351.23, '2019-11-03 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (446, 346.23, '2019-11-03 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (447, 352.23, '2019-11-03 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (448, 358.23, '2019-11-03 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (449, 353.23, '2019-11-03 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (450, 352.23, '2019-11-03 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (451, 354.23, '2019-11-03 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (452, 363.23, '2019-11-03 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (453, 358.23, '2019-11-03 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (454, 364.23, '2019-11-03 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (455, 351.23, '2019-11-03 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (456, 362.23, '2019-11-03 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (457, 356.23, '2019-11-03 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (458, 350.23, '2019-11-03 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (459, 359.23, '2019-11-03 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (460, 363.23, '2019-11-03 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (461, 360.23, '2019-11-03 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (462, 349.23, '2019-11-03 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (463, 374.23, '2019-11-04 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (464, 374.23, '2019-11-04 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (465, 373.23, '2019-11-04 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (466, 378.23, '2019-11-04 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (467, 362.23, '2019-11-04 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (468, 364.23, '2019-11-04 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (469, 362.23, '2019-11-04 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (470, 370.23, '2019-11-04 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (471, 378.23, '2019-11-04 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (472, 373.23, '2019-11-04 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (473, 378.23, '2019-11-04 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (474, 373.23, '2019-11-04 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (475, 363.23, '2019-11-04 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (476, 375.23, '2019-11-04 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (477, 361.23, '2019-11-04 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (478, 373.23, '2019-11-04 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (479, 372.23, '2019-11-04 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (480, 367.23, '2019-11-04 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (481, 375.23, '2019-11-04 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (482, 362.23, '2019-11-04 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (483, 374.23, '2019-11-04 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (484, 361.23, '2019-11-04 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (485, 374.23, '2019-11-04 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (486, 361.23, '2019-11-04 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (487, 363.23, '2019-11-04 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (488, 365.23, '2019-11-04 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (489, 371.23, '2019-11-04 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (490, 366.23, '2019-11-04 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (491, 363.23, '2019-11-04 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (492, 361.23, '2019-11-04 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (493, 377.23, '2019-11-04 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (494, 369.23, '2019-11-04 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (495, 367.23, '2019-11-04 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (496, 368.23, '2019-11-04 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (497, 361.23, '2019-11-04 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (498, 363.23, '2019-11-04 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (499, 379.23, '2019-11-04 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (500, 363.23, '2019-11-04 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (501, 373.23, '2019-11-04 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (502, 368.23, '2019-11-04 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (503, 374.23, '2019-11-04 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (504, 363.23, '2019-11-04 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (505, 367.23, '2019-11-04 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (506, 361.23, '2019-11-04 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (507, 374.23, '2019-11-04 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (508, 373.23, '2019-11-04 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (509, 370.23, '2019-11-04 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (510, 377.23, '2019-11-04 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (511, 380.23, '2019-11-04 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (512, 378.23, '2019-11-04 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (513, 379.23, '2019-11-04 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (514, 380.23, '2019-11-04 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (515, 380.23, '2019-11-04 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (516, 378.23, '2019-11-04 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (517, 372.23, '2019-11-04 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (518, 361.23, '2019-11-04 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (519, 376.23, '2019-11-04 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (520, 376.23, '2019-11-04 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (521, 364.23, '2019-11-04 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (522, 373.23, '2019-11-04 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (523, 362.23, '2019-11-04 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (524, 373.23, '2019-11-04 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (525, 364.23, '2019-11-04 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (526, 361.23, '2019-11-04 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (527, 367.23, '2019-11-04 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (528, 375.23, '2019-11-04 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (529, 396.23, '2019-11-05 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (530, 398.23, '2019-11-05 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (531, 400.23, '2019-11-05 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (532, 382.23, '2019-11-05 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (533, 388.23, '2019-11-05 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (534, 393.23, '2019-11-05 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (535, 395.23, '2019-11-05 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (536, 398.23, '2019-11-05 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (537, 384.23, '2019-11-05 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (538, 397.23, '2019-11-05 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (539, 384.23, '2019-11-05 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (540, 396.23, '2019-11-05 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (541, 395.23, '2019-11-05 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (542, 388.23, '2019-11-05 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (543, 388.23, '2019-11-05 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (544, 384.23, '2019-11-05 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (545, 391.23, '2019-11-05 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (546, 388.23, '2019-11-05 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (547, 391.23, '2019-11-05 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (548, 383.23, '2019-11-05 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (549, 396.23, '2019-11-05 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (550, 389.23, '2019-11-05 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (551, 386.23, '2019-11-05 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (552, 384.23, '2019-11-05 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (553, 384.23, '2019-11-05 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (554, 394.23, '2019-11-05 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (555, 398.23, '2019-11-05 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (556, 397.23, '2019-11-05 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (557, 381.23, '2019-11-05 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (558, 397.23, '2019-11-05 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (559, 391.23, '2019-11-05 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (560, 390.23, '2019-11-05 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (561, 386.23, '2019-11-05 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (562, 398.23, '2019-11-05 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (563, 393.23, '2019-11-05 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (564, 382.23, '2019-11-05 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (565, 395.23, '2019-11-05 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (566, 389.23, '2019-11-05 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (567, 385.23, '2019-11-05 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (568, 394.23, '2019-11-05 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (569, 398.23, '2019-11-05 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (570, 382.23, '2019-11-05 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (571, 396.23, '2019-11-05 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (572, 388.23, '2019-11-05 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (573, 386.23, '2019-11-05 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (574, 384.23, '2019-11-05 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (575, 400.23, '2019-11-05 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (576, 396.23, '2019-11-05 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (577, 383.23, '2019-11-05 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (578, 386.23, '2019-11-05 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (579, 387.23, '2019-11-05 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (580, 386.23, '2019-11-05 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (581, 393.23, '2019-11-05 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (582, 388.23, '2019-11-05 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (583, 389.23, '2019-11-05 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (584, 381.23, '2019-11-05 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (585, 400.23, '2019-11-05 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (586, 396.23, '2019-11-05 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (587, 381.23, '2019-11-05 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (588, 399.23, '2019-11-05 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (589, 389.23, '2019-11-05 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (590, 397.23, '2019-11-05 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (591, 383.23, '2019-11-05 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (592, 398.23, '2019-11-05 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (593, 395.23, '2019-11-05 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (594, 395.23, '2019-11-05 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (597, 379.23, '2019-11-06 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (598, 383.23, '2019-11-06 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (599, 390.23, '2019-11-06 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (600, 382.23, '2019-11-06 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (601, 386.23, '2019-11-06 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (602, 389.23, '2019-11-06 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (603, 373.23, '2019-11-06 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (604, 383.23, '2019-11-06 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (605, 380.23, '2019-11-06 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (606, 386.23, '2019-11-06 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (607, 375.23, '2019-11-06 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (608, 390.23, '2019-11-06 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (609, 384.23, '2019-11-06 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (610, 383.23, '2019-11-06 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (611, 372.23, '2019-11-06 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (612, 387.23, '2019-11-06 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (613, 381.23, '2019-11-06 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (614, 387.23, '2019-11-06 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (616, 373.23, '2019-11-06 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (617, 386.23, '2019-11-06 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (618, 371.23, '2019-11-06 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (619, 381.23, '2019-11-06 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (620, 378.23, '2019-11-06 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (621, 382.23, '2019-11-06 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (622, 386.23, '2019-11-06 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (623, 384.23, '2019-11-06 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (624, 379.23, '2019-11-06 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (625, 380.23, '2019-11-06 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (626, 375.23, '2019-11-06 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (627, 372.23, '2019-11-06 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (628, 387.23, '2019-11-06 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (629, 381.23, '2019-11-06 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (630, 374.23, '2019-11-06 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (631, 383.23, '2019-11-06 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (632, 390.23, '2019-11-06 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (633, 373.23, '2019-11-06 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (634, 374.23, '2019-11-06 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (635, 390.23, '2019-11-06 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (636, 387.23, '2019-11-06 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (637, 373.23, '2019-11-06 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (638, 386.23, '2019-11-06 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (639, 385.23, '2019-11-06 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (640, 381.23, '2019-11-06 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (641, 379.23, '2019-11-06 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (642, 382.23, '2019-11-06 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (643, 390.23, '2019-11-06 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (644, 375.23, '2019-11-06 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (645, 380.23, '2019-11-06 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (646, 374.23, '2019-11-06 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (647, 379.23, '2019-11-06 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (648, 390.23, '2019-11-06 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (650, 380.23, '2019-11-06 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (651, 385.23, '2019-11-06 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (652, 388.23, '2019-11-06 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (653, 385.23, '2019-11-06 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (654, 383.23, '2019-11-06 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (655, 376.23, '2019-11-06 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (656, 384.23, '2019-11-06 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (657, 388.23, '2019-11-06 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (658, 371.23, '2019-11-06 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (659, 386.23, '2019-11-06 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (660, 385.23, '2019-11-06 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (661, 383.23, '2019-11-06 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (662, 374.23, '2019-11-06 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (663, 389.23, '2019-11-06 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (664, 376.23, '2019-11-06 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (666, 381.23, '2019-11-07 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (667, 379.23, '2019-11-07 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (668, 382.23, '2019-11-07 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (669, 392.23, '2019-11-07 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (670, 395.23, '2019-11-07 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (671, 385.23, '2019-11-07 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (672, 385.23, '2019-11-07 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (673, 395.23, '2019-11-07 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (675, 382.23, '2019-11-07 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (676, 386.23, '2019-11-07 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (677, 384.23, '2019-11-07 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (678, 377.23, '2019-11-07 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (679, 395.23, '2019-11-07 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (680, 395.23, '2019-11-07 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (681, 384.23, '2019-11-07 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (682, 380.23, '2019-11-07 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (683, 380.23, '2019-11-07 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (684, 394.23, '2019-11-07 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (685, 388.23, '2019-11-07 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (686, 383.23, '2019-11-07 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (687, 378.23, '2019-11-07 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (688, 379.23, '2019-11-07 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (689, 377.23, '2019-11-07 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (690, 394.23, '2019-11-07 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (691, 379.23, '2019-11-07 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (692, 383.23, '2019-11-07 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (693, 378.23, '2019-11-07 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (694, 395.23, '2019-11-07 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (695, 380.23, '2019-11-07 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (696, 394.23, '2019-11-07 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (697, 377.23, '2019-11-07 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (698, 386.23, '2019-11-07 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (699, 379.23, '2019-11-07 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (700, 391.23, '2019-11-07 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (701, 377.23, '2019-11-07 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (702, 387.23, '2019-11-07 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (703, 379.23, '2019-11-07 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (704, 387.23, '2019-11-07 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (705, 385.23, '2019-11-07 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (706, 391.23, '2019-11-07 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (707, 391.23, '2019-11-07 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (708, 383.23, '2019-11-07 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (709, 384.23, '2019-11-07 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (711, 380.23, '2019-11-07 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (712, 390.23, '2019-11-07 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (713, 394.23, '2019-11-07 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (714, 389.23, '2019-11-07 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (715, 391.23, '2019-11-07 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (716, 392.23, '2019-11-07 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (717, 380.23, '2019-11-07 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (718, 376.23, '2019-11-07 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (719, 377.23, '2019-11-07 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (720, 392.23, '2019-11-07 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (721, 386.23, '2019-11-07 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (722, 388.23, '2019-11-07 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (723, 376.23, '2019-11-07 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (724, 376.23, '2019-11-07 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (725, 395.23, '2019-11-07 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (726, 384.23, '2019-11-07 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (727, 392.23, '2019-11-07 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (728, 395.23, '2019-11-07 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (729, 382.23, '2019-11-07 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (730, 377.23, '2019-11-07 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (731, 378.23, '2019-11-07 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (732, 381.23, '2019-11-07 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (733, 380.23, '2019-11-07 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (735, 395.23, '2019-11-08 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (736, 396.23, '2019-11-08 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (737, 405.23, '2019-11-08 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (738, 407.23, '2019-11-08 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (739, 399.23, '2019-11-08 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (740, 401.23, '2019-11-08 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (741, 406.23, '2019-11-08 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (742, 402.23, '2019-11-08 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (743, 393.23, '2019-11-08 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (745, 402.23, '2019-11-08 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (746, 405.23, '2019-11-08 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (747, 407.23, '2019-11-08 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (748, 394.23, '2019-11-08 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (749, 394.23, '2019-11-08 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (750, 395.23, '2019-11-08 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (751, 404.23, '2019-11-08 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (752, 401.23, '2019-11-08 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (753, 401.23, '2019-11-08 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (754, 394.23, '2019-11-08 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (755, 391.23, '2019-11-08 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (756, 392.23, '2019-11-08 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (757, 403.23, '2019-11-08 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (758, 401.23, '2019-11-08 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (759, 399.23, '2019-11-08 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (760, 403.23, '2019-11-08 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (761, 392.23, '2019-11-08 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (762, 392.23, '2019-11-08 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (763, 404.23, '2019-11-08 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (764, 398.23, '2019-11-08 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (765, 409.23, '2019-11-08 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (766, 393.23, '2019-11-08 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (767, 398.23, '2019-11-08 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (768, 393.23, '2019-11-08 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (769, 408.23, '2019-11-08 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (770, 393.23, '2019-11-08 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (771, 392.23, '2019-11-08 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (772, 407.23, '2019-11-08 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (773, 393.23, '2019-11-08 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (774, 402.23, '2019-11-08 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (775, 391.23, '2019-11-08 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (776, 394.23, '2019-11-08 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (777, 391.23, '2019-11-08 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (778, 393.23, '2019-11-08 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (779, 410.23, '2019-11-08 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (780, 407.23, '2019-11-08 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (781, 405.23, '2019-11-08 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (782, 399.23, '2019-11-08 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (783, 394.23, '2019-11-08 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (784, 399.23, '2019-11-08 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (785, 393.23, '2019-11-08 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (786, 406.23, '2019-11-08 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (787, 395.23, '2019-11-08 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (788, 395.23, '2019-11-08 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (789, 409.23, '2019-11-08 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (790, 397.23, '2019-11-08 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (791, 401.23, '2019-11-08 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (792, 403.23, '2019-11-08 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (793, 394.23, '2019-11-08 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (794, 400.23, '2019-11-08 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (795, 402.23, '2019-11-08 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (796, 402.23, '2019-11-08 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (797, 404.23, '2019-11-08 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (798, 395.23, '2019-11-08 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (799, 396.23, '2019-11-08 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (801, 410.23, '2019-11-08 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (802, 408.23, '2019-11-08 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (803, 403.23, '2019-11-09 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (804, 402.23, '2019-11-09 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (805, 399.23, '2019-11-09 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (806, 404.23, '2019-11-09 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (807, 408.23, '2019-11-09 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (809, 413.23, '2019-11-09 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (810, 407.23, '2019-11-09 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (811, 402.23, '2019-11-09 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (812, 397.23, '2019-11-09 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (813, 408.23, '2019-11-09 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (814, 414.23, '2019-11-09 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (815, 406.23, '2019-11-09 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (816, 407.23, '2019-11-09 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (817, 400.23, '2019-11-09 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (818, 402.23, '2019-11-09 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (819, 412.23, '2019-11-09 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (820, 400.23, '2019-11-09 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (821, 414.23, '2019-11-09 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (822, 408.23, '2019-11-09 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (823, 414.23, '2019-11-09 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (824, 414.23, '2019-11-09 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (825, 401.23, '2019-11-09 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (826, 410.23, '2019-11-09 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (827, 408.23, '2019-11-09 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (828, 415.23, '2019-11-09 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (829, 412.23, '2019-11-09 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (830, 404.23, '2019-11-09 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (831, 402.23, '2019-11-09 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (832, 411.23, '2019-11-09 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (833, 397.23, '2019-11-09 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (834, 397.23, '2019-11-09 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (835, 406.23, '2019-11-09 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (836, 397.23, '2019-11-09 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (837, 414.23, '2019-11-09 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (838, 411.23, '2019-11-09 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (839, 415.23, '2019-11-09 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (840, 408.23, '2019-11-09 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (841, 403.23, '2019-11-09 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (842, 411.23, '2019-11-09 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (843, 412.23, '2019-11-09 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (844, 408.23, '2019-11-09 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (845, 401.23, '2019-11-09 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (846, 398.23, '2019-11-09 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (847, 412.23, '2019-11-09 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (848, 401.23, '2019-11-09 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (849, 414.23, '2019-11-09 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (850, 399.23, '2019-11-09 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (851, 411.23, '2019-11-09 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (852, 400.23, '2019-11-09 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (853, 405.23, '2019-11-09 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (854, 403.23, '2019-11-09 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (855, 397.23, '2019-11-09 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (856, 414.23, '2019-11-09 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (857, 403.23, '2019-11-09 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (858, 402.23, '2019-11-09 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (859, 400.23, '2019-11-09 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (860, 413.23, '2019-11-09 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (861, 403.23, '2019-11-09 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (862, 410.23, '2019-11-09 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (863, 402.23, '2019-11-09 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (864, 398.23, '2019-11-09 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (865, 404.23, '2019-11-09 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (866, 399.23, '2019-11-09 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (867, 414.23, '2019-11-09 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (868, 407.23, '2019-11-09 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (869, 408.23, '2019-11-09 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (871, 405.23, '2019-11-10 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (872, 402.23, '2019-11-10 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (873, 418.23, '2019-11-10 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (874, 420.23, '2019-11-10 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (875, 408.23, '2019-11-10 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (876, 415.23, '2019-11-10 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (877, 417.23, '2019-11-10 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (878, 410.23, '2019-11-10 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (879, 415.23, '2019-11-10 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (880, 411.23, '2019-11-10 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (881, 413.23, '2019-11-10 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (882, 413.23, '2019-11-10 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (883, 418.23, '2019-11-10 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (884, 418.23, '2019-11-10 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (885, 412.23, '2019-11-10 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (886, 408.23, '2019-11-10 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (887, 420.23, '2019-11-10 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (888, 409.23, '2019-11-10 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (889, 413.23, '2019-11-10 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (890, 418.23, '2019-11-10 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (891, 411.23, '2019-11-10 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (892, 418.23, '2019-11-10 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (893, 411.23, '2019-11-10 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (894, 412.23, '2019-11-10 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (895, 415.23, '2019-11-10 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (896, 408.23, '2019-11-10 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (897, 404.23, '2019-11-10 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (898, 401.23, '2019-11-10 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (899, 409.23, '2019-11-10 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (900, 414.23, '2019-11-10 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (901, 414.23, '2019-11-10 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (902, 417.23, '2019-11-10 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (903, 402.23, '2019-11-10 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (904, 409.23, '2019-11-10 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (905, 412.23, '2019-11-10 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (906, 420.23, '2019-11-10 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (907, 401.23, '2019-11-10 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (908, 419.23, '2019-11-10 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (909, 402.23, '2019-11-10 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (910, 412.23, '2019-11-10 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (911, 406.23, '2019-11-10 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (912, 402.23, '2019-11-10 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (913, 406.23, '2019-11-10 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (914, 404.23, '2019-11-10 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (915, 408.23, '2019-11-10 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (916, 419.23, '2019-11-10 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (917, 420.23, '2019-11-10 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (918, 403.23, '2019-11-10 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (919, 419.23, '2019-11-10 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (920, 409.23, '2019-11-10 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (921, 414.23, '2019-11-10 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (922, 419.23, '2019-11-10 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (923, 405.23, '2019-11-10 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (924, 414.23, '2019-11-10 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (925, 403.23, '2019-11-10 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (926, 406.23, '2019-11-10 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (927, 420.23, '2019-11-10 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (928, 411.23, '2019-11-10 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (929, 410.23, '2019-11-10 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (930, 414.23, '2019-11-10 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (931, 408.23, '2019-11-10 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (932, 401.23, '2019-11-10 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (933, 420.23, '2019-11-10 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (934, 415.23, '2019-11-10 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (935, 410.23, '2019-11-10 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (936, 410.23, '2019-11-10 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (938, 414.23, '2019-11-11 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (939, 419.23, '2019-11-11 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (940, 402.23, '2019-11-11 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (941, 407.23, '2019-11-11 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (942, 404.23, '2019-11-11 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (943, 403.23, '2019-11-11 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (944, 412.23, '2019-11-11 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (945, 411.23, '2019-11-11 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (946, 411.23, '2019-11-11 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (947, 403.23, '2019-11-11 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (948, 404.23, '2019-11-11 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (949, 415.23, '2019-11-11 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (951, 404.23, '2019-11-11 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (952, 414.23, '2019-11-11 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (953, 402.23, '2019-11-11 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (954, 401.23, '2019-11-11 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (955, 407.23, '2019-11-11 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (956, 405.23, '2019-11-11 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (957, 401.23, '2019-11-11 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (958, 418.23, '2019-11-11 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (959, 411.23, '2019-11-11 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (960, 411.23, '2019-11-11 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (961, 413.23, '2019-11-11 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (962, 407.23, '2019-11-11 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (963, 403.23, '2019-11-11 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (964, 408.23, '2019-11-11 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (965, 406.23, '2019-11-11 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (966, 403.23, '2019-11-11 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (967, 414.23, '2019-11-11 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (968, 420.23, '2019-11-11 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (969, 407.23, '2019-11-11 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (970, 402.23, '2019-11-11 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (971, 407.23, '2019-11-11 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (972, 413.23, '2019-11-11 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (973, 419.23, '2019-11-11 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (974, 410.23, '2019-11-11 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (975, 404.23, '2019-11-11 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (976, 404.23, '2019-11-11 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (977, 405.23, '2019-11-11 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (978, 420.23, '2019-11-11 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (979, 415.23, '2019-11-11 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (980, 413.23, '2019-11-11 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (981, 417.23, '2019-11-11 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (982, 410.23, '2019-11-11 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (983, 405.23, '2019-11-11 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (984, 418.23, '2019-11-11 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (985, 415.23, '2019-11-11 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (986, 404.23, '2019-11-11 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (987, 412.23, '2019-11-11 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (988, 406.23, '2019-11-11 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (989, 409.23, '2019-11-11 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (990, 413.23, '2019-11-11 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (991, 405.23, '2019-11-11 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (992, 414.23, '2019-11-11 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (994, 416.23, '2019-11-11 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (995, 417.23, '2019-11-11 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (996, 409.23, '2019-11-11 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (997, 413.23, '2019-11-11 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (998, 401.23, '2019-11-11 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (999, 412.23, '2019-11-11 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1000, 402.23, '2019-11-11 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1001, 417.23, '2019-11-11 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1002, 411.23, '2019-11-11 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1003, 413.23, '2019-11-11 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1004, 418.23, '2019-11-11 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1005, 415.23, '2019-11-11 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1007, 418.23, '2019-11-12 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1009, 405.23, '2019-11-12 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1010, 405.23, '2019-11-12 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1011, 416.23, '2019-11-12 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1012, 419.23, '2019-11-12 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1013, 420.23, '2019-11-12 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1014, 414.23, '2019-11-12 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1015, 416.23, '2019-11-12 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1016, 405.23, '2019-11-12 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1017, 401.23, '2019-11-12 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1018, 408.23, '2019-11-12 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1019, 413.23, '2019-11-12 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1020, 418.23, '2019-11-12 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1021, 401.23, '2019-11-12 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1022, 412.23, '2019-11-12 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1023, 403.23, '2019-11-12 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1024, 406.23, '2019-11-12 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1025, 402.23, '2019-11-12 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1026, 418.23, '2019-11-12 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1027, 401.23, '2019-11-12 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1028, 414.23, '2019-11-12 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1029, 409.23, '2019-11-12 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1030, 410.23, '2019-11-12 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1031, 413.23, '2019-11-12 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1032, 418.23, '2019-11-12 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1033, 419.23, '2019-11-12 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1034, 401.23, '2019-11-12 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1035, 407.23, '2019-11-12 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1036, 414.23, '2019-11-12 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1037, 411.23, '2019-11-12 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1038, 405.23, '2019-11-12 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1039, 413.23, '2019-11-12 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1041, 411.23, '2019-11-12 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1042, 412.23, '2019-11-12 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1043, 411.23, '2019-11-12 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1044, 414.23, '2019-11-12 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1045, 414.23, '2019-11-12 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1046, 407.23, '2019-11-12 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1047, 417.23, '2019-11-12 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1048, 416.23, '2019-11-12 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1049, 405.23, '2019-11-12 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1050, 410.23, '2019-11-12 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1051, 401.23, '2019-11-12 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1052, 407.23, '2019-11-12 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1053, 417.23, '2019-11-12 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1054, 404.23, '2019-11-12 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1055, 401.23, '2019-11-12 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1056, 412.23, '2019-11-12 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1057, 409.23, '2019-11-12 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1058, 402.23, '2019-11-12 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1059, 408.23, '2019-11-12 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1060, 408.23, '2019-11-12 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1061, 417.23, '2019-11-12 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1062, 419.23, '2019-11-12 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1063, 405.23, '2019-11-12 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1064, 418.23, '2019-11-12 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1065, 405.23, '2019-11-12 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1066, 417.23, '2019-11-12 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1067, 404.23, '2019-11-12 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1068, 416.23, '2019-11-12 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1069, 413.23, '2019-11-12 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1070, 420.23, '2019-11-12 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1071, 411.23, '2019-11-12 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1072, 405.23, '2019-11-12 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1073, 418.23, '2019-11-12 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1074, 410.23, '2019-11-12 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1077, 418.23, '2019-11-13 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1078, 411.23, '2019-11-13 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1079, 416.23, '2019-11-13 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1080, 402.23, '2019-11-13 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1081, 410.23, '2019-11-13 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1082, 401.23, '2019-11-13 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1083, 417.23, '2019-11-13 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1084, 414.23, '2019-11-13 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1085, 413.23, '2019-11-13 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1086, 420.23, '2019-11-13 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1087, 411.23, '2019-11-13 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1088, 413.23, '2019-11-13 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1089, 416.23, '2019-11-13 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1090, 416.23, '2019-11-13 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1091, 413.23, '2019-11-13 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1092, 407.23, '2019-11-13 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1093, 405.23, '2019-11-13 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1094, 407.23, '2019-11-13 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1095, 415.23, '2019-11-13 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1096, 405.23, '2019-11-13 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1097, 414.23, '2019-11-13 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1098, 402.23, '2019-11-13 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1099, 420.23, '2019-11-13 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1100, 413.23, '2019-11-13 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1101, 411.23, '2019-11-13 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1102, 417.23, '2019-11-13 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1103, 401.23, '2019-11-13 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1104, 417.23, '2019-11-13 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1105, 406.23, '2019-11-13 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1106, 407.23, '2019-11-13 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1107, 403.23, '2019-11-13 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1108, 415.23, '2019-11-13 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1109, 401.23, '2019-11-13 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1110, 417.23, '2019-11-13 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1111, 406.23, '2019-11-13 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1112, 412.23, '2019-11-13 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1113, 405.23, '2019-11-13 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1115, 416.23, '2019-11-13 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1116, 409.23, '2019-11-13 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1117, 409.23, '2019-11-13 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1118, 417.23, '2019-11-13 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1119, 411.23, '2019-11-13 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1120, 413.23, '2019-11-13 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1121, 416.23, '2019-11-13 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1122, 408.23, '2019-11-13 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1123, 412.23, '2019-11-13 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1124, 405.23, '2019-11-13 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1125, 417.23, '2019-11-13 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1126, 411.23, '2019-11-13 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1127, 410.23, '2019-11-13 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1128, 404.23, '2019-11-13 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1129, 412.23, '2019-11-13 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1130, 413.23, '2019-11-13 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1131, 414.23, '2019-11-13 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1132, 403.23, '2019-11-13 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1133, 408.23, '2019-11-13 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1134, 418.23, '2019-11-13 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1135, 401.23, '2019-11-13 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1136, 404.23, '2019-11-13 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1137, 419.23, '2019-11-13 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1138, 408.23, '2019-11-13 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1139, 417.23, '2019-11-13 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1140, 404.23, '2019-11-13 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1141, 418.23, '2019-11-13 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1142, 412.23, '2019-11-13 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1143, 411.23, '2019-11-13 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1145, 406.23, '2019-11-14 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1146, 406.23, '2019-11-14 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1147, 409.23, '2019-11-14 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1149, 406.23, '2019-11-14 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1150, 420.23, '2019-11-14 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1151, 416.23, '2019-11-14 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1152, 401.23, '2019-11-14 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1153, 411.23, '2019-11-14 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1154, 413.23, '2019-11-14 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1155, 420.23, '2019-11-14 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1156, 408.23, '2019-11-14 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1157, 404.23, '2019-11-14 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1158, 413.23, '2019-11-14 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1159, 417.23, '2019-11-14 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1160, 405.23, '2019-11-14 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1161, 402.23, '2019-11-14 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1162, 413.23, '2019-11-14 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1163, 413.23, '2019-11-14 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1164, 420.23, '2019-11-14 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1165, 412.23, '2019-11-14 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1166, 411.23, '2019-11-14 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1167, 408.23, '2019-11-14 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1168, 407.23, '2019-11-14 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1169, 405.23, '2019-11-14 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1170, 404.23, '2019-11-14 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1171, 419.23, '2019-11-14 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1172, 408.23, '2019-11-14 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1173, 404.23, '2019-11-14 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1174, 411.23, '2019-11-14 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1175, 403.23, '2019-11-14 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1176, 405.23, '2019-11-14 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1177, 402.23, '2019-11-14 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1178, 418.23, '2019-11-14 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1179, 417.23, '2019-11-14 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1180, 405.23, '2019-11-14 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1181, 412.23, '2019-11-14 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1182, 412.23, '2019-11-14 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1183, 417.23, '2019-11-14 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1184, 407.23, '2019-11-14 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1185, 410.23, '2019-11-14 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1186, 409.23, '2019-11-14 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1187, 416.23, '2019-11-14 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1188, 408.23, '2019-11-14 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1189, 411.23, '2019-11-14 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1190, 403.23, '2019-11-14 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1191, 408.23, '2019-11-14 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1192, 419.23, '2019-11-14 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1193, 420.23, '2019-11-14 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1194, 415.23, '2019-11-14 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1195, 412.23, '2019-11-14 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1197, 409.23, '2019-11-14 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1198, 410.23, '2019-11-14 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1199, 403.23, '2019-11-14 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1200, 412.23, '2019-11-14 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1201, 405.23, '2019-11-14 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1202, 408.23, '2019-11-14 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1203, 418.23, '2019-11-14 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1204, 407.23, '2019-11-14 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1205, 409.23, '2019-11-14 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1206, 404.23, '2019-11-14 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1207, 420.23, '2019-11-14 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1208, 409.23, '2019-11-14 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1209, 404.23, '2019-11-14 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1210, 420.23, '2019-11-14 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1211, 409.23, '2019-11-14 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1212, 402.23, '2019-11-14 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1214, 403.23, '2019-11-15 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1215, 406.23, '2019-11-15 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1216, 411.23, '2019-11-15 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1217, 402.23, '2019-11-15 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1218, 402.23, '2019-11-15 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1219, 401.23, '2019-11-15 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1220, 413.23, '2019-11-15 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1221, 409.23, '2019-11-15 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1222, 400.23, '2019-11-15 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1223, 411.23, '2019-11-15 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1224, 405.23, '2019-11-15 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1225, 410.23, '2019-11-15 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1226, 396.23, '2019-11-15 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1227, 412.23, '2019-11-15 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1228, 413.23, '2019-11-15 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1229, 407.23, '2019-11-15 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1230, 415.23, '2019-11-15 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1231, 405.23, '2019-11-15 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1232, 408.23, '2019-11-15 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1233, 398.23, '2019-11-15 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1234, 400.23, '2019-11-15 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1235, 414.23, '2019-11-15 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1236, 397.23, '2019-11-15 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1237, 406.23, '2019-11-15 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1238, 414.23, '2019-11-15 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1239, 401.23, '2019-11-15 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1240, 415.23, '2019-11-15 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1241, 399.23, '2019-11-15 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1242, 399.23, '2019-11-15 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1243, 401.23, '2019-11-15 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1245, 402.23, '2019-11-15 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1246, 410.23, '2019-11-15 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1247, 405.23, '2019-11-15 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1248, 406.23, '2019-11-15 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1249, 398.23, '2019-11-15 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1250, 413.23, '2019-11-15 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1251, 409.23, '2019-11-15 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1252, 402.23, '2019-11-15 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1253, 406.23, '2019-11-15 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1254, 410.23, '2019-11-15 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1255, 397.23, '2019-11-15 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1256, 411.23, '2019-11-15 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1257, 405.23, '2019-11-15 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1258, 401.23, '2019-11-15 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1259, 413.23, '2019-11-15 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1260, 410.23, '2019-11-15 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1261, 413.23, '2019-11-15 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1262, 409.23, '2019-11-15 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1263, 406.23, '2019-11-15 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1264, 408.23, '2019-11-15 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1265, 410.23, '2019-11-15 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1266, 404.23, '2019-11-15 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1267, 408.23, '2019-11-15 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1268, 397.23, '2019-11-15 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1269, 407.23, '2019-11-15 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1270, 397.23, '2019-11-15 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1271, 404.23, '2019-11-15 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1272, 396.23, '2019-11-15 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1273, 402.23, '2019-11-15 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1274, 397.23, '2019-11-15 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1276, 405.23, '2019-11-15 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1277, 407.23, '2019-11-15 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1278, 403.23, '2019-11-15 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1279, 402.23, '2019-11-15 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1280, 413.23, '2019-11-15 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1281, 411.23, '2019-11-15 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1282, 405.23, '2019-11-16 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1283, 400.23, '2019-11-16 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1284, 408.23, '2019-11-16 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1285, 405.23, '2019-11-16 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1286, 404.23, '2019-11-16 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1287, 396.23, '2019-11-16 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1288, 401.23, '2019-11-16 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1289, 414.23, '2019-11-16 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1290, 406.23, '2019-11-16 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1291, 405.23, '2019-11-16 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1292, 415.23, '2019-11-16 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1293, 398.23, '2019-11-16 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1294, 398.23, '2019-11-16 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1295, 408.23, '2019-11-16 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1296, 398.23, '2019-11-16 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1297, 412.23, '2019-11-16 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1298, 412.23, '2019-11-16 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1299, 407.23, '2019-11-16 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1300, 407.23, '2019-11-16 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1301, 411.23, '2019-11-16 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1302, 409.23, '2019-11-16 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1303, 408.23, '2019-11-16 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1304, 409.23, '2019-11-16 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1305, 406.23, '2019-11-16 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1306, 401.23, '2019-11-16 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1307, 413.23, '2019-11-16 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1308, 413.23, '2019-11-16 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1309, 400.23, '2019-11-16 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1310, 401.23, '2019-11-16 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1311, 412.23, '2019-11-16 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1312, 402.23, '2019-11-16 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1313, 402.23, '2019-11-16 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1314, 411.23, '2019-11-16 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1315, 397.23, '2019-11-16 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1316, 398.23, '2019-11-16 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1317, 399.23, '2019-11-16 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1318, 399.23, '2019-11-16 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1319, 398.23, '2019-11-16 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1320, 411.23, '2019-11-16 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1321, 413.23, '2019-11-16 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1322, 415.23, '2019-11-16 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1323, 396.23, '2019-11-16 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1324, 400.23, '2019-11-16 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1325, 399.23, '2019-11-16 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1326, 404.23, '2019-11-16 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1327, 415.23, '2019-11-16 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1328, 404.23, '2019-11-16 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1329, 399.23, '2019-11-16 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1330, 403.23, '2019-11-16 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1331, 413.23, '2019-11-16 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1332, 402.23, '2019-11-16 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1333, 409.23, '2019-11-16 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1334, 400.23, '2019-11-16 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1335, 414.23, '2019-11-16 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1336, 401.23, '2019-11-16 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1337, 415.23, '2019-11-16 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1338, 414.23, '2019-11-16 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1339, 407.23, '2019-11-16 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1340, 412.23, '2019-11-16 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1341, 400.23, '2019-11-16 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1342, 411.23, '2019-11-16 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1343, 410.23, '2019-11-16 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1344, 401.23, '2019-11-16 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1345, 403.23, '2019-11-16 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1346, 399.23, '2019-11-16 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1347, 398.23, '2019-11-16 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1348, 399.23, '2019-11-17 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1349, 400.23, '2019-11-17 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1350, 396.23, '2019-11-17 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1351, 391.23, '2019-11-17 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1352, 387.23, '2019-11-17 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1353, 399.23, '2019-11-17 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1354, 382.23, '2019-11-17 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1355, 386.23, '2019-11-17 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1356, 384.23, '2019-11-17 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1357, 393.23, '2019-11-17 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1358, 387.23, '2019-11-17 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1359, 389.23, '2019-11-17 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1360, 391.23, '2019-11-17 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1361, 386.23, '2019-11-17 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1362, 391.23, '2019-11-17 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1363, 389.23, '2019-11-17 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1364, 393.23, '2019-11-17 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1365, 397.23, '2019-11-17 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1366, 392.23, '2019-11-17 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1367, 388.23, '2019-11-17 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1368, 392.23, '2019-11-17 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1369, 394.23, '2019-11-17 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1370, 387.23, '2019-11-17 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1371, 393.23, '2019-11-17 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1372, 389.23, '2019-11-17 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1373, 394.23, '2019-11-17 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1374, 393.23, '2019-11-17 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1375, 397.23, '2019-11-17 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1376, 382.23, '2019-11-17 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1377, 383.23, '2019-11-17 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1378, 394.23, '2019-11-17 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1379, 395.23, '2019-11-17 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1380, 396.23, '2019-11-17 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1381, 385.23, '2019-11-17 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1382, 387.23, '2019-11-17 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1383, 396.23, '2019-11-17 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1384, 397.23, '2019-11-17 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1385, 387.23, '2019-11-17 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1386, 396.23, '2019-11-17 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1387, 389.23, '2019-11-17 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1388, 400.23, '2019-11-17 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1389, 385.23, '2019-11-17 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1390, 396.23, '2019-11-17 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1391, 396.23, '2019-11-17 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1392, 390.23, '2019-11-17 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1393, 400.23, '2019-11-17 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1394, 392.23, '2019-11-17 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1395, 386.23, '2019-11-17 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1396, 393.23, '2019-11-17 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1397, 396.23, '2019-11-17 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1398, 392.23, '2019-11-17 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1399, 394.23, '2019-11-17 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1400, 387.23, '2019-11-17 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1401, 385.23, '2019-11-17 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1402, 395.23, '2019-11-17 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1403, 399.23, '2019-11-17 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1404, 396.23, '2019-11-17 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1405, 387.23, '2019-11-17 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1406, 385.23, '2019-11-17 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1407, 382.23, '2019-11-17 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1408, 388.23, '2019-11-17 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1409, 385.23, '2019-11-17 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1410, 393.23, '2019-11-17 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1411, 393.23, '2019-11-17 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1412, 385.23, '2019-11-17 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1413, 391.23, '2019-11-17 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1414, 389.23, '2019-11-18 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1415, 381.23, '2019-11-18 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1416, 386.23, '2019-11-18 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1417, 392.23, '2019-11-18 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1418, 398.23, '2019-11-18 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1419, 381.23, '2019-11-18 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1420, 384.23, '2019-11-18 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1421, 383.23, '2019-11-18 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1422, 400.23, '2019-11-18 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1423, 382.23, '2019-11-18 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1424, 383.23, '2019-11-18 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1425, 381.23, '2019-11-18 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1426, 399.23, '2019-11-18 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1427, 398.23, '2019-11-18 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1428, 399.23, '2019-11-18 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1429, 390.23, '2019-11-18 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1430, 382.23, '2019-11-18 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1431, 389.23, '2019-11-18 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1432, 392.23, '2019-11-18 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1433, 400.23, '2019-11-18 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1434, 393.23, '2019-11-18 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1435, 392.23, '2019-11-18 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1436, 388.23, '2019-11-18 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1437, 390.23, '2019-11-18 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1438, 394.23, '2019-11-18 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1439, 395.23, '2019-11-18 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1440, 393.23, '2019-11-18 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1441, 384.23, '2019-11-18 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1442, 396.23, '2019-11-18 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1443, 381.23, '2019-11-18 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1444, 394.23, '2019-11-18 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1445, 393.23, '2019-11-18 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1446, 394.23, '2019-11-18 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1447, 382.23, '2019-11-18 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1448, 398.23, '2019-11-18 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1449, 384.23, '2019-11-18 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1450, 382.23, '2019-11-18 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1451, 397.23, '2019-11-18 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1452, 397.23, '2019-11-18 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1453, 386.23, '2019-11-18 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1454, 395.23, '2019-11-18 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1455, 383.23, '2019-11-18 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1456, 399.23, '2019-11-18 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1457, 396.23, '2019-11-18 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1458, 382.23, '2019-11-18 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1459, 394.23, '2019-11-18 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1460, 395.23, '2019-11-18 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1461, 391.23, '2019-11-18 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1462, 393.23, '2019-11-18 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1463, 387.23, '2019-11-18 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1464, 384.23, '2019-11-18 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1465, 395.23, '2019-11-18 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1466, 400.23, '2019-11-18 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1467, 388.23, '2019-11-18 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1468, 381.23, '2019-11-18 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1469, 396.23, '2019-11-18 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1470, 386.23, '2019-11-18 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1471, 395.23, '2019-11-18 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1472, 399.23, '2019-11-18 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1473, 384.23, '2019-11-18 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1474, 389.23, '2019-11-18 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1475, 383.23, '2019-11-18 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1476, 388.23, '2019-11-18 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1477, 389.23, '2019-11-18 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1478, 388.23, '2019-11-18 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1479, 390.23, '2019-11-18 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1480, 314.23, '2019-11-19 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1481, 313.23, '2019-11-19 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1482, 302.23, '2019-11-19 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1483, 319.23, '2019-11-19 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1484, 320.23, '2019-11-19 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1485, 312.23, '2019-11-19 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1486, 320.23, '2019-11-19 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1487, 307.23, '2019-11-19 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1488, 301.23, '2019-11-19 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1489, 302.23, '2019-11-19 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1490, 313.23, '2019-11-19 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1491, 301.23, '2019-11-19 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1492, 311.23, '2019-11-19 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1493, 315.23, '2019-11-19 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1494, 308.23, '2019-11-19 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1495, 302.23, '2019-11-19 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1496, 310.23, '2019-11-19 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1497, 301.23, '2019-11-19 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1498, 315.23, '2019-11-19 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1499, 312.23, '2019-11-19 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1500, 309.23, '2019-11-19 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1501, 318.23, '2019-11-19 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1502, 316.23, '2019-11-19 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1503, 317.23, '2019-11-19 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1504, 305.23, '2019-11-19 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1505, 319.23, '2019-11-19 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1506, 301.23, '2019-11-19 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1507, 306.23, '2019-11-19 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1508, 313.23, '2019-11-19 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1509, 302.23, '2019-11-19 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1510, 303.23, '2019-11-19 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1511, 316.23, '2019-11-19 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1512, 310.23, '2019-11-19 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1513, 320.23, '2019-11-19 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1514, 307.23, '2019-11-19 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1515, 314.23, '2019-11-19 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1516, 313.23, '2019-11-19 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1517, 310.23, '2019-11-19 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1518, 303.23, '2019-11-19 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1519, 320.23, '2019-11-19 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1520, 303.23, '2019-11-19 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1521, 315.23, '2019-11-19 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1522, 311.23, '2019-11-19 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1523, 318.23, '2019-11-19 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1524, 304.23, '2019-11-19 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1525, 312.23, '2019-11-19 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1526, 310.23, '2019-11-19 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1527, 303.23, '2019-11-19 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1528, 306.23, '2019-11-19 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1529, 310.23, '2019-11-19 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1530, 314.23, '2019-11-19 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1531, 311.23, '2019-11-19 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1532, 314.23, '2019-11-19 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1533, 303.23, '2019-11-19 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1534, 306.23, '2019-11-19 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1535, 311.23, '2019-11-19 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1536, 313.23, '2019-11-19 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1537, 309.23, '2019-11-19 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1538, 306.23, '2019-11-19 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1539, 308.23, '2019-11-19 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1540, 311.23, '2019-11-19 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1541, 311.23, '2019-11-19 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1542, 307.23, '2019-11-19 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1543, 314.23, '2019-11-19 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1544, 318.23, '2019-11-19 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1545, 302.23, '2019-11-19 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1546, 265.23, '2019-11-20 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1547, 267.23, '2019-11-20 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1548, 261.23, '2019-11-20 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1549, 263.23, '2019-11-20 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1550, 255.23, '2019-11-20 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1551, 266.23, '2019-11-20 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1552, 262.23, '2019-11-20 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1553, 263.23, '2019-11-20 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1554, 269.23, '2019-11-20 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1555, 266.23, '2019-11-20 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1556, 269.23, '2019-11-20 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1557, 257.23, '2019-11-20 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1558, 264.23, '2019-11-20 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1559, 251.23, '2019-11-20 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1560, 259.23, '2019-11-20 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1561, 259.23, '2019-11-20 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1562, 262.23, '2019-11-20 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1563, 267.23, '2019-11-20 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1564, 254.23, '2019-11-20 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1565, 256.23, '2019-11-20 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1566, 255.23, '2019-11-20 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1567, 253.23, '2019-11-20 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1568, 251.23, '2019-11-20 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1569, 267.23, '2019-11-20 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1570, 266.23, '2019-11-20 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1571, 267.23, '2019-11-20 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1572, 253.23, '2019-11-20 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1573, 267.23, '2019-11-20 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1574, 254.23, '2019-11-20 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1575, 259.23, '2019-11-20 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1576, 266.23, '2019-11-20 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1577, 254.23, '2019-11-20 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1578, 258.23, '2019-11-20 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1579, 262.23, '2019-11-20 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1580, 256.23, '2019-11-20 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1581, 265.23, '2019-11-20 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1582, 263.23, '2019-11-20 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1583, 258.23, '2019-11-20 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1584, 253.23, '2019-11-20 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1585, 269.23, '2019-11-20 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1586, 267.23, '2019-11-20 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1587, 267.23, '2019-11-20 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1588, 254.23, '2019-11-20 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1589, 253.23, '2019-11-20 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1590, 256.23, '2019-11-20 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1591, 262.23, '2019-11-20 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1592, 258.23, '2019-11-20 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1593, 268.23, '2019-11-20 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1594, 256.23, '2019-11-20 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1595, 266.23, '2019-11-20 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1596, 262.23, '2019-11-20 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1597, 251.23, '2019-11-20 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1598, 268.23, '2019-11-20 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1599, 256.23, '2019-11-20 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1600, 259.23, '2019-11-20 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1601, 265.23, '2019-11-20 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1602, 255.23, '2019-11-20 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1603, 268.23, '2019-11-20 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1604, 265.23, '2019-11-20 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1605, 252.23, '2019-11-20 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1606, 256.23, '2019-11-20 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1607, 266.23, '2019-11-20 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1608, 251.23, '2019-11-20 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1609, 252.23, '2019-11-20 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1610, 261.23, '2019-11-20 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1611, 257.23, '2019-11-20 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1612, 263.23, '2019-11-21 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1613, 267.23, '2019-11-21 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1614, 257.23, '2019-11-21 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1615, 267.23, '2019-11-21 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1616, 259.23, '2019-11-21 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1617, 263.23, '2019-11-21 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1618, 270.23, '2019-11-21 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1619, 273.23, '2019-11-21 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1620, 274.23, '2019-11-21 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1621, 264.23, '2019-11-21 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1622, 257.23, '2019-11-21 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1623, 258.23, '2019-11-21 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1624, 266.23, '2019-11-21 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1625, 275.23, '2019-11-21 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1626, 263.23, '2019-11-21 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1627, 274.23, '2019-11-21 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1628, 274.23, '2019-11-21 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1629, 268.23, '2019-11-21 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1630, 273.23, '2019-11-21 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1631, 266.23, '2019-11-21 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1632, 270.23, '2019-11-21 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1633, 261.23, '2019-11-21 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1634, 272.23, '2019-11-21 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1635, 267.23, '2019-11-21 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1636, 261.23, '2019-11-21 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1637, 271.23, '2019-11-21 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1638, 269.23, '2019-11-21 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1639, 267.23, '2019-11-21 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1640, 262.23, '2019-11-21 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1641, 262.23, '2019-11-21 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1642, 262.23, '2019-11-21 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1643, 269.23, '2019-11-21 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1644, 274.23, '2019-11-21 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1645, 261.23, '2019-11-21 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1646, 264.23, '2019-11-21 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1647, 273.23, '2019-11-21 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1648, 265.23, '2019-11-21 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1649, 269.23, '2019-11-21 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1650, 274.23, '2019-11-21 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1651, 257.23, '2019-11-21 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1652, 265.23, '2019-11-21 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1653, 259.23, '2019-11-21 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1654, 257.23, '2019-11-21 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1655, 272.23, '2019-11-21 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1656, 263.23, '2019-11-21 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1657, 256.23, '2019-11-21 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1658, 262.23, '2019-11-21 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1659, 259.23, '2019-11-21 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1660, 267.23, '2019-11-21 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1661, 265.23, '2019-11-21 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1662, 257.23, '2019-11-21 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1663, 265.23, '2019-11-21 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1664, 267.23, '2019-11-21 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1665, 274.23, '2019-11-21 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1666, 265.23, '2019-11-21 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1667, 257.23, '2019-11-21 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1668, 273.23, '2019-11-21 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1669, 264.23, '2019-11-21 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1670, 270.23, '2019-11-21 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1671, 263.23, '2019-11-21 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1672, 260.23, '2019-11-21 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1673, 256.23, '2019-11-21 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1674, 256.23, '2019-11-21 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1675, 268.23, '2019-11-21 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1676, 268.23, '2019-11-21 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1677, 257.23, '2019-11-21 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1678, 370.23, '2019-11-22 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1679, 370.23, '2019-11-22 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1680, 362.23, '2019-11-22 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1681, 370.23, '2019-11-22 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1682, 362.23, '2019-11-22 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1683, 377.23, '2019-11-22 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1684, 377.23, '2019-11-22 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1685, 369.23, '2019-11-22 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1686, 367.23, '2019-11-22 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1687, 370.23, '2019-11-22 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1688, 365.23, '2019-11-22 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1689, 371.23, '2019-11-22 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1690, 374.23, '2019-11-22 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1691, 363.23, '2019-11-22 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1692, 368.23, '2019-11-22 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1693, 378.23, '2019-11-22 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1694, 361.23, '2019-11-22 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1695, 379.23, '2019-11-22 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1696, 374.23, '2019-11-22 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1697, 380.23, '2019-11-22 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1698, 373.23, '2019-11-22 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1699, 366.23, '2019-11-22 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1700, 372.23, '2019-11-22 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1701, 365.23, '2019-11-22 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1702, 362.23, '2019-11-22 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1703, 361.23, '2019-11-22 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1704, 365.23, '2019-11-22 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1705, 374.23, '2019-11-22 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1706, 376.23, '2019-11-22 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1707, 372.23, '2019-11-22 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1708, 380.23, '2019-11-22 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1709, 368.23, '2019-11-22 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1710, 365.23, '2019-11-22 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1711, 378.23, '2019-11-22 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1712, 372.23, '2019-11-22 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1713, 369.23, '2019-11-22 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1714, 375.23, '2019-11-22 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1715, 370.23, '2019-11-22 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1716, 375.23, '2019-11-22 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1717, 364.23, '2019-11-22 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1718, 363.23, '2019-11-22 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1719, 376.23, '2019-11-22 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1720, 362.23, '2019-11-22 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1721, 367.23, '2019-11-22 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1722, 373.23, '2019-11-22 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1723, 370.23, '2019-11-22 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1724, 375.23, '2019-11-22 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1725, 377.23, '2019-11-22 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1726, 365.23, '2019-11-22 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1727, 376.23, '2019-11-22 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1728, 377.23, '2019-11-22 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1729, 374.23, '2019-11-22 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1730, 369.23, '2019-11-22 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1731, 379.23, '2019-11-22 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1732, 373.23, '2019-11-22 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1733, 372.23, '2019-11-22 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1734, 379.23, '2019-11-22 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1735, 374.23, '2019-11-22 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1736, 368.23, '2019-11-22 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1737, 363.23, '2019-11-22 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1738, 362.23, '2019-11-22 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1739, 367.23, '2019-11-22 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1740, 368.23, '2019-11-22 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1741, 380.23, '2019-11-22 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1742, 369.23, '2019-11-22 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1743, 372.23, '2019-11-22 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1744, 370.33, '2019-11-23 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1745, 380.42, '2019-11-23 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1746, 385.77, '2019-11-23 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1747, 367.77, '2019-11-23 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1748, 379.61, '2019-11-23 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1749, 380.93, '2019-11-23 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1750, 375.68, '2019-11-23 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1751, 385.06, '2019-11-23 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1752, 368.7, '2019-11-23 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1753, 367.38, '2019-11-23 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1754, 368.25, '2019-11-23 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1755, 385.18, '2019-11-23 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1756, 368.11, '2019-11-23 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1757, 378.59, '2019-11-23 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1758, 373.9, '2019-11-23 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1759, 377.58, '2019-11-23 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1760, 374.76, '2019-11-23 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1761, 372.26, '2019-11-23 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1762, 375.25, '2019-11-23 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1763, 376.27, '2019-11-23 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1764, 368.9, '2019-11-23 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1765, 385.5, '2019-11-23 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1766, 378.48, '2019-11-23 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1767, 378.86, '2019-11-23 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1768, 369.45, '2019-11-23 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1769, 367.94, '2019-11-23 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1770, 384.91, '2019-11-23 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1771, 384.83, '2019-11-23 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1772, 373.61, '2019-11-23 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1773, 383.74, '2019-11-23 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1774, 382.25, '2019-11-23 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1775, 380.26, '2019-11-23 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1776, 380.72, '2019-11-23 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1777, 371.89, '2019-11-23 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1778, 380.8, '2019-11-23 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1779, 376.29, '2019-11-23 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1780, 380.58, '2019-11-23 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1781, 375.55, '2019-11-23 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1782, 366.83, '2019-11-23 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1783, 382.32, '2019-11-23 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1784, 380.93, '2019-11-23 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1785, 379.01, '2019-11-23 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1786, 375.57, '2019-11-23 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1787, 366.37, '2019-11-23 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1788, 373.64, '2019-11-23 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1789, 369.91, '2019-11-23 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1790, 384.81, '2019-11-23 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1791, 371.24, '2019-11-23 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1792, 383.11, '2019-11-23 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1793, 367.6, '2019-11-23 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1794, 382.74, '2019-11-23 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1795, 376.13, '2019-11-23 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1796, 374.03, '2019-11-23 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1797, 382.15, '2019-11-23 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1798, 376.1, '2019-11-23 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1799, 383.19, '2019-11-23 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1800, 380.12, '2019-11-23 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1801, 370.12, '2019-11-23 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1802, 377.29, '2019-11-23 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1803, 382.19, '2019-11-23 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1804, 373.97, '2019-11-23 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1805, 381.16, '2019-11-23 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1806, 373.63, '2019-11-23 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1807, 372.24, '2019-11-23 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1808, 378.83, '2019-11-23 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1809, 384.3, '2019-11-23 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1810, 378.03, '2019-11-24 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1811, 386.45, '2019-11-24 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1812, 375.52, '2019-11-24 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1813, 385.07, '2019-11-24 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1814, 385.68, '2019-11-24 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1815, 382.85, '2019-11-24 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1816, 388.79, '2019-11-24 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1817, 385.96, '2019-11-24 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1818, 376.96, '2019-11-24 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1819, 375.26, '2019-11-24 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1820, 391.0, '2019-11-24 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1821, 389.99, '2019-11-24 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1822, 390.25, '2019-11-24 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1823, 381.14, '2019-11-24 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1824, 390.82, '2019-11-24 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1825, 375.24, '2019-11-24 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1826, 389.18, '2019-11-24 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1827, 374.24, '2019-11-24 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1828, 380.98, '2019-11-24 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1829, 373.93, '2019-11-24 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1830, 382.12, '2019-11-24 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1831, 379.83, '2019-11-24 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1832, 387.94, '2019-11-24 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1833, 390.42, '2019-11-24 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1834, 376.54, '2019-11-24 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1835, 386.17, '2019-11-24 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1836, 391.08, '2019-11-24 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1837, 386.77, '2019-11-24 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1838, 390.13, '2019-11-24 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1839, 377.65, '2019-11-24 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1840, 377.97, '2019-11-24 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1841, 387.56, '2019-11-24 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1842, 387.76, '2019-11-24 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1843, 376.71, '2019-11-24 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1844, 378.54, '2019-11-24 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1845, 375.5, '2019-11-24 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1846, 373.57, '2019-11-24 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1847, 375.41, '2019-11-24 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1848, 372.76, '2019-11-24 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1849, 385.39, '2019-11-24 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1850, 378.89, '2019-11-24 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1851, 377.88, '2019-11-24 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1852, 383.24, '2019-11-24 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1853, 374.32, '2019-11-24 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1854, 390.13, '2019-11-24 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1855, 374.59, '2019-11-24 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1856, 386.57, '2019-11-24 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1857, 378.0, '2019-11-24 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1858, 390.34, '2019-11-24 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1859, 379.13, '2019-11-24 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1860, 389.56, '2019-11-24 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1861, 373.15, '2019-11-24 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1862, 387.93, '2019-11-24 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1863, 388.29, '2019-11-24 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1864, 373.03, '2019-11-24 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1865, 390.95, '2019-11-24 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1866, 382.7, '2019-11-24 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1867, 388.03, '2019-11-24 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1868, 378.21, '2019-11-24 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1869, 376.24, '2019-11-24 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1870, 378.56, '2019-11-24 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1871, 375.53, '2019-11-24 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1872, 376.45, '2019-11-24 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1873, 382.46, '2019-11-24 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1874, 375.66, '2019-11-24 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1875, 373.99, '2019-11-24 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1876, 395.62, '2019-11-25 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1877, 391.15, '2019-11-25 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1878, 393.55, '2019-11-25 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1879, 394.14, '2019-11-25 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1880, 396.02, '2019-11-25 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1881, 389.36, '2019-11-25 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1882, 396.19, '2019-11-25 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1883, 382.46, '2019-11-25 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1884, 377.4, '2019-11-25 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1885, 383.42, '2019-11-25 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1886, 394.57, '2019-11-25 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1887, 380.32, '2019-11-25 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1888, 392.45, '2019-11-25 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1889, 381.02, '2019-11-25 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1890, 378.49, '2019-11-25 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1891, 389.82, '2019-11-25 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1892, 386.59, '2019-11-25 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1893, 390.12, '2019-11-25 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1894, 394.47, '2019-11-25 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1895, 380.75, '2019-11-25 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1896, 379.54, '2019-11-25 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1897, 389.09, '2019-11-25 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1898, 390.37, '2019-11-25 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1899, 386.44, '2019-11-25 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1900, 389.88, '2019-11-25 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1901, 384.88, '2019-11-25 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1902, 389.48, '2019-11-25 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1903, 382.46, '2019-11-25 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1904, 377.78, '2019-11-25 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1905, 388.74, '2019-11-25 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1906, 383.76, '2019-11-25 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1907, 384.86, '2019-11-25 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1908, 393.47, '2019-11-25 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1909, 384.88, '2019-11-25 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1910, 395.42, '2019-11-25 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1911, 385.24, '2019-11-25 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1912, 382.71, '2019-11-25 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1913, 387.0, '2019-11-25 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1914, 378.9, '2019-11-25 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1915, 381.59, '2019-11-25 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1916, 378.63, '2019-11-25 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1917, 389.71, '2019-11-25 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1918, 376.5, '2019-11-25 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1919, 380.7, '2019-11-25 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1920, 377.5, '2019-11-25 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1921, 389.93, '2019-11-25 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1922, 376.72, '2019-11-25 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1923, 394.83, '2019-11-25 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1924, 386.51, '2019-11-25 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1925, 388.21, '2019-11-25 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1926, 383.99, '2019-11-25 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1927, 388.91, '2019-11-25 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1928, 394.48, '2019-11-25 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1929, 387.67, '2019-11-25 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1930, 392.11, '2019-11-25 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1931, 378.13, '2019-11-25 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1932, 387.14, '2019-11-25 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1933, 395.37, '2019-11-25 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1934, 395.85, '2019-11-25 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1935, 384.87, '2019-11-25 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1936, 392.17, '2019-11-25 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1937, 393.24, '2019-11-25 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1938, 386.08, '2019-11-25 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1939, 384.75, '2019-11-25 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1940, 384.91, '2019-11-25 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1941, 391.9, '2019-11-25 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1942, 392.86, '2019-11-26 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1943, 393.11, '2019-11-26 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1944, 389.8, '2019-11-26 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1945, 387.7, '2019-11-26 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1946, 395.27, '2019-11-26 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1947, 399.98, '2019-11-26 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1948, 399.35, '2019-11-26 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1949, 388.42, '2019-11-26 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1950, 390.39, '2019-11-26 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1951, 398.83, '2019-11-26 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1952, 400.1, '2019-11-26 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1953, 389.33, '2019-11-26 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1954, 398.0, '2019-11-26 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1955, 384.44, '2019-11-26 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1956, 393.31, '2019-11-26 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1957, 386.78, '2019-11-26 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1958, 391.65, '2019-11-26 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1959, 395.88, '2019-11-26 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1960, 383.03, '2019-11-26 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1961, 397.15, '2019-11-26 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1962, 389.39, '2019-11-26 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1963, 393.43, '2019-11-26 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1964, 393.0, '2019-11-26 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1965, 387.72, '2019-11-26 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1966, 386.41, '2019-11-26 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1967, 397.41, '2019-11-26 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1968, 396.89, '2019-11-26 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1969, 397.49, '2019-11-26 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1970, 391.31, '2019-11-26 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1971, 381.78, '2019-11-26 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1972, 388.25, '2019-11-26 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1973, 394.48, '2019-11-26 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1974, 383.67, '2019-11-26 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1975, 391.55, '2019-11-26 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1976, 381.61, '2019-11-26 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1977, 389.78, '2019-11-26 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1978, 389.9, '2019-11-26 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1979, 386.84, '2019-11-26 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1980, 389.71, '2019-11-26 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1981, 390.16, '2019-11-26 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1982, 399.84, '2019-11-26 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1983, 395.79, '2019-11-26 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1984, 382.61, '2019-11-26 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1985, 384.38, '2019-11-26 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1986, 394.82, '2019-11-26 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1987, 400.54, '2019-11-26 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1988, 383.0, '2019-11-26 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1989, 399.11, '2019-11-26 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1990, 395.59, '2019-11-26 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1991, 390.72, '2019-11-26 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1992, 384.28, '2019-11-26 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1993, 400.12, '2019-11-26 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1994, 387.77, '2019-11-26 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1995, 396.32, '2019-11-26 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1996, 399.02, '2019-11-26 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1997, 399.82, '2019-11-26 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1998, 389.86, '2019-11-26 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (1999, 384.57, '2019-11-26 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2000, 397.3, '2019-11-26 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2001, 382.81, '2019-11-26 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2002, 397.08, '2019-11-26 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2003, 392.36, '2019-11-26 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2004, 385.34, '2019-11-26 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2005, 389.88, '2019-11-26 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2006, 385.54, '2019-11-26 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2007, 386.15, '2019-11-26 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2008, 402.37, '2019-11-27 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2009, 394.4, '2019-11-27 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2010, 389.45, '2019-11-27 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2011, 389.65, '2019-11-27 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2012, 394.98, '2019-11-27 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2013, 395.1, '2019-11-27 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2014, 390.55, '2019-11-27 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2015, 404.05, '2019-11-27 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2016, 392.29, '2019-11-27 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2017, 393.99, '2019-11-27 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2018, 392.7, '2019-11-27 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2019, 400.58, '2019-11-27 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2020, 396.28, '2019-11-27 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2021, 388.35, '2019-11-27 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2022, 391.11, '2019-11-27 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2023, 396.84, '2019-11-27 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2024, 392.61, '2019-11-27 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2025, 389.37, '2019-11-27 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2026, 400.93, '2019-11-27 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2027, 402.07, '2019-11-27 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2028, 396.91, '2019-11-27 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2029, 393.25, '2019-11-27 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2030, 405.53, '2019-11-27 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2031, 405.73, '2019-11-27 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2032, 395.86, '2019-11-27 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2033, 392.03, '2019-11-27 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2034, 397.05, '2019-11-27 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2035, 387.74, '2019-11-27 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2036, 402.18, '2019-11-27 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2037, 400.87, '2019-11-27 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2038, 392.47, '2019-11-27 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2039, 391.82, '2019-11-27 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2040, 388.2, '2019-11-27 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2041, 387.63, '2019-11-27 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2042, 388.79, '2019-11-27 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2043, 403.71, '2019-11-27 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2044, 392.96, '2019-11-27 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2045, 400.43, '2019-11-27 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2046, 397.0, '2019-11-27 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2047, 397.4, '2019-11-27 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2048, 387.11, '2019-11-27 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2049, 402.51, '2019-11-27 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2050, 386.33, '2019-11-27 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2051, 387.74, '2019-11-27 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2052, 404.27, '2019-11-27 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2053, 389.29, '2019-11-27 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2054, 397.29, '2019-11-27 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2055, 393.58, '2019-11-27 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2056, 390.92, '2019-11-27 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2057, 389.93, '2019-11-27 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2058, 388.9, '2019-11-27 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2059, 387.86, '2019-11-27 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2060, 393.95, '2019-11-27 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2061, 404.4, '2019-11-27 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2062, 397.43, '2019-11-27 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2063, 395.78, '2019-11-27 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2064, 397.88, '2019-11-27 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2065, 388.82, '2019-11-27 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2066, 391.59, '2019-11-27 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2067, 390.15, '2019-11-27 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2068, 386.46, '2019-11-27 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2069, 401.98, '2019-11-27 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2070, 402.43, '2019-11-27 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2071, 403.72, '2019-11-27 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2072, 405.75, '2019-11-27 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2073, 405.45, '2019-11-27 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2074, 396.97, '2019-11-28 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2075, 410.36, '2019-11-28 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2076, 405.89, '2019-11-28 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2077, 391.49, '2019-11-28 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2078, 392.48, '2019-11-28 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2079, 396.5, '2019-11-28 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2080, 393.41, '2019-11-28 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2081, 398.98, '2019-11-28 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2082, 408.98, '2019-11-28 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2083, 405.53, '2019-11-28 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2084, 407.03, '2019-11-28 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2085, 408.47, '2019-11-28 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2086, 401.36, '2019-11-28 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2087, 401.72, '2019-11-28 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2088, 406.75, '2019-11-28 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2089, 407.69, '2019-11-28 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2090, 397.66, '2019-11-28 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2091, 404.12, '2019-11-28 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2092, 397.42, '2019-11-28 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2093, 404.01, '2019-11-28 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2094, 399.55, '2019-11-28 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2095, 392.33, '2019-11-28 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2096, 407.45, '2019-11-28 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2097, 402.61, '2019-11-28 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2098, 395.72, '2019-11-28 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2099, 400.21, '2019-11-28 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2100, 397.65, '2019-11-28 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2101, 408.63, '2019-11-28 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2102, 402.56, '2019-11-28 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2103, 409.41, '2019-11-28 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2104, 401.7, '2019-11-28 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2105, 391.67, '2019-11-28 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2106, 398.13, '2019-11-28 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2107, 406.77, '2019-11-28 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2108, 396.4, '2019-11-28 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2109, 392.05, '2019-11-28 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2110, 392.0, '2019-11-28 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2111, 407.78, '2019-11-28 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2112, 410.31, '2019-11-28 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2113, 394.48, '2019-11-28 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2114, 405.75, '2019-11-28 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2115, 409.42, '2019-11-28 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2116, 405.81, '2019-11-28 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2117, 401.71, '2019-11-28 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2118, 397.69, '2019-11-28 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2119, 399.61, '2019-11-28 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2120, 405.41, '2019-11-28 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2121, 406.06, '2019-11-28 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2122, 400.57, '2019-11-28 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2123, 404.05, '2019-11-28 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2124, 391.38, '2019-11-28 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2125, 408.03, '2019-11-28 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2126, 395.67, '2019-11-28 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2127, 402.7, '2019-11-28 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2128, 394.38, '2019-11-28 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2129, 407.02, '2019-11-28 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2130, 404.43, '2019-11-28 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2131, 409.24, '2019-11-28 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2132, 394.09, '2019-11-28 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2133, 399.33, '2019-11-28 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2134, 395.22, '2019-11-28 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2135, 396.18, '2019-11-28 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2136, 394.31, '2019-11-28 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2137, 411.15, '2019-11-28 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2138, 401.34, '2019-11-28 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2139, 409.42, '2019-11-28 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2140, 407.38, '2019-11-29 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2141, 408.74, '2019-11-29 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2142, 415.21, '2019-11-29 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2143, 405.56, '2019-11-29 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2144, 398.39, '2019-11-29 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2145, 397.11, '2019-11-29 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2146, 408.35, '2019-11-29 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2147, 406.12, '2019-11-29 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2148, 400.2, '2019-11-29 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2149, 413.84, '2019-11-29 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2150, 411.98, '2019-11-29 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2151, 407.93, '2019-11-29 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2152, 402.29, '2019-11-29 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2153, 398.69, '2019-11-29 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2154, 414.49, '2019-11-29 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2155, 413.75, '2019-11-29 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2156, 398.41, '2019-11-29 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2157, 405.7, '2019-11-29 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2158, 396.31, '2019-11-29 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2159, 414.64, '2019-11-29 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2160, 413.72, '2019-11-29 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2161, 402.44, '2019-11-29 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2162, 410.59, '2019-11-29 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2163, 401.35, '2019-11-29 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2164, 400.92, '2019-11-29 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2165, 409.97, '2019-11-29 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2166, 404.87, '2019-11-29 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2167, 411.93, '2019-11-29 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2168, 409.41, '2019-11-29 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2169, 402.52, '2019-11-29 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2170, 401.58, '2019-11-29 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2171, 400.65, '2019-11-29 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2172, 412.92, '2019-11-29 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2173, 403.04, '2019-11-29 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2174, 414.57, '2019-11-29 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2175, 416.09, '2019-11-29 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2176, 403.11, '2019-11-29 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2177, 411.11, '2019-11-29 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2178, 412.15, '2019-11-29 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2179, 410.0, '2019-11-29 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2180, 414.31, '2019-11-29 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2181, 397.2, '2019-11-29 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2182, 416.13, '2019-11-29 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2183, 401.73, '2019-11-29 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2184, 404.01, '2019-11-29 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2185, 396.3, '2019-11-29 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2186, 404.09, '2019-11-29 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2187, 406.56, '2019-11-29 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2188, 414.92, '2019-11-29 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2189, 407.15, '2019-11-29 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2190, 412.62, '2019-11-29 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2191, 415.19, '2019-11-29 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2192, 413.11, '2019-11-29 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2193, 404.77, '2019-11-29 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2194, 399.33, '2019-11-29 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2195, 402.68, '2019-11-29 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2196, 411.21, '2019-11-29 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2197, 400.55, '2019-11-29 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2198, 402.42, '2019-11-29 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2199, 405.02, '2019-11-29 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2200, 401.48, '2019-11-29 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2201, 397.88, '2019-11-29 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2202, 401.17, '2019-11-29 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2203, 415.84, '2019-11-29 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2204, 413.31, '2019-11-29 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2205, 400.78, '2019-11-29 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2206, 410.83, '2019-11-30 10:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2207, 409.85, '2019-11-30 10:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2208, 401.58, '2019-11-30 10:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2209, 409.01, '2019-11-30 10:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2210, 404.12, '2019-11-30 10:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2211, 412.8, '2019-11-30 10:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2212, 417.59, '2019-11-30 11:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2213, 420.4, '2019-11-30 11:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2214, 408.98, '2019-11-30 11:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2215, 412.09, '2019-11-30 11:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2216, 402.51, '2019-11-30 11:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2217, 402.89, '2019-11-30 11:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2218, 416.33, '2019-11-30 11:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2219, 420.11, '2019-11-30 11:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2220, 411.1, '2019-11-30 11:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2221, 411.59, '2019-11-30 11:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2222, 409.18, '2019-11-30 11:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2223, 415.64, '2019-11-30 11:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2224, 401.53, '2019-11-30 12:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2225, 408.71, '2019-11-30 12:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2226, 413.76, '2019-11-30 12:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2227, 411.92, '2019-11-30 12:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2228, 413.75, '2019-11-30 12:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2229, 410.61, '2019-11-30 12:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2230, 407.18, '2019-11-30 12:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2231, 411.19, '2019-11-30 12:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2232, 404.53, '2019-11-30 12:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2233, 417.37, '2019-11-30 12:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2234, 418.81, '2019-11-30 12:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2235, 412.69, '2019-11-30 12:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2236, 418.73, '2019-11-30 13:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2237, 408.92, '2019-11-30 13:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2238, 417.45, '2019-11-30 13:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2239, 407.73, '2019-11-30 13:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2240, 403.56, '2019-11-30 13:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2241, 416.73, '2019-11-30 13:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2242, 411.08, '2019-11-30 13:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2243, 419.58, '2019-11-30 13:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2244, 408.8, '2019-11-30 13:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2245, 417.9, '2019-11-30 13:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2246, 418.21, '2019-11-30 13:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2247, 415.45, '2019-11-30 13:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2248, 420.22, '2019-11-30 14:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2249, 410.11, '2019-11-30 14:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2250, 414.2, '2019-11-30 14:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2251, 412.92, '2019-11-30 14:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2252, 418.4, '2019-11-30 14:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2253, 410.59, '2019-11-30 14:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2254, 417.49, '2019-11-30 14:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2255, 405.18, '2019-11-30 14:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2256, 409.79, '2019-11-30 14:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2257, 416.44, '2019-11-30 14:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2258, 402.85, '2019-11-30 14:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2259, 411.87, '2019-11-30 14:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2260, 402.0, '2019-11-30 15:00:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2261, 408.32, '2019-11-30 15:05:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2262, 403.14, '2019-11-30 15:10:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2263, 411.07, '2019-11-30 15:15:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2264, 412.25, '2019-11-30 15:20:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2265, 408.39, '2019-11-30 15:25:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2266, 410.25, '2019-11-30 15:30:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2267, 416.15, '2019-11-30 15:35:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2268, 410.99, '2019-11-30 15:40:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2269, 402.92, '2019-11-30 15:45:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2270, 402.93, '2019-11-30 15:50:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2271, 406.7, '2019-11-30 15:55:00', 18, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2276, 358.23, '2019-11-30 10:30:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2277, 376.23, '2019-11-30 10:35:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2278, 364.23, '2019-11-30 10:40:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2279, 376.23, '2019-11-30 10:45:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2280, 376.23, '2019-11-30 10:50:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2281, 375.23, '2019-11-30 10:55:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2282, 359.23, '2019-11-30 11:00:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2283, 368.23, '2019-11-30 11:05:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2284, 376.23, '2019-11-30 11:10:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2285, 371.23, '2019-11-30 11:15:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2286, 373.23, '2019-11-30 11:20:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2287, 368.23, '2019-11-30 11:25:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2288, 372.23, '2019-11-30 11:30:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2289, 371.23, '2019-11-30 11:35:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2290, 363.23, '2019-11-30 11:40:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2291, 363.23, '2019-11-30 11:45:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2292, 358.23, '2019-11-30 11:50:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2293, 368.23, '2019-11-30 11:55:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2294, 374.23, '2019-11-30 12:00:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2295, 370.23, '2019-11-30 12:05:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2296, 372.23, '2019-11-30 12:10:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2297, 364.23, '2019-11-30 12:15:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2298, 369.23, '2019-11-30 12:20:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2299, 364.23, '2019-11-30 12:25:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2300, 358.23, '2019-11-30 12:30:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2301, 375.23, '2019-11-30 12:35:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2302, 371.23, '2019-11-30 12:40:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2303, 366.23, '2019-11-30 12:45:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2304, 359.23, '2019-11-30 12:50:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2305, 360.23, '2019-11-30 12:55:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2306, 357.23, '2019-11-30 13:00:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2307, 360.23, '2019-11-30 13:05:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2308, 367.23, '2019-11-30 13:10:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2309, 366.23, '2019-11-30 13:15:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2310, 373.23, '2019-11-30 13:20:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2311, 370.23, '2019-11-30 13:25:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2312, 361.23, '2019-11-30 13:30:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2313, 375.23, '2019-11-30 13:35:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2314, 376.23, '2019-11-30 13:40:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2315, 367.23, '2019-11-30 13:45:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2316, 368.23, '2019-11-30 13:50:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2317, 362.23, '2019-11-30 13:55:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2318, 359.23, '2019-11-30 14:00:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2319, 372.23, '2019-11-30 14:05:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2320, 374.23, '2019-11-30 14:10:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2321, 366.23, '2019-11-30 14:15:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2322, 373.23, '2019-11-30 14:20:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2323, 358.23, '2019-11-30 14:25:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2324, 371.23, '2019-11-30 14:30:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2325, 360.23, '2019-11-30 14:35:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2326, 362.23, '2019-11-30 14:40:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2327, 362.23, '2019-11-30 14:45:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2328, 369.23, '2019-11-30 14:50:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2329, 357.23, '2019-11-30 14:55:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2330, 371.23, '2019-11-30 15:00:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2331, 358.23, '2019-11-30 15:05:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2332, 373.23, '2019-11-30 15:10:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2333, 371.23, '2019-11-30 15:15:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2334, 357.23, '2019-11-30 15:20:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2335, 367.23, '2019-11-30 15:25:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2336, 376.23, '2019-11-30 15:30:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2337, 368.23, '2019-11-30 15:35:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2338, 358.23, '2019-11-30 15:40:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2339, 369.23, '2019-11-30 15:45:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2340, 371.23, '2019-11-30 15:50:00', 110, 14);
INSERT INTO stock_price (id, price, timestamp, company_id, exchange_id) VALUES (2341, 370.23, '2019-11-30 15:55:00', 110, 14);
DROP TABLE stock_user;
CREATE TABLE stock_user (id bigint NOT NULL AUTO_INCREMENT, active bit NOT NULL, email varchar(255) NOT NULL, password varchar(255) NOT NULL, user_type int NOT NULL, username varchar(255) NOT NULL, PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO stock_user (id, active, email, password, user_type, username) VALUES (13, true, 'admin@cn.ibm.com', '$2a$10$a7Y55gaRpfle8K9gN3f9j.HBph98kEUxx8XXYaE0.dRvVhHNvdUpK', 0, 'admin@cn.ibm.com');
INSERT INTO stock_user (id, active, email, password, user_type, username) VALUES (14, true, 'user@cn.ibm.com', '$2a$10$jmy35zaqufqBPM72B/Iw6.gTY0VPJxEf3hFKf1wPnS4y4N6UuSHkm', 1, 'user@cn.ibm.com');
DROP TABLE uploaded_files;
CREATE TABLE uploaded_files (id bigint NOT NULL, company_name varchar(255), exchange_name varchar(255), file_data longblob, file_name varchar(255) NOT NULL, from_date date, message varchar(255), records_processed int, state int NOT NULL, to_date date, total_records int, PRIMARY KEY (id)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO uploaded_files (id, company_name, exchange_name, file_data, file_name, from_date, message, records_processed, state, to_date, total_records) VALUES (2342, null, null, 'PK     ! †Úôw?  ?   [Content_Types].xml ?(?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ÌU[K?0~?%¯²f*ˆÈ:?<ªà?19[ÃÒ$äœÍíß{š]?Ã‚¾´´É?.''=_·‹?sHhƒ¯Äy?xŒõ“J¼{×¢@R?(<Tb	(n‡§''ƒÑ2\í±5Q¼‘uÂ2Dð¼2©QÄi"£ÒS5yÑï_I<§?b8¸‡±š9*üz¥äÝzQÜ­öµT•P1:?±P9÷æI/ŒÇV?	z?0t?1?2XPãÊ?,3¦W bc(äN??#]?*?2ÃÚF<c??0?+?»Z?=óq$k xQ‰žTÃÞåÂÉ¦?!LËý Ç¶&·¨l”õÝ{øóf”ùvÞ±Ö_>RÇÅ?ÑqùG:ˆgd¾þþH2Ì@Z:À®??zˆ¹V	?+?4O:?û€­œ¾«yd:n?w?GÜK
9E/`Ymu/2$²°­]Ã¿e?þµch3Þ€ÙÁ-??e?	  ?? PK     ! µU0#?   L   _rels/.rels ?(?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ¬’MO?0†ïHü‡È÷ÕÝ?BKwAH?!T~?I?µ?$Ý¿''T?G½~üÊÛÝ<ê?!öâ4¬‹;#¶w­†—úqu*&r–Fq¬á?vÕõÕö™GJy(v½*«¸¨¡KÉß#FÓñD??.W	??=™ZÆMYÞbø®ÕBSí­†°?7 ê“Ï?×–¦é??9LìÒ?ÈsbgÙ®|Èl!õùUSh9i°bžr:"y_dlÀóD›¿ý|-NœÈR"4?2ÏG?% õZ?4ñËy?7	Ã«ÈðÉ‚?¨Þ  ?? PK     ! ­÷L?"  ?     xl/workbook.xml¤UÛN?0}_i?Áò{H?mD‹hC»BÀÂK%?&n?%‰³¶C??¾ã?)—¢QëËxr|f|?98\?ºgRqQ?0Ùs0bU*2^-Gø×Ub0RšV-DÅFø)|8þþí`%äÝ\?; ?á\?:²m•æ¬¤jOÔ¬‚•…%?0•K[Õ’ÑLåŒé²°]?	í’?
w‘ü†X,xÊb?6%«t"YA5ÐW9¯UV??+©¼kj+es^pýÐ‚bT¦Ñé²’Î{M´–?áOhÜ~''XÚÙªä?J,?@?éø‰c?*ëÝ|É·%»ç?·¬døIV?+|#Î—?H«ÕJÉû$Z°åæâñÁ?ìº?.¢uý“–æ?
?
ªôq?5ËFx¦bÅžF²©''/`?%?;Àöx+çs?2¶ M¡¯@?=<T†ë»nh<AG…f²¢šME¥A‡›¸¾ª¹{?P8º`.?b…–?«sªsÔÈb„§?,¹ŒgÍï™Ò"½³Œ˜™¶æT±Î?2ªéìdz6{¡Uº[?¡VššØƒŽg7~??+£^‘çZ"ŸÆgp*—ô?”mJ?x·U*#r?ÄûÉ~z?3?ËŸ?(LB?Èp2ÆGÇ‰?ÁÈ0Jmt?9~=?>yg?]?+Ä‰?=Óxt6e?7M¿öd6?5g+?,3E?^ebÕFôÐ‰ïc´jnx¦sP™ç(¦ÎvÂø2¶Äu?ŠÁ?áWlâŽMešWl?tÚëh?=ªÚ?4W,ä¢µµ	ÉGfy?ÏŽ7Üf[oo½Ýw½½?0Þz{?8zJ)-R(''Óµ$†Äq‡Æƒ­õ™ÒmJ??$LoèZ~B?''CÇšLB?
âÄöI<=sîæS?ââ?7ÈÀnßfT7P]¦°ÚydÚdc?a“ÖWe]?&”Í?rL®Û¬¼»©€?b?Õñ_   ?? PK     ! ôõ;  Y   xl/_rels/workbook.xml.rels ?(?                                                                                                                                                                                                                                                                 ¼”Ïj?0Æïƒ½ƒÑ}q’n]uz?ôºu`l%Mì`yòö39$”ìz1HÂß÷C²¼?ü´ûBOµ³?$†V9]ÛJÀÇéõnŒ‚´Z6Î¢?	ÅíÍþ?%2uG,ªX`Bèž8''e°•”¸m¬”Î·2ÄÐW¼“?,+äyšn??ÅL?? ?`§¾‹Î?k»²??8õÙ?,ø·óg2?!ŠJ_a0¦ˆ•M‰_†y\FÉF=Y?	fL-AäWîH?“]&[‚Ù?	CFzÔïÁÇU iD³ôÌÃ?0¡oâæ¯–†xÉþ~M??''?!äÃ9Îƒ?>„â  ?? PK     ! •¿?
  ˆA     xl/worksheets/sheet1.xmlœœmoã¸Çßèw0ôªE»¶(?
?ö²YÜ¾è¡¸»ö^+Žœk[®¤$?8ô»wH?¥ÌY»‰3|?5?3Iùú‡oÇÃêµlÚª>??:VåiW?V§§›à_¿}þ°VmW?‹C}*o‚ïeüpûç?]¿ÕÍ×ö¹,?Ôpjo‚ç?;_m6íî?<íº>?''HÙ×Í±èàÏæiÓž›²xÔ…Ž‡M†rs,ªSÐ×pÕøÔQï÷Õ®üTï^Žå©ë+iÊCÑAûÛçêÜ^j;î|?;Í×—ó‡]}<CÕ¡ê¾ëJƒÕqwõåéT7ÅÃt‹D±[}kà_?“‹mçéXíšº­÷ÝjÞôm~/?ßä›b7Ôô^¿W5‘Ø4åk?8V/kR?uÅceÉÂÊäP™º\ÍÕKõx?š×??áøã’ößàöú±?+U«¦Üß£«{?›ÛkÝþ]•o­õ~?¿–‡r×•?$
V?>ÔõW•ñ˜B¨²?T•Å®«^Ë»òp?	~Š@k?íE?›Á‡ýþâï³îÓ?lVå¾x9t¿Ôo?•ÕÓsŽÅZ?
v?rÃÏÕ±R?t§â[ß®ê±{†wÉZˆH?2NƒÕCÙv?+U<Xí^Ú®>þnr™ºúZ ™?øý6?"?W	„BW?/•l×q´ÍüÛ!LðûRE¸NS!=*ÙôWF_ßOEWÜ^7õÛ
?>HoÏ…H¢«bµSÆ`…ËÒÂß¯·áõæÂ±3i?Úi?4íÎNK¦iŸì´tšvo§‰!mm?:Ëû?*ëM ?‡æÊYsí´xÖÜîW»B]†Û$•ë8ùÛê—??úñþ·ßï?þKô÷8üëõf¯®C’æ?>Õû‡ÒA$YžÏ„õéI!×cT>Q?Q§¬?:?1(Ÿ«S^?:ù¹hÊÇ ¿¡ï’«;)¡ÃkÕ«¶Ò÷¨S¼„?:?7?ß§âE˜gñøÊð8CïF®„²òWrWBÌ¯ÄD<??,|/°÷JìÓGÂ~å„@¸áÊ??¤@uçNB?L?ö^i}?(0?#yyeáØ?&}:"PYy?(=J$‚½WZ`?>L£d;¼òp?&3T ²?!)0??¨Ù Ô{?öé£@±•ÑåZÃÕD ‚Ï÷c­²?!)pëÓE?¶÷JìÓGÛÄzå[|ÉQÊ??¤À|aí½?ûôA Œ¶azyI?Œà6?+3/Q?$5B¢{ Éâ÷ÝT·GO³ÄDi2?2?8^[êN?|Qf‡L9?3''Të–)#Dfï˜¦nðM0?vÃ»¨¦c„ÌÜÄ£J?ì™G?*@?
)i.ÔÑ¶¤Ùs}SCM„“?6;"È±”÷ˆ`†ÈtAi??,•ù8íS“~„c?6;dr`?=d"£ªqÌt?ÛØ3?$§þ?mvÈä?Ê{?Mà˜?ÑÜÆr ?>(?&?8‘›qTúÞô¢ìÞtaŽi?(s? ?òÞÄA''r“ŽÊBËôblqÁŽi?(3O- ` ÂqG?–(¿p®t!i? 3OF"Hi$À¡''rSÊBGÓ‹{d¤ui?(SZL@ÂyŒ“?6;V
8òòË¢i3K=“]d¦—?8ý›?bœ{´Ù!’ã(¿l?4??=?"a?5 ÅÄ¢Çª»ìãÃ@)2èöpk2?2m6?8i?#?AyY[Ôr1i? 3
…µ.Kp?<œb÷ÚŽÊB@¸lñÃ8f:í”?&??<''À]?,c+•îU’–éÃ@?=l§®ò¤Q–Œx‡”Lœb7?,´LÊ^?1ÍéZO?ˆZv?(v3ÊBËôb dA?8fdNW|ÒXXt@‚{?3?6;? Ž ü?!ÈÅ@¦e?d?d8ÅnRYèh?0zo?È´l™D?$8i3K•…	‰Ë?8f?	f4ar? ?H?29‚ò??8fd?(ÙFãÊAJÁA?3?6;dr?=d"Ó‰qÌÈœîy?H™Qp?;`[`??eÈººn7k?Ã)l< ? ?H?ÑäÊ{D3E¶ð\[\¦e£Lk? "? ?H?29‚òËP?8f:íŒ?&tRpà¤Í?Ayh"©cFæŒ†?õ†„ƒg mvÈäÊ{ÈÄö]ë@¦eC§Móp?œ´Ù!“c (¿lÖ8f?9ÝûJáPË¸x@l?&8i³C$G@P~á?" Ó²!?fÊáAB?œ´™—©²‰ËàÀ8¦ci2?2­MAÂ?H?29‚ò¨‡|3??3ÊbûDg mvÈäÊ{tZd?8fd?(w¶yH?œ´Ù!“c (¿l 2?™Ó>i–[t ;?>??3>?!/B??<?3[?1 á@?¤ÍŽhr?vZ×^˜i?0m¥uÒ€??3?6;dr?=? „Œc¦Ó?Èf?-¹å''pÒf‡LŽ ü?	ÅÅ@¦eC4s8{8?'' mvˆäÊ{ˆÄÎß¹VLËF‘ö?pîU •…†ƒ?d3]vzH?~•?g mæ£©²?2!ÑãÎD¢i?2M†K4¥½? ??8i³C&Ç@P~? d32?$C?h8HqÒf‡LŽ ¼Ç½‰l?ÇŒ?)MND$?8i³C&Ç@P~?8k32?$#a?9áx^s?–â¤Í?Ay™È:qÌÈ?2Ðäbº¥?!?8i³C&Ç@PÞC&òù?8fdN×dgh8HqÒf‡LŽ ¼?„EÓuÈ´lií…2?8¥î?0•…žN?‹¥‹€LËF‘[ëÌ VRœ´ÙKŽ üÂéÄÅ@¦eƒÌÄÚU’|
g ÔÍ@*M¯0\ë@¦e£L{c„?3?6óÑTYH™?Md÷Ä8? “a?9>À?Hœ´Ù!“c (¿P¦ë´i? SÄÖ?A?Hœ´Ù!“c (?Œc&?3²Ù !á@?¤Í?AùeÓ‰qÌÈ?1°O$’p qÒf‡LŽ ¼G4‘u ã˜?9c é#
Ôaa?3?6;dr?=d"§»ŒcFæŒ?&?
Ïª''
±‡¾Ü§TIzœõ! ì¤žn·}k2½?“p OB?2?¤J?2?1~*úN?Ï€¹RE–«u«Ù?1=3$¥Í??L?Œø?ßOÐU;x,{_?:õÈ·šQ¾ŸááýS}WŸÌ??''ªÏÅSù¢yªNíêPîár„kðÜôÏpë÷]}ÖVè‚uOd_þz†¯0(áÑäpcÍ¾®»?¦Þ_Ëîå¼ª›
¾ž@+ÁMp®›?)?<\©Gà›/‘~Ê|?…Û?  ?? PK     ! •òCê¯  ?     xl/worksheets/sheet2.xmlœ“Ín?0???‚î±ì4íÖ NQ?(ÖÃ?aØvWd?b‰‚?4	†½?(§I?T°õÏ¤H.îwn/“E_Ëª(? o°±¾«åï_O?/R$Ò¾?z¨å’¼_^}Zl1®S@?	>Õ²''
s¥’éÁéT` ?''-F§‰—±S)DÐÍ(?5-Ë[å´õò@˜ÇKØ¶ÖÀ#šOH„AÛŸzÒ‘æÌ%8§ãz&]`ÄÊ–ö#T
gæÏÇ¨Wû½«fÚˆ]äo?õQÍ¸¦ÉY1aK“ÕÁæs÷ïÔÒæD:?"L5S^l?j?1“ª?k?»þ ìöËÏ?ÛÔòoùÚ&<V?+''e•»wíŸ\.?Î^?m-*©–?1yþXØ¦ws‘sq…¸?Ï¬£ÌWÕÙÝ§1DÑ@?7ýÄ?7°]Oœø³bv??j?=g<Y?-zÊàJ
?N_Ñ¿–M?ºƒ?:v?''1@ËÄ²ø,E<ÐÇ9awo¤X!ºãªç? ~Y?3µˆt\d''Ne¶ü  ?? PK     ! c"Lm?  ?     xl/worksheets/sheet3.xmlœ“ßk?0Çß?„ÞcÙiÚ­!N)+e}ŒÑí]‘O¶ˆ?’Ò$Œý?;9?;ÈK¨±?;ýøèNúÞêþ`{?
!t5¯Š?3p
ãÚ?zyš}?,&?Ù£ƒš!òûõÕ§Õ?6v ?ÁÅšw)ù¥Qu`e,Ðƒ?ÁÊDnhE?d3,²½˜—å­°Ò8~",?%ÔÚ(xDµ³àÒ	 —‰âñq¤Yu	ÎÊ°Ýù™B?	?1½I?Ê™UËçÖa›žò>T©Ø!?;§ïzÜf??ÛÉ0¢N‘Å)æóôïÄj"ç¦Z? ?&_?;jþ±ª›‰5‡]v;Áòq…å?45?S?=3úW?)g%ia°Æ±¿|½jÝpÎŠ?5¨¸X?ñü6°??,kqƒ¸?Ï´G™§Š³¹O?Ö€–»>ýÄ?70m—Hø‹b1?e??)>E4º”?géèI¿¢{+›¼ÎË¾Ë?Yšˆeñ™³p?vB?ôÞp¶Á”ÐŽ^GEtùeAÇ¤Óè?$?2[?  ?? PK     ! ½ ¿½K  "     xl/theme/theme1.xmlìZKo7?? öžX?%?2"?,ÅIü‚­¤È‘ZQ»´¹ËIÙÑ­H?
M‹^
ôÖC?6@ô’??)?È_è\IK‹Š­ÆE_v?x?çÍÙ¡oÞz?0tL„¤<?åë? ?4?=šFõà~§}m%@Rá´?OI=ÜZ{?½›xU?$!èS¹ŠëA¬T¶º? CxŒåuž‘Þõ¹H°‚[-?>?	[X,•–L? ?8¶»?>	êh–ÁÚˆy‹Ámª¤~2q Y‡Â`{GeCÙdcV`??éG*@K/êAÉük7ðjNÄÔ?]Ûüät9AïhÑ¬)¢îxÑr»R»±1æo LMãZ­V³U?3 † ©•¥È³Ò^)7F< {9Í»Yª–*.¾ÀiJæZ£Ñ¨ÖrY,S²—?)üJi¹²¾è?Èâ«SøJc½Ù\v?dñËSøöÚrÅÅPÌhz4…Öm·sîcHŸ³M/|?+?>AA4Œ£K/Ñç©šk	>ä¢ dX?©aF?8?(nâ¤+(P†S.áAi±Ô.-?ú_Å\Uôòx•à}Ê©GZ$CA3U?×  yóò?7/Ÿ£7/Ÿ>~qúø‡Ó''ONoy9„›8Š„¯¿þä÷/?D?=?êõÓÏüxY?üÝG?ýø??5?ÕçÏ~yñì??úÍS|]ànÞ¡	‘h‡œ }ž€n?0®ä?+æ£èÄ?:8??-;À!f>\ƒ¸Æ{  ´ø€?‡Ž??(êYù^?8ÀmÎY??îé?
?ÒÈ¿¸q?ûÖnâÔqmkAM…¶}3&Ž˜{?
G$%
éwüˆÙCJ»nÓPpÉû
=¤¨©?$ÚuiB´IðË?'' ¸Ú±Í?ÔàÌ§?9v‘˜y„ïæ˜?6(œøXvpÂŠßÂ*?	y0a×’
<ÆQ«G¤ôÑì
Ð·àô{ª™×íÛl˜¸H¡è‘?æ¼ˆÜàG?''™WfšÆE?y!ŠÑW>?6w3Dßƒp:ÓÝ(qÜ}~!¸O#G¤I??7áñåmÂÝ|?>&?*?.§°®C÷EGc9¡½E?''¸G??#AƒgŽÍ''Bß¡ªl_`ÝÅn¬êû”Hèt33¦[T:!{@">Cžíá™?3Äi‚Å,?;àu''taoó–Ò]?;z>?¯Qv%?(wk×½;»–¾—þx
??1ÈËÃy?hÈÜ4P?/l?f?“€é`Š¶|?H÷OHô¾j?^º¾›´7@7?49	MßÖ?0
<ÓñT?:Û²íxfU–Í3}?,Ü¿°»ÙÀƒtÀ?2]º®š›«æ&øÏ77³rùª¥¹ji®ZßGØ_ÒÒL?hp&3ïIfŽ{ú”?5ddKš‰„›^šQ”™GŽÇY—ZXÀÁE$¸ú?ªø ?‡ÊfxÉœu$Q?%ÌŒÌc3F%gx›Á(…‘™qVõôËÚObµÍ{öñRq?9fc¤Š?$u´Ð’fpÑÅ–n¼Ûbe+ÕL³¹ª•h¦cpT«¬M<²þX5x8?&|1#øÎ+/Ã°Y?s4h¯{ÚîÖG#·è?/ÕE2†oÂÜGZïi•“F?2¥ˆÖÃƒžXžã£Âj5ÍöV»ˆ“ŠËUf,7òÞ»xi4¦xIçí™tdi19YŠNêA­ºXPˆ³zÐ‡-\&x]êï?"8?•°an2›px³æ?2ÌÜ­Ý?vê@&¤Ú?2¶¡a^?!ÀR3N6?/VÁ¬—¥??]LŠ¥†¿M
°£ëZÒï“P]xbæé—R>PDÄ½Ôe±Áý:TA??0I7AßÀ¡¶¶y??<éŠG1gŸc–Å8/?:EG™lá¦ e0wVZ#èæ•Ý(7?*&?/I•b?ÏTÑû	Œ¶—z?!œI
Œt¦Ô.TÌ¡
e1?dLí€hƒExA''£æ? Çú·Í9ËÃ?5L(?> °©X?eÉD?9ÌÊùÞeY²œ‘í0&âÊÌŠ?%Ç„ut\Ö{{?buSM?2`pgãÏ½Ï3??&çŸÚùØdž·=˜ìª–þ‚½H¥P?[AÍ»÷™žj\Þ²±Ï¹ÕÚŠ5¥ñbõÂ[mp.? &B*B4šÖ¼ÜáûP[œšÛö
AT_³?Ò–?.4Nö¡&ÍÊv^yw{émœ­æîx]ÈÒ?ÓéÎiìqs?.çäâÛ»ÏùŒ[Ø±u±Óõ˜’ölŠêöh?!cc?>£ø''¼{ŽÞ?ÃêS?C?‚ã(øÊ°ÇÝüÖ¹†t?   ?? PK     ! 5¦•?  ?     xl/styles.xml¬U]nÓ@~G?«}w?;$‘í?4µ„R‹ÄëÆ^''+öÇ¬×??<rnÀm?ÌÚNâˆ?-…—xvvæ›o~vŸ·‚£[ªk¦d‚ý3#*sU0¹Ið»›Ì™aT"Â•?	ÞÑŸ§ÏŸÅµÙqz½¥? ?u‚·ÆT×­?-?>S•pS*-ˆ£Þ¸u?))j?$?xÞÔ„I?#,D?Aô‡¦rr%*bØšqfvF"_¼ÚH¥É?ÕÖIŽZ?Ôê}NûGÁr­jU?3ÀuUY²œþIwîÎ]?? ùiH~äzÁIî­~"RèjzËlûp—J?åª?&ÁÁ Hãú?%Úëc7sÅ•F?E?4?Ú[üúþõçoÖª$‚ñ]?¬¢ëë`&T?*]±{3?7aN:*[¢k˜ žÝ$|(N®†xŒó?<A‘Æ0†j™ÁòÍ®‚,%ÌnO·³³î÷Xo4ÙùA4rp»€i¼Vº€·²¯°îUiÌii m?6[?5ª‚ßµ2?)?F6JnK¶÷H''§œ_Û÷ô¾<ÁnK$?	óªH0¼L[ì½)b×,?­ÇÁ†@ùïaQ[ðO¼ý?1?îˆTß]5bMu?-†a??úØ(CßjZ²ö.´À??»ºB%G?:iÖ¡ìÈŽ~‚¯l~–ÅP:´n7LÞÑ(?,Úc?=;y?.±n(Q`
Z’†››Ãe‚?Z°F«·ìV?"ÁGùµPjcÐÖ¼®áù?5?%øóåòÅ|u?ÎÌ[ÎœpB#g-WN^,W«l?ÞÅ—Ñ*ý‡EÚm~F?\?Ö­?R?>?<:ôô»·	´ÇÜçÁÔ{ùž“M<?	§dæÌ¦“ÈÉ"?XMÃåe”E#îÑ®çú~¿º-ùha˜ œÉ}¯ök¡Ip?''	w?	÷ø·š?  ?? PK     ! öNê]?   k     xl/sharedStrings.xmldPÁN?0?#?VNp`)CbhJ3ie?'':.Ü¢Ô´ÓÅé´ý=©v@ê|ó{~¶ßS›³ïá„‘] R</
H64ŽÚR|>žÞp2Ô˜>–â?,6úþN1''ÈZâRt)k)Ùv?/Â€”™?½I¹­ä!¢i¸CL¾—Ë¢x•Þ8`ÃH)ß}Y	?G¬®ÈJhÅN«¤«àC¨BƒJ&­ä„_?:?»³??7ì¶ÞÍûè,?#Ô‰ø?>ùq>up~¾lòºæÁØœA6?O(ô»I7O}S-?q™Ã?   ?? PK     ! ;m2K?   B  #   xl/worksheets/_rels/sheet1.xml.rels„ÁŠ?0E?þCx{“Ö?CS7"¸U?búÚÛ—÷ý{?eÀååpÏå6›û<?f?,Ôº…äch°ð{?-¿A?8êÜ	-<a?.¾šNNJ‰ÇX±…Q$?Ã~ÄÙ±Ž	©>æÙI‰y0Éù?Ð¬ªjmò_?/Nµï,ä}W?:=RYþìŽ}<n£¿ÎHòÏ„I9`>¢H9ÈEíò?bAëwöžk}¦mÌËóö	  ?? PK     ! ¯Ûæç  H  ''   xl/printerSettings/printerSettings1.bin
`bðdðcaÐep“žN?ñ@?	?C>CL’e?@²ˆ¡„Á€ÁY˜Ù?0äˆ?o`fd`dxÅ•Ï‘¤ù"˜˜˜€$3P?C*PO	?,ë¢Œ`„jÑL`G`7/ ?3ì‘,D3B?PA†€?\¶B$?b¼™2?JAá†ØËeL¸‚\?ä?
L5Ô÷Ù¨‰ƒ-Hõ †`?/??F?#TBˆ!?-?°†.A©y¶Aíß? Ys—•¡bNiÈéIWxö|?,~¶[gÃmY?•—vN?9?1f“ía£?/ç?‘å?6ÌºÞlJ?[Qý?)·þÜð¸S³‡?½fˆÛ»O?=±þÀÑ?,?;ÝÄJ×Ló”éf‘ëÊ˜?¢¯°QË³VÇaëŒ?"~gM|b­m}%&ÅkJÄæúÇy	eç´?ãžq?0—VÌéu?7Þ?;ós½Ãd??/o?.êÑ{/-§ô^:?½ØY5õQ?Ÿ‰õûŸw°à³qjYæð\ÖHl?>?	Ú›ßE?>?,ã»g–Ï”ÏŒJ÷U/?	n2œs)1àÎýy??=?Íø´pgtðƒ??ø„ÜË”ãõ³ýüý¨™¿\Q}b?&?<æõ¹_?\?*½i|Wg1o??Íh‘sávNKd&Çv/nüèà¾’­Ú¤}?.ëg?4õY«m7ˆµ°[ÑÖ6áâq®·z5yNw/]8·ã©²µƒÚz-Óy+]-Kòæ	??Q°ÒÕó?=m}Ágëƒ?åâ¿v‹\??.?3ÐÐdz#12''èÇ*‰“ÂY?)g$k„[ÅX,>?,I4sÈ¹èP?&¥ûÞæ?‹»ÏÍQ{/äÑ2ÇU›·>?95öíÌdÙµïe™S8KW~Üjk?*}¶æµ“è‹c	Šü_>ÒûñÀëÁžæeµº±ñ¡Š[s5Äâ?Oã^7Ùê²ñc?8už¤ù’ÆßžÊ?$=Ï¼YÁÅrrÑáûOn?}èkº—«¶t??ï}?üÐìº¥å?''bL?=™“_¿J×SoŸÓ?-oÕ§Ó¯w_99),ËsÞ¼3ö¾»ùûþ—û??3…ÄFìÑÑÑÑ2B Ô–? vÐm÷`ßüfž¿Ú¢Ïeweî}öÖy•‰a?+Ù¥G
ÏVuÓýíþt…ŒFÖ¾?7ëÎ?¨¾úü·+~Êéþ’šSï¦~Th?>?ðF÷¡¦‹v‹Î?¼ýî©éý÷ÛÞ×NWJY¿_qÃ÷×‰ÛV0HW3LŸÐÉËxÃJ×‡ßó BÀ¦m2flxbš}(à@ˆt?a}2?Ÿ²ƒy‹ND
ºÞ?©ª˜iÔqÛJoÉ–?µIkwqžxðO<né„??TwT?¾ÒóÉ?)0uÛa(z¡öÃûp?9áóSXûòŸXº„/]%÷jEÐ?	?2öî?˜w#ö‚üþ¦ö?Aºû¤fìS[:÷¹„ÀÂÌåSXxV??
öòïkãPŽ›?(~Ù|‘Mo·ðïr{‡úÞ‰?‘ç?n?!|&ubfúf–°¹ç?&ûÍ~ªy?h"Ñ‘    ?? PK     ! šÇ×4  4     xl/calcChain.xmldÔßJ?0‡ásÁ{9wYþÍ)mw0?
?B×B›Ž¦ˆÞ½QtÓ½''ü?<|$©vïã Þâœû)ÕR¯ÖRÄÔN?>kùòüt·•"/!?0¥XË˜å®¹½©?0´û.ôI?
)×²[–Ó£R¹í?òj:ÅTV^§yK™ÎG•Os‡ÜÅ¸Œƒ2ëõF¥?lªVÌµÜoî¥?BŠákTç|ó“_Ä!±H’rÖ÷‰—Ê¥???¤ôäjÏ¯ü\ÇÃìa?0{?=?f³ƒÙÁì`v0;??f³ƒÙÁla?0[?-?f³…ÙÂla?0??f³ÙÀl`60??f³†YÃ¬a?0k?5?f3?Ì÷wýhy+®wü±ªó×|  ?? PK     ! 5{„cP  ]   docProps/core.xml ?(?                                                                                                                                                                                                                                                                 „’[O?0†ïM?¤÷P
s?X<dºÄ?%²x¸kÚo
i«l??²hâeû¾}úôK£é®È?/P:+eŒˆ?#$/E&71Z?3w?m?,/%ÄhM“ó³ˆW”—
–ª¬@?´cIRS^ÅhkLE1Ö|ÓžmH®KU0c—j?+???pàûc\?a?? [õDt@
?#«O•· ?1äP?4àŸ®U??´É Ydf_?7t‡lÁ»°oït?ëºöê°Õ°þ?.ŸÛ§º™lf?%‘à?+`¦TÉÃ2Âƒe3ºœi³°S^g nöÉõÜYÎŸî·U?§–Õªw@Ž•¡?1y	oïÒJŸ\¹þ?ý”LèhDÃ‹÷æò“ó\·Q?#’À%a??Ô¿€¤õ>??7   ?? PK     ! ”¬ ?  I   docProps/app.xml ?(?                                                                                                                                                                                                                                                                 œ“AO?0…ïH?"ß©?!T9F¨°ê•Zàìu&…c[?!j÷×?$jIa÷²·ñ¼§§Ï3¶¸?76k!¢ñ®`ÓI?2pÚ—Æí
ö¼ýyy?2$åJe½ƒ? Ù­üq!ÖÑˆd ?á°`5QXpŽº†F?$?.)•¢t?;î«Êh¸÷ú½G|–ç??®„?2?Ù¸h?CK?;>|?B–â.k´¢tKùËèèÑW?=?5XÁÇ¢HtÐïÑÐAæ‚b£•…e
–•??6?
T7´µ2¥hiÑ‚&34ÒØf,û­:œ‚?*?(au¶áÐ×6 Eùê?? „‚''ÃÐìË±w\?+9??87vH?·†,àSµV‘þB<?ï€³éø¦c?i/Íþ-¤ã[õƒJ|_ˆ–?	?äj-ø±Æ½ásØú{Ep\ÃySlj¡L?;­é?«´h»e­ÜÊ£ç»?=š—ágÈé?$Ÿç?=Œz???  ?? PK-      ! †Úôw?  ?                   [Content_Types].xmlPK-      ! µU0#?   L               ?  _rels/.relsPK-      ! ­÷L?"  ?               ?  xl/workbook.xmlPK-      ! ôõ;  Y               3
  xl/_rels/workbook.xml.relsPK-      ! •¿?
  ˆA               ?  xl/worksheets/sheet1.xmlPK-      ! •òCê¯  ?               ?  xl/worksheets/sheet2.xmlPK-      ! c"Lm?  ?               ?  xl/worksheets/sheet3.xmlPK-      ! ½ ¿½K  "               l  xl/theme/theme1.xmlPK-      ! 5¦•?  ?               ?"  xl/styles.xmlPK-      ! öNê]?   k               &  xl/sharedStrings.xmlPK-      ! ;m2K?   B  #             $''  xl/worksheets/_rels/sheet1.xml.relsPK-      ! ¯Ûæç  H  ''             &(  xl/printerSettings/printerSettings1.binPK-      ! šÇ×4  4               s-  xl/calcChain.xmlPK-      ! 5{„cP  ]               ?.  docProps/core.xmlPK-      ! ”¬ ?  I               \1  docProps/app.xmlPK      ?  (4    ', 'HCL 30 Nov 2019.xlsx', null, 'Processing', 0, 0, null, 0);
INSERT INTO uploaded_files (id, company_name, exchange_name, file_data, file_name, from_date, message, records_processed, state, to_date, total_records) VALUES (2343, null, null, 'PK     ! †Úôw?  ?   [Content_Types].xml ?(?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ÌU[K?0~?%¯²f*ˆÈ:?<ªà?19[ÃÒ$äœÍíß{š]?Ã‚¾´´É?.''=_·‹?sHhƒ¯Äy?xŒõ“J¼{×¢@R?(<Tb	(n‡§''ƒÑ2\í±5Q¼‘uÂ2Dð¼2©QÄi"£ÒS5yÑï_I<§?b8¸‡±š9*üz¥äÝzQÜ­öµT•P1:?±P9÷æI/ŒÇV?	z?0t?1?2XPãÊ?,3¦W bc(äN??#]?*?2ÃÚF<c??0?+?»Z?=óq$k xQ‰žTÃÞåÂÉ¦?!LËý Ç¶&·¨l”õÝ{øóf”ùvÞ±Ö_>RÇÅ?ÑqùG:ˆgd¾þþH2Ì@Z:À®??zˆ¹V	?+?4O:?û€­œ¾«yd:n?w?GÜK
9E/`Ymu/2$²°­]Ã¿e?þµch3Þ€ÙÁ-??e?	  ?? PK     ! µU0#?   L   _rels/.rels ?(?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ¬’MO?0†ïHü‡È÷ÕÝ?BKwAH?!T~?I?µ?$Ý¿''T?G½~üÊÛÝ<ê?!öâ4¬‹;#¶w­†—úqu*&r–Fq¬á?vÕõÕö™GJy(v½*«¸¨¡KÉß#FÓñD??.W	??=™ZÆMYÞbø®ÕBSí­†°?7 ê“Ï?×–¦é??9LìÒ?ÈsbgÙ®|Èl!õùUSh9i°bžr:"y_dlÀóD›¿ý|-NœÈR"4?2ÏG?% õZ?4ñËy?7	Ã«ÈðÉ‚?¨Þ  ?? PK     ! ­÷L?"  ?     xl/workbook.xml¤UÛN?0}_i?Áò{H?mD‹hC»BÀÂK%?&n?%‰³¶C??¾ã?)—¢QëËxr|f|?98\?ºgRqQ?0Ùs0bU*2^-Gø×Ub0RšV-DÅFø)|8þþí`%äÝ\?; ?á\?:²m•æ¬¤jOÔ¬‚•…%?0•K[Õ’ÑLåŒé²°]?	í’?
w‘ü†X,xÊb?6%«t"YA5ÐW9¯UV??+©¼kj+es^pýÐ‚bT¦Ñé²’Î{M´–?áOhÜ~''XÚÙªä?J,?@?éø‰c?*ëÝ|É·%»ç?·¬døIV?+|#Î—?H«ÕJÉû$Z°åæâñÁ?ìº?.¢uý“–æ?
?
ªôq?5ËFx¦bÅžF²©''/`?%?;Àöx+çs?2¶ M¡¯@?=<T†ë»nh<AG…f²¢šME¥A‡›¸¾ª¹{?P8º`.?b…–?«sªsÔÈb„§?,¹ŒgÍï™Ò"½³Œ˜™¶æT±Î?2ªéìdz6{¡Uº[?¡VššØƒŽg7~??+£^‘çZ"ŸÆgp*—ô?”mJ?x·U*#r?ÄûÉ~z?3?ËŸ?(LB?Èp2ÆGÇ‰?ÁÈ0Jmt?9~=?>yg?]?+Ä‰?=Óxt6e?7M¿öd6?5g+?,3E?^ebÕFôÐ‰ïc´jnx¦sP™ç(¦ÎvÂø2¶Äu?ŠÁ?áWlâŽMešWl?tÚëh?=ªÚ?4W,ä¢µµ	ÉGfy?ÏŽ7Üf[oo½Ýw½½?0Þz{?8zJ)-R(''Óµ$†Äq‡Æƒ­õ™ÒmJ??$LoèZ~B?''CÇšLB?
âÄöI<=sîæS?ââ?7ÈÀnßfT7P]¦°ÚydÚdc?a“ÖWe]?&”Í?rL®Û¬¼»©€?b?Õñ_   ?? PK     ! ôõ;  Y   xl/_rels/workbook.xml.rels ?(?                                                                                                                                                                                                                                                                 ¼”Ïj?0Æïƒ½ƒÑ}q’n]uz?ôºu`l%Mì`yòö39$”ìz1HÂß÷C²¼?ü´ûBOµ³?$†V9]ÛJÀÇéõnŒ‚´Z6Î¢?	ÅíÍþ?%2uG,ªX`Bèž8''e°•”¸m¬”Î·2ÄÐW¼“?,+äyšn??ÅL?? ?`§¾‹Î?k»²??8õÙ?,ø·óg2?!ŠJ_a0¦ˆ•M‰_†y\FÉF=Y?	fL-AäWîH?“]&[‚Ù?	CFzÔïÁÇU iD³ôÌÃ?0¡oâæ¯–†xÉþ~M??''?!äÃ9Îƒ?>„â  ?? PK     ! •¿?
  ˆA     xl/worksheets/sheet1.xmlœœmoã¸Çßèw0ôªE»¶(?
?ö²YÜ¾è¡¸»ö^+Žœk[®¤$?8ô»wH?¥ÌY»‰3|?5?3Iùú‡oÇÃêµlÚª>??:VåiW?V§§›à_¿}þ°VmW?‹C}*o‚ïeüpûç?]¿ÕÍ×ö¹,?Ôpjo‚ç?;_m6íî?<íº>?''HÙ×Í±èàÏæiÓž›²xÔ…Ž‡M†rs,ªSÐ×pÕøÔQï÷Õ®üTï^Žå©ë+iÊCÑAûÛçêÜ^j;î|?;Í×—ó‡]}<CÕ¡ê¾ëJƒÕqwõåéT7ÅÃt‹D±[}kà_?“‹mçéXíšº­÷ÝjÞôm~/?ßä›b7Ôô^¿W5‘Ø4åk?8V/kR?uÅceÉÂÊäP™º\ÍÕKõx?š×??áøã’ößàöú±?+U«¦Üß£«{?›ÛkÝþ]•o­õ~?¿–‡r×•?$
V?>ÔõW•ñ˜B¨²?T•Å®«^Ë»òp?	~Š@k?íE?›Á‡ýþâï³îÓ?lVå¾x9t¿Ôo?•ÕÓsŽÅZ?
v?rÃÏÕ±R?t§â[ß®ê±{†wÉZˆH?2NƒÕCÙv?+U<Xí^Ú®>þnr™ºúZ ™?øý6?"?W	„BW?/•l×q´ÍüÛ!LðûRE¸NS!=*ÙôWF_ßOEWÜ^7õÛ
?>HoÏ…H¢«bµSÆ`…ËÒÂß¯·áõæÂ±3i?Úi?4íÎNK¦iŸì´tšvo§‰!mm?:Ëû?*ëM ?‡æÊYsí´xÖÜîW»B]†Û$•ë8ùÛê—??úñþ·ßï?þKô÷8üëõf¯®C’æ?>Õû‡ÒA$YžÏ„õéI!×cT>Q?Q§¬?:?1(Ÿ«S^?:ù¹hÊÇ ¿¡ï’«;)¡ÃkÕ«¶Ò÷¨S¼„?:?7?ß§âE˜gñøÊð8CïF®„²òWrWBÌ¯ÄD<??,|/°÷JìÓGÂ~å„@¸áÊ??¤@uçNB?L?ö^i}?(0?#yyeáØ?&}:"PYy?(=J$‚½WZ`?>L£d;¼òp?&3T ²?!)0??¨Ù Ô{?öé£@±•ÑåZÃÕD ‚Ï÷c­²?!)pëÓE?¶÷JìÓGÛÄzå[|ÉQÊ??¤À|aí½?ûôA Œ¶azyI?Œà6?+3/Q?$5B¢{ Éâ÷ÝT·GO³ÄDi2?2?8^[êN?|Qf‡L9?3''Të–)#Dfï˜¦nðM0?vÃ»¨¦c„ÌÜÄ£J?ì™G?*@?
)i.ÔÑ¶¤Ùs}SCM„“?6;"È±”÷ˆ`†ÈtAi??,•ù8íS“~„c?6;dr`?=d"£ªqÌt?ÛØ3?$§þ?mvÈä?Ê{?Mà˜?ÑÜÆr ?>(?&?8‘›qTúÞô¢ìÞtaŽi?(s? ?òÞÄA''r“ŽÊBËôblqÁŽi?(3O- ` ÂqG?–(¿p®t!i? 3OF"Hi$À¡''rSÊBGÓ‹{d¤ui?(SZL@ÂyŒ“?6;V
8òòË¢i3K=“]d¦—?8ý›?bœ{´Ù!’ã(¿l?4??=?"a?5 ÅÄ¢Çª»ìãÃ@)2èöpk2?2m6?8i?#?AyY[Ôr1i? 3
…µ.Kp?<œb÷ÚŽÊB@¸lñÃ8f:í”?&??<''À]?,c+•îU’–éÃ@?=l§®ò¤Q–Œx‡”Lœb7?,´LÊ^?1ÍéZO?ˆZv?(v3ÊBËôb dA?8fdNW|ÒXXt@‚{?3?6;? Ž ü?!ÈÅ@¦e?d?d8ÅnRYèh?0zo?È´l™D?$8i3K•…	‰Ë?8f?	f4ar? ?H?29‚ò??8fd?(ÙFãÊAJÁA?3?6;dr?=d"Ó‰qÌÈœîy?H™Qp?;`[`??eÈººn7k?Ã)l< ? ?H?ÑäÊ{D3E¶ð\[\¦e£Lk? "? ?H?29‚òËP?8f:íŒ?&tRpà¤Í?Ayh"©cFæŒ†?õ†„ƒg mvÈäÊ{ÈÄö]ë@¦eC§Móp?œ´Ù!“c (¿lÖ8f?9ÝûJáPË¸x@l?&8i³C$G@P~á?" Ó²!?fÊáAB?œ´™—©²‰ËàÀ8¦ci2?2­MAÂ?H?29‚ò¨‡|3??3ÊbûDg mvÈäÊ{tZd?8fd?(w¶yH?œ´Ù!“c (¿l 2?™Ó>i–[t ;?>??3>?!/B??<?3[?1 á@?¤ÍŽhr?vZ×^˜i?0m¥uÒ€??3?6;dr?=? „Œc¦Ó?Èf?-¹å''pÒf‡LŽ ü?	ÅÅ@¦eC4s8{8?'' mvˆäÊ{ˆÄÎß¹VLËF‘ö?pîU •…†ƒ?d3]vzH?~•?g mæ£©²?2!ÑãÎD¢i?2M†K4¥½? ??8i³C&Ç@P~? d32?$C?h8HqÒf‡LŽ ¼Ç½‰l?ÇŒ?)MND$?8i³C&Ç@P~?8k32?$#a?9áx^s?–â¤Í?Ay™È:qÌÈ?2Ðäbº¥?!?8i³C&Ç@PÞC&òù?8fdN×dgh8HqÒf‡LŽ ¼?„EÓuÈ´lií…2?8¥î?0•…žN?‹¥‹€LËF‘[ëÌ VRœ´ÙKŽ üÂéÄÅ@¦eƒÌÄÚU’|
g ÔÍ@*M¯0\ë@¦e£L{c„?3?6óÑTYH™?Md÷Ä8? “a?9>À?Hœ´Ù!“c (¿P¦ë´i? SÄÖ?A?Hœ´Ù!“c (?Œc&?3²Ù !á@?¤Í?AùeÓ‰qÌÈ?1°O$’p qÒf‡LŽ ¼G4‘u ã˜?9c é#
Ôaa?3?6;dr?=d"§»ŒcFæŒ?&?
Ïª''
±‡¾Ü§TIzœõ! ì¤žn·}k2½?“p OB?2?¤J?2?1~*úN?Ï€¹RE–«u«Ù?1=3$¥Í??L?Œø?ßOÐU;x,{_?:õÈ·šQ¾ŸááýS}WŸÌ??''ªÏÅSù¢yªNíêPîár„kðÜôÏpë÷]}ÖVè‚uOd_þz†¯0(áÑäpcÍ¾®»?¦Þ_Ëîå¼ª›
¾ž@+ÁMp®›?)?<\©Gà›/‘~Ê|?…Û?  ?? PK     ! •òCê¯  ?     xl/worksheets/sheet2.xmlœ“Ín?0???‚î±ì4íÖ NQ?(ÖÃ?aØvWd?b‰‚?4	†½?(§I?T°õÏ¤H.îwn/“E_Ëª(? o°±¾«åï_O?/R$Ò¾?z¨å’¼_^}Zl1®S@?	>Õ²''
s¥’éÁéT` ?''-F§‰—±S)DÐÍ(?5-Ë[å´õò@˜ÇKØ¶ÖÀ#šOH„AÛŸzÒ‘æÌ%8§ãz&]`ÄÊ–ö#T
gæÏÇ¨Wû½«fÚˆ]äo?õQÍ¸¦ÉY1aK“ÕÁæs÷ïÔÒæD:?"L5S^l?j?1“ª?k?»þ ìöËÏ?ÛÔòoùÚ&<V?+''e•»wíŸ\.?Î^?m-*©–?1yþXØ¦ws‘sq…¸?Ï¬£ÌWÕÙÝ§1DÑ@?7ýÄ?7°]Oœø³bv??j?=g<Y?-zÊàJ
?N_Ñ¿–M?ºƒ?:v?''1@ËÄ²ø,E<ÐÇ9awo¤X!ºãªç? ~Y?3µˆt\d''Ne¶ü  ?? PK     ! c"Lm?  ?     xl/worksheets/sheet3.xmlœ“ßk?0Çß?„ÞcÙiÚ­!N)+e}ŒÑí]‘O¶ˆ?’Ò$Œý?;9?;ÈK¨±?;ýøèNúÞêþ`{?
!t5¯Š?3p
ãÚ?zyš}?,&?Ù£ƒš!òûõÕ§Õ?6v ?ÁÅšw)ù¥Qu`e,Ðƒ?ÁÊDnhE?d3,²½˜—å­°Ò8~",?%ÔÚ(xDµ³àÒ	 —‰âñq¤Yu	ÎÊ°Ýù™B?	?1½I?Ê™UËçÖa›žò>T©Ø!?;§ïzÜf??ÛÉ0¢N‘Å)æóôïÄj"ç¦Z? ?&_?;jþ±ª›‰5‡]v;Áòq…å?45?S?=3úW?)g%ia°Æ±¿|½jÝpÎŠ?5¨¸X?ñü6°??,kqƒ¸?Ï´G™§Š³¹O?Ö€–»>ýÄ?70m—Hø‹b1?e??)>E4º”?géèI¿¢{+›¼ÎË¾Ë?Yšˆeñ™³p?vB?ôÞp¶Á”ÐŽ^GEtùeAÇ¤Óè?$?2[?  ?? PK     ! ½ ¿½K  "     xl/theme/theme1.xmlìZKo7?? öžX?%?2"?,ÅIü‚­¤È‘ZQ»´¹ËIÙÑ­H?
M‹^
ôÖC?6@ô’??)?È_è\IK‹Š­ÆE_v?x?çÍÙ¡oÞz?0tL„¤<?åë? ?4?=šFõà~§}m%@Rá´?OI=ÜZ{?½›xU?$!èS¹ŠëA¬T¶º? CxŒåuž‘Þõ¹H°‚[-?>?	[X,•–L? ?8¶»?>	êh–ÁÚˆy‹Ámª¤~2q Y‡Â`{GeCÙdcV`??éG*@K/êAÉük7ðjNÄÔ?]Ûüät9AïhÑ¬)¢îxÑr»R»±1æo LMãZ­V³U?3 † ©•¥È³Ò^)7F< {9Í»Yª–*.¾ÀiJæZ£Ñ¨ÖrY,S²—?)üJi¹²¾è?Èâ«SøJc½Ù\v?dñËSøöÚrÅÅPÌhz4…Öm·sîcHŸ³M/|?+?>AA4Œ£K/Ñç©šk	>ä¢ dX?©aF?8?(nâ¤+(P†S.áAi±Ô.-?ú_Å\Uôòx•à}Ê©GZ$CA3U?×  yóò?7/Ÿ£7/Ÿ>~qúø‡Ó''ONoy9„›8Š„¯¿þä÷/?D?=?êõÓÏüxY?üÝG?ýø??5?ÕçÏ~yñì??úÍS|]ànÞ¡	‘h‡œ }ž€n?0®ä?+æ£èÄ?:8??-;À!f>\ƒ¸Æ{  ´ø€?‡Ž??(êYù^?8ÀmÎY??îé?
?ÒÈ¿¸q?ûÖnâÔqmkAM…¶}3&Ž˜{?
G$%
éwüˆÙCJ»nÓPpÉû
=¤¨©?$ÚuiB´IðË?'' ¸Ú±Í?ÔàÌ§?9v‘˜y„ïæ˜?6(œøXvpÂŠßÂ*?	y0a×’
<ÆQ«G¤ôÑì
Ð·àô{ª™×íÛl˜¸H¡è‘?æ¼ˆÜàG?''™WfšÆE?y!ŠÑW>?6w3Dßƒp:ÓÝ(qÜ}~!¸O#G¤I??7áñåmÂÝ|?>&?*?.§°®C÷EGc9¡½E?''¸G??#AƒgŽÍ''Bß¡ªl_`ÝÅn¬êû”Hèt33¦[T:!{@">Cžíá™?3Äi‚Å,?;àu''taoó–Ò]?;z>?¯Qv%?(wk×½;»–¾—þx
??1ÈËÃy?hÈÜ4P?/l?f?“€é`Š¶|?H÷OHô¾j?^º¾›´7@7?49	MßÖ?0
<ÓñT?:Û²íxfU–Í3}?,Ü¿°»ÙÀƒtÀ?2]º®š›«æ&øÏ77³rùª¥¹ji®ZßGØ_ÒÒL?hp&3ïIfŽ{ú”?5ddKš‰„›^šQ”™GŽÇY—ZXÀÁE$¸ú?ªø ?‡ÊfxÉœu$Q?%ÌŒÌc3F%gx›Á(…‘™qVõôËÚObµÍ{öñRq?9fc¤Š?$u´Ð’fpÑÅ–n¼Ûbe+ÕL³¹ª•h¦cpT«¬M<²þX5x8?&|1#øÎ+/Ã°Y?s4h¯{ÚîÖG#·è?/ÕE2†oÂÜGZïi•“F?2¥ˆÖÃƒžXžã£Âj5ÍöV»ˆ“ŠËUf,7òÞ»xi4¦xIçí™tdi19YŠNêA­ºXPˆ³zÐ‡-\&x]êï?"8?•°an2›px³æ?2ÌÜ­Ý?vê@&¤Ú?2¶¡a^?!ÀR3N6?/VÁ¬—¥??]LŠ¥†¿M
°£ëZÒï“P]xbæé—R>PDÄ½Ôe±Áý:TA??0I7AßÀ¡¶¶y??<éŠG1gŸc–Å8/?:EG™lá¦ e0wVZ#èæ•Ý(7?*&?/I•b?ÏTÑû	Œ¶—z?!œI
Œt¦Ô.TÌ¡
e1?dLí€hƒExA''£æ? Çú·Í9ËÃ?5L(?> °©X?eÉD?9ÌÊùÞeY²œ‘í0&âÊÌŠ?%Ç„ut\Ö{{?buSM?2`pgãÏ½Ï3??&çŸÚùØdž·=˜ìª–þ‚½H¥P?[AÍ»÷™žj\Þ²±Ï¹ÕÚŠ5¥ñbõÂ[mp.? &B*B4šÖ¼ÜáûP[œšÛö
AT_³?Ò–?.4Nö¡&ÍÊv^yw{émœ­æîx]ÈÒ?ÓéÎiìqs?.çäâÛ»ÏùŒ[Ø±u±Óõ˜’ölŠêöh?!cc?>£ø''¼{ŽÞ?ÃêS?C?‚ã(øÊ°ÇÝüÖ¹†t?   ?? PK     ! 5¦•?  ?     xl/styles.xml¬U]nÓ@~G?«}w?;$‘í?4µ„R‹ÄëÆ^''+öÇ¬×??<rnÀm?ÌÚNâˆ?-…—xvvæ›o~vŸ·‚£[ªk¦d‚ý3#*sU0¹Ið»›Ì™aT"Â•?	ÞÑŸ§ÏŸÅµÙqz½¥? ?u‚·ÆT×­?-?>S•pS*-ˆ£Þ¸u?))j?$?xÞÔ„I?#,D?Aô‡¦rr%*bØšqfvF"_¼ÚH¥É?ÕÖIŽZ?Ôê}NûGÁr­jU?3ÀuUY²œþIwîÎ]?? ùiH~äzÁIî­~"RèjzËlûp—J?åª?&ÁÁ Hãú?%Úëc7sÅ•F?E?4?Ú[üúþõçoÖª$‚ñ]?¬¢ëë`&T?*]±{3?7aN:*[¢k˜ žÝ$|(N®†xŒó?<A‘Æ0†j™ÁòÍ®‚,%ÌnO·³³î÷Xo4ÙùA4rp»€i¼Vº€·²¯°îUiÌii m?6[?5ª‚ßµ2?)?F6JnK¶÷H''§œ_Û÷ô¾<ÁnK$?	óªH0¼L[ì½)b×,?­ÇÁ†@ùïaQ[ðO¼ý?1?îˆTß]5bMu?-†a??úØ(CßjZ²ö.´À??»ºB%G?:iÖ¡ìÈŽ~‚¯l~–ÅP:´n7LÞÑ(?,Úc?=;y?.±n(Q`
Z’†››Ãe‚?Z°F«·ìV?"ÁGùµPjcÐÖ¼®áù?5?%øóåòÅ|u?ÎÌ[ÎœpB#g-WN^,W«l?ÞÅ—Ñ*ý‡EÚm~F?\?Ö­?R?>?<:ôô»·	´ÇÜçÁÔ{ùž“M<?	§dæÌ¦“ÈÉ"?XMÃåe”E#îÑ®çú~¿º-ùha˜ œÉ}¯ök¡Ip?''	w?	÷ø·š?  ?? PK     ! öNê]?   k     xl/sharedStrings.xmldPÁN?0?#?VNp`)CbhJ3ie?'':.Ü¢Ô´ÓÅé´ý=©v@ê|ó{~¶ßS›³ïá„‘] R</
H64ŽÚR|>žÞp2Ô˜>–â?,6úþN1''ÈZâRt)k)Ùv?/Â€”™?½I¹­ä!¢i¸CL¾—Ë¢x•Þ8`ÃH)ß}Y	?G¬®ÈJhÅN«¤«àC¨BƒJ&­ä„_?:?»³??7ì¶ÞÍûè,?#Ô‰ø?>ùq>up~¾lòºæÁØœA6?O(ô»I7O}S-?q™Ã?   ?? PK     ! ;m2K?   B  #   xl/worksheets/_rels/sheet1.xml.rels„ÁŠ?0E?þCx{“Ö?CS7"¸U?búÚÛ—÷ý{?eÀååpÏå6›û<?f?,Ôº…äch°ð{?-¿A?8êÜ	-<a?.¾šNNJ‰ÇX±…Q$?Ã~ÄÙ±Ž	©>æÙI‰y0Éù?Ð¬ªjmò_?/Nµï,ä}W?:=RYþìŽ}<n£¿ÎHòÏ„I9`>¢H9ÈEíò?bAëwöžk}¦mÌËóö	  ?? PK     ! ¯Ûæç  H  ''   xl/printerSettings/printerSettings1.bin
`bðdðcaÐep“žN?ñ@?	?C>CL’e?@²ˆ¡„Á€ÁY˜Ù?0äˆ?o`fd`dxÅ•Ï‘¤ù"˜˜˜€$3P?C*PO	?,ë¢Œ`„jÑL`G`7/ ?3ì‘,D3B?PA†€?\¶B$?b¼™2?JAá†ØËeL¸‚\?ä?
L5Ô÷Ù¨‰ƒ-Hõ †`?/??F?#TBˆ!?-?°†.A©y¶Aíß? Ys—•¡bNiÈéIWxö|?,~¶[gÃmY?•—vN?9?1f“ía£?/ç?‘å?6ÌºÞlJ?[Qý?)·þÜð¸S³‡?½fˆÛ»O?=±þÀÑ?,?;ÝÄJ×Ló”éf‘ëÊ˜?¢¯°QË³VÇaëŒ?"~gM|b­m}%&ÅkJÄæúÇy	eç´?ãžq?0—VÌéu?7Þ?;ós½Ãd??/o?.êÑ{/-§ô^:?½ØY5õQ?Ÿ‰õûŸw°à³qjYæð\ÖHl?>?	Ú›ßE?>?,ã»g–Ï”ÏŒJ÷U/?	n2œs)1àÎýy??=?Íø´pgtðƒ??ø„ÜË”ãõ³ýüý¨™¿\Q}b?&?<æõ¹_?\?*½i|Wg1o??Íh‘sávNKd&Çv/nüèà¾’­Ú¤}?.ëg?4õY«m7ˆµ°[ÑÖ6áâq®·z5yNw/]8·ã©²µƒÚz-Óy+]-Kòæ	??Q°ÒÕó?=m}Ágëƒ?åâ¿v‹\??.?3ÐÐdz#12''èÇ*‰“ÂY?)g$k„[ÅX,>?,I4sÈ¹èP?&¥ûÞæ?‹»ÏÍQ{/äÑ2ÇU›·>?95öíÌdÙµïe™S8KW~Üjk?*}¶æµ“è‹c	Šü_>ÒûñÀëÁžæeµº±ñ¡Š[s5Äâ?Oã^7Ùê²ñc?8už¤ù’ÆßžÊ?$=Ï¼YÁÅrrÑáûOn?}èkº—«¶t??ï}?üÐìº¥å?''bL?=™“_¿J×SoŸÓ?-oÕ§Ó¯w_99),ËsÞ¼3ö¾»ùûþ—û??3…ÄFìÑÑÑÑ2B Ô–? vÐm÷`ßüfž¿Ú¢Ïeweî}öÖy•‰a?+Ù¥G
ÏVuÓýíþt…ŒFÖ¾?7ëÎ?¨¾úü·+~Êéþ’šSï¦~Th?>?ðF÷¡¦‹v‹Î?¼ýî©éý÷ÛÞ×NWJY¿_qÃ÷×‰ÛV0HW3LŸÐÉËxÃJ×‡ßó BÀ¦m2flxbš}(à@ˆt?a}2?Ÿ²ƒy‹ND
ºÞ?©ª˜iÔqÛJoÉ–?µIkwqžxðO<né„??TwT?¾ÒóÉ?)0uÛa(z¡öÃûp?9áóSXûòŸXº„/]%÷jEÐ?	?2öî?˜w#ö‚üþ¦ö?Aºû¤fìS[:÷¹„ÀÂÌåSXxV??
öòïkãPŽ›?(~Ù|‘Mo·ðïr{‡úÞ‰?‘ç?n?!|&ubfúf–°¹ç?&ûÍ~ªy?h"Ñ‘    ?? PK     ! šÇ×4  4     xl/calcChain.xmldÔßJ?0‡ásÁ{9wYþÍ)mw0?
?B×B›Ž¦ˆÞ½QtÓ½''ü?<|$©vïã Þâœû)ÕR¯ÖRÄÔN?>kùòüt·•"/!?0¥XË˜å®¹½©?0´û.ôI?
)×²[–Ó£R¹í?òj:ÅTV^§yK™ÎG•Os‡ÜÅ¸Œƒ2ëõF¥?lªVÌµÜoî¥?BŠákTç|ó“_Ä!±H’rÖ÷‰—Ê¥???¤ôäjÏ¯ü\ÇÃìa?0{?=?f³ƒÙÁì`v0;??f³ƒÙÁla?0[?-?f³…ÙÂla?0??f³ÙÀl`60??f³†YÃ¬a?0k?5?f3?Ì÷wýhy+®wü±ªó×|  ?? PK     ! 5{„cP  ]   docProps/core.xml ?(?                                                                                                                                                                                                                                                                 „’[O?0†ïM?¤÷P
s?X<dºÄ?%²x¸kÚo
i«l??²hâeû¾}úôK£é®È?/P:+eŒˆ?#$/E&71Z?3w?m?,/%ÄhM“ó³ˆW”—
–ª¬@?´cIRS^ÅhkLE1Ö|ÓžmH®KU0c—j?+???pàûc\?a?? [õDt@
?#«O•· ?1äP?4àŸ®U??´É Ydf_?7t‡lÁ»°oït?ëºöê°Õ°þ?.ŸÛ§º™lf?%‘à?+`¦TÉÃ2Âƒe3ºœi³°S^g nöÉõÜYÎŸî·U?§–Õªw@Ž•¡?1y	oïÒJŸ\¹þ?ý”LèhDÃ‹÷æò“ó\·Q?#’À%a??Ô¿€¤õ>??7   ?? PK     ! ”¬ ?  I   docProps/app.xml ?(?                                                                                                                                                                                                                                                                 œ“AO?0…ïH?"ß©?!T9F¨°ê•Zàìu&…c[?!j÷×?$jIa÷²·ñ¼§§Ï3¶¸?76k!¢ñ®`ÓI?2pÚ—Æí
ö¼ýyy?2$åJe½ƒ? Ù­üq!ÖÑˆd ?á°`5QXpŽº†F?$?.)•¢t?;î«Êh¸÷ú½G|–ç??®„?2?Ù¸h?CK?;>|?B–â.k´¢tKùËèèÑW?=?5XÁÇ¢HtÐïÑÐAæ‚b£•…e
–•??6?
T7´µ2¥hiÑ‚&34ÒØf,û­:œ‚?*?(au¶áÐ×6 Eùê?? „‚''ÃÐìË±w\?+9??87vH?·†,àSµV‘þB<?ï€³éø¦c?i/Íþ-¤ã[õƒJ|_ˆ–?	?äj-ø±Æ½ásØú{Ep\ÃySlj¡L?;­é?«´h»e­ÜÊ£ç»?=š—ágÈé?$Ÿç?=Œz???  ?? PK-      ! †Úôw?  ?                   [Content_Types].xmlPK-      ! µU0#?   L               ?  _rels/.relsPK-      ! ­÷L?"  ?               ?  xl/workbook.xmlPK-      ! ôõ;  Y               3
  xl/_rels/workbook.xml.relsPK-      ! •¿?
  ˆA               ?  xl/worksheets/sheet1.xmlPK-      ! •òCê¯  ?               ?  xl/worksheets/sheet2.xmlPK-      ! c"Lm?  ?               ?  xl/worksheets/sheet3.xmlPK-      ! ½ ¿½K  "               l  xl/theme/theme1.xmlPK-      ! 5¦•?  ?               ?"  xl/styles.xmlPK-      ! öNê]?   k               &  xl/sharedStrings.xmlPK-      ! ;m2K?   B  #             $''  xl/worksheets/_rels/sheet1.xml.relsPK-      ! ¯Ûæç  H  ''             &(  xl/printerSettings/printerSettings1.binPK-      ! šÇ×4  4               s-  xl/calcChain.xmlPK-      ! 5{„cP  ]               ?.  docProps/core.xmlPK-      ! ”¬ ?  I               \1  docProps/app.xmlPK      ?  (4    ', 'HCL 30 Nov 2019.xlsx', null, 'Processing', 0, 0, null, 0);
ALTER TABLE `company` ADD CONSTRAINT FKmumulhrkylrdxsl33736gudi6 FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`);
ALTER TABLE `company_and_exchange` ADD CONSTRAINT FKd81tri4imok5k36pmu8u26ixd FOREIGN KEY (`exchange_id`) REFERENCES `stock_exchange` (`id`) ;
ALTER TABLE `company_and_exchange` ADD CONSTRAINT FKngdifa3i0yybaedunbajw11v5 FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);
ALTER TABLE `ipo_details` ADD CONSTRAINT FKek03rhtf07rhluv1kles21w4r FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ;
ALTER TABLE `ipo_details` ADD CONSTRAINT FKicuvpno08x573c054b1fqdm1w FOREIGN KEY (`exchange_id`) REFERENCES `stock_exchange` (`id`);
ALTER TABLE `stock_price` ADD CONSTRAINT FKjavcfro8axnb5qkgkyxfoobsm FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ;
ALTER TABLE `stock_price` ADD CONSTRAINT FKt9gdlb2cylesey611hifm0hpp FOREIGN KEY (`exchange_id`) REFERENCES `stock_exchange` (`id`);
