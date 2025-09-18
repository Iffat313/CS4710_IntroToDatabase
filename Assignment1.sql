-- Instructions: https://github.com/shiyonglu/database_javascript/tree/main/exercise1 
-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.
  
-- Created 10 tables, and for each table create 10 tuples, In total 100 tuples.

-- Table #1 --

-- Keyword to create a table followed by name to create a table (no spaces, use underscore if needed). Name for table can also have symbols and numbers but cannot start with such characters
CREATE TABLE Automotive(
  Car_Brand VARCHAR(30), --name of category/column (no spaces, use underscore if needed) followed by datatype. Name for column/category can also have symbols and numbers but cannot start with such characters
  Rating FLOAT,
  Founder VARCHAR(30),
  Famous_Sedan VARCHAR(30),
  Famous_SUV VARCHAR(30),
  Famous_Truck VARCHAR(30),
PRIMARY KEY(Car_Brand) --PRIMARY KEY is a key word not a category/column name. It dsitinguishes every column/category from the others in the table
);

-- A Tuple, similar to a list, is orderd collection of comma separated values. The # of elements in a tuple != the # of tuples.

INSERT INTO Automotive VALUES("Ford", 19, "Henry Ford", "Fusion", "Explorer", "F-150");
INSERT INTO Automotive VALUES("Toyota", 9, "Kiichiro Toyoda", "Camry", "RAV4", "Tacoma");
INSERT INTO Automotive VALUES("Honda", 5, "Soichiro Honda", "Accord", "CRV", "Ridgeline");
INSERT INTO Automotive VALUES("Dodge", 5, "Horance/John Dodge", "Charger", "Durango", "RAM");
INSERT INTO Automotive VALUES("Chevrolet", 25, "Louis Chevrolet & William C.Durant", "Impala", "Suburban", "Silverado");
INSERT INTO Automotive VALUES("GMC", 29, "William C. Durant", "N/A", "Yukon", "Sierra 1500");
INSERT INTO Automotive VALUES("Mazda", 16, "Jujiro Matsuda", "Mazda3", "CX-5", "B-Series pickup");
INSERT INTO Automotive VALUES("Subaru", 1, "Kenji Kita", "WRX", "Outback", "BRAT");
INSERT INTO Automotive VALUES("Nissan", 15, "Yasushi Kimura", "Altima", "Rouge", "Frontier");
INSERT INTO Automotive VALUES("Chrysler", 19, "Walter Chrysler", "300", "Chrysler Aspen", "N/A");



-- Table #2 --

CREATE TABLE Animated_Villans(
  Name VARCHAR(30), 
  YOB FLOAT,
  Creator VARCHAR(30),
  Rivial VARCHAR(30),
  SideKick VARCHAR(30),
  Catchphrase VARCHAR(30),
PRIMARY KEY(Name) 
);

INSERT INTO Animated_Villans VALUES("Joker", 1940, "Bill Finger", "Batman", "Harley Quinn", """Why So Serious""");
INSERT INTO Animated_Villans VALUES("Sasuke Uchiha", 1999, "Masashi Kishimoto", "Naruto", "Taka", """Loser""");
INSERT INTO Animated_Villans VALUES("Darth Vader", 1997, "Geroge Lucas", "palpatine", "StarKiller", """I Am Your Father""");
INSERT INTO Animated_Villans VALUES("Madara Uchiha", 2004, "Masashi Kishimoto", "Hashirama", "Obito", """Wake Up To Reality""");
INSERT INTO Animated_Villans VALUES("Frieza", 1989, "Akira Toriyama", "Goku", "Elite Soilders", """Monkey""");
INSERT INTO Animated_Villans VALUES("Light Yagami", 2003, "Tsugumi Ohba", "L", "Misa", """I Am Justice""");
INSERT INTO Animated_Villans VALUES("Tai Lung", 2008, "Michael Lachance", "Po", "Wu Sisters", """I Have Come Home, Master""");
INSERT INTO Animated_Villans VALUES("Scar", 1984, "Irene Mecchi", "Mufasa", "The Three Hyenas", """Long Live The King!""");
INSERT INTO Animated_Villans VALUES("Orochimaru", 1999, "Masashi Kishimoto", "Jiraiya", "Kabuto", """Eternal Youth""");
INSERT INTO Animated_Villans VALUES("Chrysler", 19, "Henry Ford", "300", "Chrysler Aspen", "N/A");



-- Table #3 --
CREATE TABLE Consoles(
  Platform VARCHAR(30), 
  Company VARCHAR(30),
  OGCost INT,
PRIMARY KEY(Platform) 
);

