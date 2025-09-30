/*
const express = require('express') // Imports the express module (a backend language), which is a web application framework for Node.js. It simplifies routing and handling HTTP requests.

const mysql = require('mysql')  //  Imports the mysql module, which allows Node.js to interact with MySQL databases.

const cors = require ('cors') // Imports the cors module, which enables Cross-Origin Resource Sharing, allowing your server to handle requests from different origins.
//the three lines above will import the corresponding package/modules from the package.json file. 

const app = express() // Creates an instance of an Express application.
app.use(cors()) // Applies the CORS middleware to the Express app.

const db = mysql.createConnection({ //create an API to get data from our mySQL database
    host: "localhost",
    user: "root",
    password: "",
    database: "test",
    port: 3306
})

// let's see whether we can connect to the database successfully or not
db.connect((err) => {
    if (err) {
        console.error('Database connection failed: ' + err.stack);
        return;
    }
    console.log('Connected to the database.');
});


app.use(cors());

// when the browser points to localhost:8081/ (lines 32 -33 creates an API)
app.get('/', (request, response) => { 
     return response.json("Welcome to the DB class.")
});

// when the browser points to localhost:8081/listall
app.get('/listall', (request, response) => {
    const stmt = "SELECT * FROM students"
    db.query(stmt, (err, data) => {
        if(err) return response.json(err)
        else return response.json(data)
    })
});

// when the browser points to localhost:8081/student/x, where x = 1, 2, 3... This API gets the actual data from the Database
app.get('/student/:id', (request, response) => {
    const studentId = request.params.id; // Extract the ID from the URL
    console.log(`Fetching student with ID: ${studentId}`);
    
    const sql = "SELECT * FROM students WHERE id = ?";
    db.query(sql, [studentId], (err, data) => {
        if (err) return response.json(err);
        if (data.length === 0) return response.status(404).json({ message: "Student not found" });
        return response.json(data[0]); // Return the student object
    });
});


// set up the web server listener
app.listen(8081, () => {
    console.log("I am listening.")
});

*/

//The above is the deafult server.js code to run the sample code. The code below is modified version per assignment guidelines 

/*
- You're unable to write raw SQL syntax in the Backend directory of the server.js file and expect it to run the Query on a browser
along with Node.js. 

- However, this doesn't mean that it's impossible to integrate SQL into the .js file for the Backend. Importing the appropriate packages
we can allow SQL synatx to live inside of the .js file and run Quries via connecting it to a database 

*/

const express = require('express') // Imports the express module (a backend language), which is a web application framework for Node.js. It simplifies routing and handling HTTP requests.

const mysql = require('mysql')  //  Imports the mysql module, which allows Node.js to interact with MySQL databases.

const cors = require ('cors') // Imports the cors module, which enables Cross-Origin Resource Sharing, allowing your server to handle requests from different origins.
//the three lines above will import the corresponding package/modules from the package.json file. 

const app = express() // Creates an instance of an Express application.
app.use(cors()) // Applies the CORS middleware to the Express app.

const db = mysql.createConnection({ //create an API to get data from our mySQL database (essentially connected to the phpmyadmin web app which has the database stored on the mySQL server Database)
    host: "localhost",
    user: "root",
    password: "",
    database: "test",
    port: 3306
})

// let's see whether we can connect to the database successfully or not
db.connect((err) => {
    if (err) {
        console.error('Database connection failed: ' + err.stack);
        return;
    }
    console.log('Connected to the database.');
});


app.use(cors());

// when the browser points to localhost:8081/ (lines 32 -33 creates an API)
app.get('/', (request, response) => { 
     return response.json("Welcome to the DB class.")
});

/* - What is a Query?: A Query is when you use a select/x amount of SQL statements to pull, manipulate, modify data from a database

- What is app.get()?: This is a function which creates the URL endpoint to make our data avaliable in some localhost URL. Apart of this URL will include
the request, which is followed after the /. This method allows us to write our SQL queries in a variable. 

- What is deb.query()?: This is a method that is nested inside of the corresponding app.get(). This method comes from the mySQL package 
installation from npm. 
deb.query(varaible#1, (param#1, param#2));
variable#1 stores the SQL statement
param#1 holds errors from database for debugging
param#2 holds the result from running the query (SQL Statements)/output
All in all, this function is used in part of running the query and calling a function to hold those resulf of the qeury (info) in a variable.

- What is response.json()?: This makes our queries and their correponding variables that stores the result of running the query into the
frontend, in this case the browser. 

- If the Select Query statements are working with the same two tables, you can have them nested in the same app.get as they're working
with the same request/table, but each Query must have its own corresponding db.query 

- If there are other Select Query statements that are working that are working with their own same two tables, you will create a
different app.get along with the corresponding db.query. Note that for every app.get you create, you will be creating a different 
URL endpoint. Thus, each URL endpoint should be unique!

- Note that the variables are local scope to each app.get() (this of course includes db.query). Therefore, these variables can be 
re-decalared and initalized in other app.get()'s and it's nested db.query()'s. 
*/

