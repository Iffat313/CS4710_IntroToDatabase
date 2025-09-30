-- Table #1 --
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



-- Table #2 -- 
CREATE TABLE Cameras(
  Brand VARCHAR(30), 
  Company VARCHAR(30),
  Video_Capability VARCHAR(30),
  Factory_Cost INT,
PRIMARY KEY(Brand) 
);
  
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


-- Table #3 -- 
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

-- Table #4 --
CREATE TABLE Special_Countries(
  Country VARCHAR(30),
  Attraction VARCHAR(30),
PRIMARY KEY(Attraction) 
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

-- Table #5 --
CREATE TABLE Notable_Cars(
    Country2 VARCHAR(30),
    Car VARCHAR(30),
PRIMARY KEY(Country2)
);

INSERT INTO Notable_Cars VALUES("America", "Ford Mustang");
INSERT INTO Notable_Cars VALUES("Paris", "Renault");
INSERT INTO Notable_Cars VALUES("China", "BYD");
INSERT INTO Notable_Cars VALUES("Italy", "Ferrari Spyder");
INSERT INTO Notable_Cars VALUES("Australia", "Holden");
INSERT INTO Notable_Cars VALUES("Canada", "N/A");
INSERT INTO Notable_Cars VALUES("Japan", "Mazda Miata");
INSERT INTO Notable_Cars VALUES("India", "Suzuki Swift");
INSERT INTO Notable_Cars VALUES("Jordan", "Hebei Zhongxing Automobile");
INSERT INTO Notable_Cars VALUES("Egpyt", "Geyushi");

-- Table #6 --
CREATE TABLE Michigan_Cities(
  City VARCHAR(30), 
  Population INT,
  Landmark VARCHAR(30),
PRIMARY KEY(Landmark) 
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

-- Table #7 --
CREATE TABLE Michigan_Cities_Founded(
    City2 VARCHAR(30),
    Founded INT,
PRIMARY KEY(Founded)
);

INSERT INTO Michigan_Cities_Founded VALUES("Detroit", 1701);
INSERT INTO Michigan_Cities_Founded VALUES("Dearborn", 1786);
INSERT INTO Michigan_Cities_Founded VALUES("Hamtramck", 1798);
INSERT INTO Michigan_Cities_Founded VALUES("Warren", 1893);
INSERT INTO Michigan_Cities_Founded VALUES("Sterling Heights", 1968);
INSERT INTO Michigan_Cities_Founded VALUES("Clinton Township", 1818);
INSERT INTO Michigan_Cities_Founded VALUES("Shelby Township", 1827);
INSERT INTO Michigan_Cities_Founded VALUES("Grand Rapids", 1826);
INSERT INTO Michigan_Cities_Founded VALUES("Troy", 1820);
INSERT INTO Michigan_Cities_Founded VALUES("Farmington Hills", 1973);


-- SELECT STATEMENT #1 -- 
SELECT Cameras.Brand, Consoles.Platform 
FROM Cameras
JOIN Consoles ON Cameras.Company = Consoles.Company 
WHERE Cameras.Factory_Cost = 3400 AND Consoles.OGCost = 499;

-- SELECT STATEMENT #2 -- 
SELECT Cameras.Brand, Consoles.Platform 
FROM Cameras
JOIN Consoles ON Cameras.Company = Consoles.Company 
WHERE Cameras.Factory_Cost = 1500 AND Consoles.OGCost = 399;

-- SELECT STATEMENT #3 --
SELECT Michigan_Cities.Population, Michigan_Cities_Founded.Founded
FROM Michigan_Cities
JOIN Michigan_Cities_Founded ON Michigan_Cities.City = Michigan_Cities_Founded.City2
WHERE Michigan_Cities.Landmark = "Riverwalk" AND Michigan_Cities_Founded.Founded = 1701;

-- SELECT STATEMENT #4 --
SELECT Michigan_Cities.City, Michigan_Cities_Founded.Founded
FROM Michigan_Cities
JOIN Michigan_Cities_Founded ON Michigan_Cities.City = Michigan_Cities_Founded.City2
WHERE Michigan_Cities.Landmark = "Henry Ford Meseum" AND Michigan_Cities_Founded.Founded = 1786;

--  SELECT STATEMENT #5 -- 
SELECT Michigan_Cities.City, Michigan_Cities_Founded.Founded
FROM Michigan_Cities
JOIN Michigan_Cities_Founded ON Michigan_Cities.City = Michigan_Cities_Founded.City2
WHERE Michigan_Cities.Landmark = "Keysworth Stadium" AND Michigan_Cities_Founded.Founded = 1798;


-- SELECT STATEMENT #6 -- 
SELECT Other_Tech.Product, Other_Tech.Price, Consoles.Company
FROM Other_Tech
JOIN Consoles ON Other_Tech.Price = Consoles.OGCost 
WHERE Other_Tech.Firm = "Sony" AND Consoles.Company = "Sony";

-- SELECT STATEMENT #7 -- 
SELECT Other_Tech.Product, Other_Tech.Price, Consoles.Company
FROM Other_Tech
JOIN Consoles ON Other_Tech.Price = Consoles.OGCost 
WHERE Other_Tech.Firm = "Microsoft" AND Consoles.Company = "Microsoft";

-- SELECT STATEMENT #8 --
SELECT Special_Countries.Country, Special_Countries.Attraction, Notable_Cars.Car
FROM Special_Countries 
JOIN Notable_Cars ON Special_Countries.Country = Notable_Cars.Country2
WHERE Special_Countries.Country = "America" AND Notable_Cars.Car = "Ford Mustang";


-- SELECT STATEMENT #9 --
SELECT Special_Countries.Country, Special_Countries.Attraction, Notable_Cars.Car
FROM Special_Countries 
JOIN Notable_Cars ON Special_Countries.Country = Notable_Cars.Country2
WHERE Special_Countries.Country = "Paris" AND Notable_Cars.Car = "Renault";

-- SELECT STATEMENT #10 --
SELECT Special_Countries.Country, Special_Countries.Attraction, Notable_Cars.Car
FROM Special_Countries 
JOIN Notable_Cars ON Special_Countries.Country = Notable_Cars.Country2
WHERE Special_Countries.Country = "Japan" AND Notable_Cars.Car = "Mazda Miata";