INSERT INTO Consoles VALUES("Playstation 5", "Sony", 499); -- disc edition -- 
INSERT INTO Consoles VALUES("Xbox Series X", "Microsoft", 499);
INSERT INTO Consoles VALUES("switch", "Nintendo", 499);
INSERT INTO Consoles VALUES("Playstation 4", "Sony", 399);
INSERT INTO Consoles VALUES("Xbox one", "Micorsoft", 499); -- without kinect --
INSERT INTO Consoles VALUES("Playstation 3", "Sony", 499); 
INSERT INTO Consoles VALUES("xbox 360", "Microsoft", 299); -- without kinect --
INSERT INTO Consoles VALUES("Playstation 2", "Sony", 299);
INSERT INTO Consoles VALUES("Xbox", "Microsoft", 299); --without kinect --
INSERT INTO Consoles VALUES("Playstation 1", "Sony", 299);



-- Table #4 -- 
CREATE TABLE Cameras(
  Brand VARCHAR(30), 
  Company VARCHAR(30),
  Video_Capability VARCHAR(30),
  OGCost INT,
PRIMARY KEY(Brand) 
);
 -- https://www.space.com/best-cameras  
INSERT INTO Cameras VALUES("Nikon Z8", "Nikon", "8k 60p 12-bit", 4000); 
INSERT INTO Cameras VALUES("Sony A7R V", "Sony", "8k 25p", 3400); 
INSERT INTO Cameras VALUES("Canon EOS R7", "Canon", "4k UHD 60p", 1500); 
INSERT INTO Cameras VALUES("Sony A7R IV", "Sony", "4k 30FPS", 2700); 
INSERT INTO Cameras VALUES("Nikon Z fc", "Nikon", "4k UHD 30p", 1000); 
INSERT INTO Cameras VALUES("Canon EOS R6 Mark II", "Canon", "4k 60fps", 1999); 
INSERT INTO Cameras VALUES("Sony A6700", "Sony", "4K UHD 120P", 1500); 
INSERT INTO Cameras VALUES("Nikon D580", "Nikon", "4k UHD 30p", 2300); 
INSERT INTO Cameras VALUES("Olympus OM-D E-M10 Mark IV", "Olympus", "4K UHD 30p", 600); 
INSERT INTO Cameras VALUES("Fujifilm X-T50", "Fujifilm", "4K60P AND 1080/240P", 1400); 


-- Table #5 -- 
CREATE TABLE Michigan_Cities(
  City VARCHAR(30), 
  Population INT,
  landamrk VARCHAR(30),
PRIMARY KEY(City) 
);

INSERT INTO Michigan_Cities VALUES("Detroit", 650000, "Riverwalk");
INSERT INTO Michigan_Cities VALUES("Dearborn", 106000, "Henry Ford Meseum");
INSERT INTO Michigan_Cities VALUES("Hamtramck", 30000, "Keyworth Stadium");
INSERT INTO Michigan_Cities VALUES("Warren", 138000, "City Square Fountain");
INSERT INTO Michigan_Cities VALUES("Sterling Heights", 134000, "Upton House Museum");
INSERT INTO Michigan_Cities VALUES("Clinton Township", 100200, "CJ Barrymore's");
INSERT INTO Michigan_Cities VALUES("Shelby Township", 80000, "Stony Creek");
INSERT INTO Michigan_Cities VALUES("Grand Rapids", 200200, "John Ball Zoo");
INSERT INTO Michigan_Cities VALUES("Troy", 90000, "Red Oaks Waterpark");
INSERT INTO Michigan_Cities VALUES("Farmington Hills", 85000, "Maybury State Park");



-- Table #6  Sources are from WSU articles Today@Wayne --
CREATE TABLE WSU_Buildings(
  Building VARCHAR(30), 
  Year_Created INT,
PRIMARY KEY(Building) 
);

INSERT INTO WSU_Buildings VALUES("State Hall", 1947);
INSERT INTO WSU_Buildings VALUES("Student Center", 1946);
INSERT INTO WSU_Buildings VALUES("Undergraduate Library", 1997);
INSERT INTO WSU_Buildings VALUES("Prentis", 1964);
INSERT INTO WSU_Buildings VALUES("Old Main", 1920);
INSERT INTO WSU_Buildings VALUES("STEM", 2017);
INSERT INTO WSU_Buildings VALUES("General Lectures", 1971);
INSERT INTO WSU_Buildings VALUES("Sciece Hall", 1949);
INSERT INTO WSU_Buildings VALUES("Alex Manoogian Hall", 1975);
INSERT INTO WSU_Buildings VALUES("Chemistry Building", 1969);

-- Table #7  sources are from amazon reviews--
CREATE TABLE Security_Camera(
  Model VARCHAR(30),
  Strength VARCHAR(30),
  Weakness VARCHAR(30),
  Camera_Spec VARCHAR(30), 
  Cost FLOAT,
PRIMARY KEY(Model) 
);

