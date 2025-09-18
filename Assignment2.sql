-- full exercise: https://github.com/shiyonglu/database_javascript/tree/main/exercise2 --
/* Important reminders/info about this assignment:

"- SQL is a query langauge and not a programming language like Java. SQL is used to define,
manage, and ultimately create data inside of a database through tables, and more.
- The database itself is ran on a database server (in this case ->) mySQL database server, which inturn mySQL processes the SQL commands
and then stores the data in the database
- phpMyAdmin is the web-based tool that creates a GUI (Graphical User Interface) for us to type the SQL 
langauge for it to be sent to the database server for it to be processed and inturn store the data in the
database. This creates the local server (meaning it is only accessible on your machine/computer you're working
from)
- These tools/apps are bundled in the XAMPP control panel. 

*/


-- Table #1 --

-- Keyword to create a table followed by name to create a table (no spaces, use underscore if needed). Name for table can also have symbols and numbers but cannot start with such characters --
CREATE TABLE Automotive(
  Gasoline_Car VARCHAR(30), -- name of category/column (no spaces, use underscore if needed) followed by datatype. Name for column/category can also have symbols and numbers but cannot start with such characters --
  Rating FLOAT,
  Founder VARCHAR(30),
  Famous_Sedan VARCHAR(30),
  Famous_SUV VARCHAR(30),
  Famous_Truck VARCHAR(30),
PRIMARY KEY(Gasoline_Car) -- PRIMARY KEY is a key word not a category/column name. It dsitinguishes every column/category from the others in the table --
);

-- A Tuple, similar to a list, is orderd collection of comma separated values. The # of elements in a tuple != the # of tuples. --

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
INSERT INTO Consoles VALUES("Xbox", "Microsoft", 299); -- without kinect --
INSERT INTO Consoles VALUES("Playstation 1", "Sony", 299);



-- Table #4 -- 
CREATE TABLE Cameras(
  Brand VARCHAR(30), 
  Company VARCHAR(30),
  Video_Capability VARCHAR(30),
  Factory_Cost INT,
PRIMARY KEY(Brand) 
);
 -- https://www.space.com/best-cameras --  
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
  Landmark VARCHAR(30),
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
  EVCar VARCHAR(30),
  Company VARCHAR(30),
  CarRange INT,
  HorsePower INT,
PRIMARY KEY(EVCar) 
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
  Attraction VARCHAR(30),
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

-- Table #11 --
CREATE TABLE Other_Tech(
  Product VARCHAR(30), 
  Firm VARCHAR(30),
  Price INT,
PRIMARY KEY(Product) 
);

INSERT INTO Other_Tech VALUES("PSP", "Sony", 299);
INSERT INTO Other_Tech VALUES("PS VITA", "Sony", 299);
INSERT INTO Other_Tech VALUES("65 Class X77L OLED 4KUHD TV", "Sony", 499);
INSERT INTO Other_Tech VALUES("32 W830K HD LED HDR TV", "Sony", 399);
INSERT INTO Other_Tech VALUES("Xbox Series X 3.2 ft Fridge", "Microsoft", 299);
INSERT INTO Other_Tech VALUES("Xbox Wireless Black Controller", "Microsoft", 54);
INSERT INTO Other_Tech VALUES("Xbox Wireless Headset", "Microsoft", 109.99);
INSERT INTO Other_Tech VALUES("Playstation Portal", "Sony", 200);
INSERT INTO Other_Tech VALUES("DualSense Wireless Controller", "Sony", 75);
INSERT INTO Other_Tech VALUES("Sony Ear Headphones with Mircophone", "Sony", 10);


-- execute 10 select statements such that each statement will Join at least two tables --
/*
- We use UNION or CROSS join to combine unrelated tables
*/

-- Example #1 use UNION  --
/*
- Each SELECT must return the same number of columns
- It will combine the values under the corresponding chosen columns of both tables and put them in the same x column on the output
- It will delete all duplicate values if any by default
*/
CREATE TABLE Automotive_UNIONED_Animated_Villans AS
SELECT Gasoline_Car AS Items FROM Automotive
UNION
SELECT Name AS Items FROM Animated_Villans;


-- Example #2 use UNION again but have more than one column in the output table --
CREATE TABLE Michigan_Cities_UNIONED_WSU_Parking AS
SELECT City, Population, landmark FROM Michigan_Cities
UNION
SELECT Space, Floors, Street FROM WSU_Parking;