// app.get() #1
app.get('/Cams&Consoles', (request, response) => {
    const Query1 = 'SELECT Cameras.Brand, Consoles.Platform FROM Cameras JOIN Consoles ON Cameras.Company = Consoles.Company WHERE Cameras.Factory_Cost = 3400 AND Consoles.OGCost = 499';
    const Query2 = 'SELECT Cameras.Brand, Consoles.Platform FROM Cameras JOIN Consoles ON Cameras.Company = Consoles.Company WHERE Cameras.Factory_Cost = 1500 AND Consoles.OGCost = 399';

    //corresponding db.queries for each Query

    db.query(Query1, (err, data) => { //exeception handling in the event that the array. 
        if(err) return response.json(err);

        db.query(Query2, (err, data2) => {
            if(err) return response.json(err);

            //return the selected Querires via response.json. This will be viweable on the wesbite by clicking on the appropriate URL
            response.json({
                Query1: data,
                Query2: data2
            });
        });
    });
});


//app.get() #2 
app.get('/Michigan',(request, response) => {
    const Query3 = 'SELECT Michigan_Cities.Population, Michigan_Cities_Founded.Founded FROM Michigan_Cities JOIN Michigan_Cities_Founded ON Michigan_Cities.City = Michigan_Cities_Founded.City2 WHERE Michigan_Cities.Landmark = "Riverwalk" AND Michigan_Cities_Founded.Founded = 1701';
    const Query4 = 'SELECT Michigan_Cities.City, Michigan_Cities_Founded.Founded FROM Michigan_Cities JOIN Michigan_Cities_Founded ON Michigan_Cities.City = Michigan_Cities_Founded.City2 WHERE Michigan_Cities.Landmark = "Henry Ford Meseum" AND Michigan_Cities_Founded.Founded = 1786';
    const Query5 = 'SELECT Michigan_Cities.City, Michigan_Cities_Founded.Founded FROM Michigan_Cities JOIN Michigan_Cities_Founded ON Michigan_Cities.City = Michigan_Cities_Founded.City2 WHERE Michigan_Cities.Landmark = "Keyworth Stadium" AND Michigan_Cities_Founded.Founded = 1798';
    
    //corresponding db.queries for each Query

    db.query(Query3, (err, data) => {
        if(err) return response.json(err);

        db.query(Query4, (err, data2) => {
            if(err) return response.json(err);

            db.query(Query5, (err, data3) => {
                if(err) return response.json(err);
            

            //return the selected Querires via response.json. This will be viweable on the wesbite by clicking on the appropriate URL
            response.json({
                Query3: data,
                Query4: data2,
                Query5: data3

                });
            });
        });
    });
});


//app.get() #3
app.get('/Other_Tech&Consoles', (request, response) => {
    const Query6 = 'SELECT Other_Tech.Product, Other_Tech.Price, Consoles.Company FROM Other_Tech JOIN Consoles ON Other_Tech.Price = Consoles.OGCost WHERE Other_Tech.Firm = "Sony" AND Consoles.Company = "Sony"';
    const Query7 = 'SELECT Other_Tech.Product, Other_Tech.Price, Consoles.Company FROM Other_Tech JOIN Consoles ON Other_Tech.Price = Consoles.OGCost WHERE Other_Tech.Firm = "Microsoft" AND Consoles.Company = "Microsoft"';

    //corresponding db.queries for each Query

    db.query(Query6, (err, data) => { //exeception handling in the event that there's an error encountered in the querey. 
        if(err) return response.json(err);

        db.query(Query7, (err, data2) => {
            if(err) return response.json(err);

            //return the selected Querires via response.json. This will be viweable on the wesbite by clicking on the appropriate URL
            response.json({
                Query6: data,
                Query7: data2
            });
        });
    });
});


//app.get() #4
app.get('/Countries',(request, response) => {
    const Query8 = 'SELECT Special_Countries.Country, Special_Countries.Attraction, Notable_Cars.Car FROM Special_Countries JOIN Notable_Cars ON Special_Countries.Country = Notable_Cars.Country2 WHERE Special_Countries.Country = "America" AND Notable_Cars.Car = "Ford Mustang"';
    const Query9 = 'SELECT Special_Countries.Country, Special_Countries.Attraction, Notable_Cars.Car FROM Special_Countries JOIN Notable_Cars ON Special_Countries.Country = Notable_Cars.Country2 WHERE Special_Countries.Country = "Paris" AND Notable_Cars.Car = "Renault"';
    const Query10 = 'SELECT Special_Countries.Country, Special_Countries.Attraction, Notable_Cars.Car FROM Special_Countries JOIN Notable_Cars ON Special_Countries.Country = Notable_Cars.Country2 WHERE Special_Countries.Country = "India" AND Notable_Cars.Car = "Suzuki Swift"';
    
    //corresponding db.queries for each Query

    db.query(Query8, (err, data) => {
        if(err) return response.json(err);

        db.query(Query9, (err, data2) => {
            if(err) return response.json(err);

            db.query(Query10, (err, data3) => {
                if(err) return response.json(err);
            

            //return the selected Querires via response.json. This will be viweable on the wesbite by clicking on the appropriate URL
            response.json({
                Query8: data,
                Query9: data2,
                Query10: data3

                });
            });
        });
    });
});

// set up the web server listener to verify that the server is live and running
app.listen(8081, () => {
    console.log("I am listening.")
});