INSERT INTO Security_Camera VALUES("Eufy Security Outdoorcam E210 Wired", "Subscription Free", "Motion Connection", "1080p", 59.99);
INSERT INTO Security_Camera VALUES("Ring Floodlight Cam Wired Plus", "Two Spotlights", "connectivity/motion", "1080p", 119.99);
INSERT INTO Security_Camera VALUES("Tapo by TP-Link 2K QHD Security Camera Indoor/Outdoor wired", "Budget Freindly", "connectivity", "2k", 29.99);
INSERT INTO Security_Camera VALUES("ZUMIMALL 5MP Outdoor Camera", "2-Pack", "UI", "5MP", 68.99);
INSERT INTO Security_Camera VALUES("JAIOTlink Wired", "Supports 2.4 & 5GHZ", "Plastic Parts", "1080P", 20.00);
INSERT INTO Security_Camera VALUES("Wyze Cam OG Wired", "Alex & Google accessible", "6ft cable", "2k", 100);
INSERT INTO Security_Camera VALUES("Ring Outdoor Cam Plus", "Mount anywhere", "AI", "2K", 70.00);
INSERT INTO Security_Camera VALUES("Swan - Pro", "Indoor+Outdoor", "Connectivity", "4K", 80.00);
INSERT INTO Security_Camera VALUES("Night Owl Security Dome Camera", "Uses Ethernet", "Set Up", "4K", 109.00);
INSERT INTO Security_Camera VALUES("Lorex IP Wired Dome", "108* FOV", "Audio", "4K", 104.49);

-- Table #8  sources are from google maps--
CREATE TABLE WSU_Parking(
  Space VARCHAR(30),
  Floors INT,
  Street VARCHAR(30),
PRIMARY KEY(Space) 
);

INSERT INTO WSU_Parking VALUES("Structure 1", 6, "W Palmer" );
INSERT INTO WSU_Parking VALUES("Structure 2", 6, "John C Lodge Service Dr");
INSERT INTO WSU_Parking VALUES("Structure 3", 3, "E Warren Ave");
INSERT INTO WSU_Parking VALUES("Structure 4", 8, "Canfield");
INSERT INTO WSU_Parking VALUES("Structure 5", 4, "W Kirby");
INSERT INTO WSU_Parking VALUES("Strcuture 6", 5, "Putman");
INSERT INTO WSU_Parking VALUES("Structure 7", 6, "John R");
INSERT INTO WSU_Parking VALUES("Structure 8", 4,  "W Forest Ave");
INSERT INTO WSU_Parking VALUES("Lot 14", 1, "Cass Ave");
INSERT INTO WSU_Parking VALUES("Lot 75", 1, "Canfield");

-- Table #9 Sources are from manufacturer website --
CREATE TABLE Electric_Vehicles(
  Car VARCHAR(30),
  Company VARCHAR(30),
  Range INT,
  HorsePower INT,
PRIMARY KEY(Car) 
);

INSERT INTO Electric_Vehicles VALUES("Model S", "Telsa", 410, 1020);
INSERT INTO Electric_Vehicles VALUES("Model 3", "Tesla", 357, 510);
INSERT INTO Electric_Vehicles VALUES("Model Y (RWD)", "Tesla", 357, 342);
INSERT INTO Electric_Vehicles VALUES("Model X (STD DUAL MOTOR)", "Tesla", 352, 670);
INSERT INTO Electric_Vehicles VALUES("Cybertruck (AWD)", "Tesla", 325, 600);
INSERT INTO Electric_Vehicles VALUES("Lucid Air Pure (RWD)", "Lucid", 430, 420);
INSERT INTO Electric_Vehicles VALUES("Lucid Gravity Grand Toruing (AWD)", "Lucid", 450, 828);
INSERT INTO Electric_Vehicles VALUES("Lucid Air Sapphire (AWD)", "Lucid", 427, 1234);
INSERT INTO Electric_Vehicles VALUES("Ford F-150 Lightning XLT", "Ford", 240, 452);
INSERT INTO Electric_Vehicles VALUES("Acura ZDX A-spec(RWD)", "Acura", 313, 358);


-- Table #10 --
CREATE TABLE Special_Countries(
  Country VARCHAR(30),
  Landmark VARCHAR(30),
PRIMARY KEY(Country) 
);