-- Example #3 USE UNION ALL --
CREATE TABLE Cameras_UNIONED_ALL_Security_Camera AS
SELECT Brand, Video_Capability, Factory_Cost, NULL AS Model, NULL AS Camera_Spec, NULL AS Cost FROM Cameras
UNION ALL   
SELECT NULL, NULL, NULL, Model, Camera_Spec, Cost FROM Security_Camera;

-- Example #4 use CROSS JOIN --
/*
-CROSS JOIN will build all possible combination/pairs based on the values from the choosen columns
- If you use CROSS JOIN the number of rows in the outputted table will be the number of rows from the first table times * 
the number of rows from the second table both.Thus, when determining the number of rows in the outputted table from CROSS JOIN, the number of columns
in this aspect is irrelevant.
- If you use CROSS JOIN, the number of columns in the outputted table, is the total number of columns you choose to work with. 
- Unlike UNION, CROSS JOIN doesn't care how many columns you choose from TABLE A and TABLE B
-Even if the number of rows from both tables are unequivalent, there will not be duplicate pair in the 
outputted table.  
*/
CREATE TABLE Automotive_CROSS_JOIN_Electric_Vehicles AS
SELECT Automotive.Gasoline_Car, Electric_Vehicles.EVCar 
FROM Automotive
CROSS JOIN Electric_Vehicles;

-- Example #5 use CROSS JOIN with more than one column from both table --
CREATE TABLE Special_Countries_CROSS_JOIN_Michigan_Cities AS
SELECT Special_Countries.Country, Special_Countries.Attraction, Michigan_Cities.City, Michigan_Cities.Landmark
FROM Special_Countries
CROSS JOIN Michigan_Cities;

-- Example #6 use CROSS JOIN with more than one column from both tables (where the number of selected columns differ) --
CREATE TABLE Cameras_CROSSJOIN_Consoles AS
SELECT Cameras.Brand, Cameras.Company, Cameras.Factory_Cost, Consoles.Platform, Consoles.OGCost
FROM Cameras
CROSS JOIN Consoles;

-- Example #7 use (INNER) JOIN --

/*
- INNER JOIN will return results of matching records between two tables based on a condition -> in the outputted table
- How do you determine the number of columns that appear in the outputted table?:
The number of columns that appear in the outputted table, is the number of columns 
that follows from the SELECT statement (essentially the columns you choose for comparison)
- How do you determine the number of rows that appear in the outputted table?: 
It depends on how mnay values were match between the two tables 
- JOIN has multiple other uses including INNER (about 5). This is very useful for combining tables
that especially have related values. 
- JOIN is also flexible like CROSS UNION
*/
CREATE TABLE Consoles_INNERJOIN_Other_Tech AS
SELECT Consoles.Platform, Consoles.Company, Consoles.OGCost, Other_Tech.Product, Other_Tech.Firm, Other_Tech.Price
FROM Consoles
INNER JOIN Other_Tech on Consoles.Company = Other_Tech.Firm;



-- Example #8 use(INNER) Join but now the condition is made based on cost --
CREATE TABLE Consoles_INNERJOIN2_Other_Tech AS
SELECT Consoles.Platform, Consoles.Company, Consoles.OGCost, Other_Tech.Product, Other_Tech.Firm, Other_Tech.Price
FROM Consoles
INNER JOIN Other_Tech on Consoles.OGCost = Other_Tech.Price;

-- Example #9 use (INNER) join between Cameras and Other_Tech --
CREATE TABLE Cameras_INNERJOIN_Other_Tech AS
SELECT Cameras.Brand, Cameras.Company, Cameras.Factory_Cost, Other_Tech.Product, Other_Tech.Firm, Other_Tech.Price
FROM Cameras
INNER JOIN Other_Tech on Cameras.Company = Other_Tech.Firm;

-- Example #10 LEFT JOIN --
/*
- LEFT JOIN is similar to INNER JOIN in the sense of finding matching values from the choosen columns from TABLE A & B
however, assuming TABLE A is the first table, it will also include values that are not matched from respective columns 
used for the condition per comparision for TABLE A. 
- In other words, you may have more values then what INNER JOIN would give and maybe some NULL values. 
- LEFT JOIN is also similar to INNER JOIN in the sense of determining the number of columns in the outputted table. 
*/
CREATE TABLE Cameras_LEFTJOIN_Other_Tech AS
SELECT Cameras.Brand, Cameras.Company, Cameras.Factory_Cost, Other_Tech.Product, Other_Tech.Firm, Other_Tech.Price
FROM Cameras
LEFT JOIN Other_Tech on Cameras.Company = Other_Tech.Firm;




