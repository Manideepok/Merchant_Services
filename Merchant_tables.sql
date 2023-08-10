CREATE TABLE business_category (
    business_category VARCHAR(50) PRIMARY KEY,
    business_cat_name VARCHAR(50)
);

 

-- Insert data into the business_category table
INSERT INTO business_category (business_category, business_cat_name) VALUES
    ('BC001', 'Electronics Retail'),
    ('BC002', 'Fashion Retail'),
    ('BC003', 'Food & Beverage'),
    ('BC004', 'Gardening Supplies'),
    ('BC005', 'Books & Stationery'),
    ('BC006', 'Sports Equipment'),
    ('BC007', 'Pharmacy'),
    ('BC008', 'IT Services'),
    ('BC009', 'Home Decor'),
    ('BC010', 'Pet Supplies');
alter table business_category 
change business_category business_category_id varchar(50);

INSERT INTO business_category (business_category_id, business_cat_name) VALUES
('BC011','Arts & Crafts'),
('BC012','Grocery Store'),
('BC013','Outdoor Equipment');

    CREATE TABLE merchant (
    merchant_id VARCHAR(10) PRIMARY KEY,
    company_name VARCHAR(50) NOT NULL,
    merchant_name VARCHAR(50) NOT NULL,
    mobile_no VARCHAR(15) NOT NULL,
    email VARCHAR(50),
    address VARCHAR(100),
    Gstin_no VARCHAR(15),
    business_category_id VARCHAR(50),
    Foreign key (business_category_id) references business_category(business_category_id)
);


INSERT INTO merchant (merchant_id, company_name, business_category_id, mobile_no, email, address, GSTIN_no,merchant_name) VALUES
('M2341', 'Artistic Expressions', 'BC011', '345-678-9012', 'art@example.com', '123 Art Street, Creativityville', 'ARTI34567890','Abhishek'),
('M6785', 'FashionFusion Boutique', 'BC002', '987-654-3210', 'fashionfusion@example.com', '567 Style Avenue, Trendytown', 'FASH98765432','Hari'),
('M9019', 'FreshBite Grocery', 'BC012', '234-567-8901','freshbite@example.com', '901 Market Street, Foodville', 'FRES23456789','Venkat'),
('M3453', 'TechGenius Repairs', 'BC001', '876-543-2109', 'techgenius@example.com', '345 Repair Lane, Fixville', 'TECH87654321','Roshini'),
('M7897', 'GreenEats Cafe', 'BC003', '210-987-6543', 'greeneats@example.com', '789 Cafe Street, Foodland', 'GREC21098765','Krupa'),
('M2349', 'FitZone Gym', 'BC006', '543-210-9876', 'fitzone@example.com', '234 Fitness Avenue, Workoutville', 'FITZ54321098','Kishore'),
('M6783', "Nature's Bounty", 'BC007', '876-543-2109', 'naturesbounty@example.com', '678 Health Lane, Wellnessburg', 'NATU87654321','Mani'),
('M9017', 'Happy Tails Pet Grooming', 'BC010', '345-678-9012', 'happytails@example.com', '901 Grooming Street, Petland', 'HAPT34567890','Ajay'),
('M3451', 'Adventure Gear Outfitters', 'BC013', '654-321-0987', 'adventuregear@example.com', '345 Adventure Avenue, Explorerville', 'ADVE65432109','Abhinav'),
('M7895', 'Elegant Events Planning', 'BC009','432-109-8765','elegantevents@example.com','789 Event Lane, Celebration City','ELEG43210987','Krishna'),
('M4567', 'Home Harmony Furnishings', 'BC009', '543-210-9876', 'homeharmony@example.com', '567 Decor Street, Stylishburg','HOME54321098','Sai'),
('M8901','Pet Paradise', 'BC010', '876-543-2109','petparadise@example.com', '901 Pet Lane, Animalia','PETP87654321','Jatin'),
('M5678','XYZ Clothing','BC002','987-654-3210','xyz@example.com','456 Fashion Avenue, Townsville','XYZE98765432','Kuldeep'),
('M9012','Gourmet Delights','BC003','234-567-8901','gourmet@example.com','789 Food Street, Flavortown','GOUR45678901','Akash'),
('M3456','Green Thumb Nursery','BC004','876-543-2109','greenthumb@example.com','567 Garden Road, Plantville','GRE12345098','Rinku'),
('M7890','Books & Beyond','BC005','345-678-9012','books@example.com','890 Book Lane, Readsville','BOOK56789012','Arpit'),
('M2345','Sports World','BC006','654-321-0987','sports@example.com','234 Stadium Avenue, Sportstown','SPOR10987654','Seal'),
('M6789','HealthHub Pharmacy','BC007','432-109-8765','healthhub@example.com','876 Wellness Street, Medville','HEAL98765431','Rahul'),
('M0123','TechConnect Solutions','BC008','210-987-6543','techconnect@example.com','123 Tech Avenue,Byteville','TECH21098743','Prakhar'),
('M1234', 'ABC Electronics', 'BC001', '123-456-7890', 'abc@example.com', '123 Main Street, Cityville', 'ABCD12345678','Mayank');





CREATE TABLE services ( 
service_id varchar(10) PRIMARY KEY, 
service_name VARCHAR(50), 
service_cost DECIMAL(10, 2), 
service_category VARCHAR(50) );

Insert into services(service_id,service_name,service_cost,service_category) values
('S01', 'POS', 56729, 'In-store'),
('S02', 'Payment Gateway', 89245, 'Online Payment'),
('S03', 'Giftcard', 1324, 'Presents');



CREATE TABLE merchant_services (
    MS_ID INT PRIMARY KEY,
    merchant_id VARCHAR(10),
    service_id varchar(10),
    start_date DATE,
    period_of_subscription INT,
    FOREIGN KEY (merchant_id) REFERENCES merchant(merchant_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);