INSERT INTO Special_Countries VALUES("America", "Statue Of Liberty");
INSERT INTO Special_Countries VALUES("Paris", "Eiffel Tower");
INSERT INTO Special_Countries VALUES("China", "Great Wall Of China");
INSERT INTO Special_Countries VALUES("Italy", "Tower Of Pisa");
INSERT INTO Special_Countries VALUES("Australia", "Sydney Opera House");
INSERT INTO Special_Countries VALUES("Canada", "Niagara Falls");
INSERT INTO Special_Countries VALUES("Venezula", "Angel Falls");
INSERT INTO Special_Countries VALUES("India", "Taj Mahal");
INSERT INTO Special_Countries VALUES("Jordan", "Petra");
INSERT INTO Special_Countries VALUES("Egpyt", "Pyramids of Giza");


/* Next exercise: Use the UPDATE keyword 10 times (10 statements) for any table of your choice.
Every statement should be different from the next. YOU DO NOT NEED TO USE THE UPDATE STATEMENT 
FOR EACH TUPLE/ROW. 

How does the UPDATE keyword work in sql? The UPDATE keyword allows you to OVERWRITE/MODIFY/CHANGE 
an exsisting data value(s) within your table. Therefore, this of course means that you cannot use the 
UPDATE keyword to add a new value to the table. 

*/

-- Update Statement #1 --
UPDATE Automotive --Keyword UPDATE followed by table name --
SET Rating = 20, Famous_Sedan = "Focus" -- keyword SET followed by the column/catgeory name and the new value -- 
WHERE Car_Brand = "Ford";  -- You want to change a data value within the table, but how do you know which row you want to update it for? Use the Primary Key detail to do so. --

-- Update Statement #2 -- 
UPDATE Animated_Villans
SET Creator = "Bill Finger & Bob Kane"
WHERE Name = "Joker";

-- Update Statement #3 --
UPDATE Consoles
SET Platform = "Switch 2", Company = "nintendo", OGCost = 450
WHERE Platform = "switch";

-- Update Statement #4 --
UPDATE Cameras
SET OGCOST = 1200
WHERE Brand = "Nikon Z fc";

-- Update Statement #5 --
UPDATE Michigan_Cities
SET landamrk = "Red Oaks Waterpark"
WHERE City = "Warren";

-- Update Statement #6 --
UPDATE WSU_Buildings
SET Building = "FAB", Year_Created = 1999
Where Building = "Old Main";

-- Update Statement #7 --
UPDATE Security_Camera
SET Cost = 61.00
WHERE Model = "Eufy Security Outdoorcam E210 Wired";

-- Update Statement #8 --
UPDATE WSU_Parking
SET Space = "Lot 12", Floors = 1, Street = "Woodward Ave"
WHERE Space = "Lot 14";

-- Update Statement #9 --
UPDATE Electric_Vehicles
SET Car = "R1S Dual Standard", Company = "Rivian (AWD)", Range =  410, HorsePower = 533
WHERE Car = "Cybertruck (AWD)";

-- Update Statement #10 --
UPDATE Special_Countries
SET Landmark = "Mount Rushmore"
WHERE Country = "America";


/* Next exercise, you must use the DELETE keyword 10 times (so 10 statements) for any table of 
your choice. Note that each use of the DELETE keyword within each statement must be different from
the next. Thus, YOU DO NOT NEED TO USE THE DELETE KEYWORD FOR EACH TUPLE WITHIN EACH TABLE

How does the DELETE keyword work? The DELETE keyword will NOT delete specific values within the table 
but rather the entire row based on the value you put in for the WHERE keyword. If you'd like to DELETE 
a specific value in the table, you must use UPDATE keyword 

*/

-- Delete Statement #1 --
DELETE  --DELETE keyword -- 
FROM Automotive -- FROM keyword followed by the name of table you're working with --
WHERE Car_Brand = "Chrysler"; -- Keyword WHERE followed by the name of the column/catgeory and the specified value that will be used to delete the row --

-- Delete Statement #2 --
DELETE 
FROM Animated_Villans
WHERE Creator = "Masashi Kishimoto";

-- Delete Statement #3 --
DELETE 
FROM Consoles 
WHERE Platform = "Playstation 1";

-- Delete Statement #4 --
DELETE 
FROM Cameras 
WHERE Company = "Sony";

-- Delete Statement #5 --
DELETE 
FROM Michigan_Cities
WHERE Population = "30000";

-- Delete Statement #6 --
DELETE
FROM WSU_Buildings
WHERE Building = "State Hall";

-- Delete Statement #7 --
DELETE
FROM Security_Camera
WHERE Camera_Spec = "1080p";

-- Delete Statement #8 --
DELETE
FROM WSU_Parking
WHERE Street = "Canfield";

-- Delete statement #9 --
DELETE
FROM Electric_Vehicles
WHERE Company = "Lucid";

-- Delete Statement #10 --
DELETE
FROM Special_Countries 
WHERE Country = "Egypt";