
/* 
import React, {useEffect, useState} from 'react'    // Imports the React library

function App() {
    const [data, setData] = useState([])            //  Initializes a state variable called data and a function setData to update this state.
    
    useEffect(() => {                               // define the userEffect hook, useEffect(() => { ... }, [])
       fetch('http://localhost:8081/listall')       // call backend route
       .then(response => response.json())           // Converts the response from the fetch request into JSON format.
       .then(data => setData(data))                 // Updates the state variable data with the fetched data using the setData function.
       .catch(err => console.log(err));             // logs the error msg to the console.
    }, [])                                          // The empty dependency array [] means it only runs once when the component is first rendered.
return(                                             // to be rendered in the UI
    <div>
       <table className="styled-table">
       <thead>
        <tr>
          <th>id</th>
          <th>name</th>
          <th>birthday</th>
          <th>gpa</th>
        </tr>
       </thead>
       <tbody>
             {data.map((d, i) => (                 // Maps over the data array to create a table row (<tr>) for each item d in data. The index i is used as a unique key for each row.
                  <tr key={i}>
                    <td>{d.id}</td>
                    <td>{d.name}</td>
                    <td>{new Date(d.birthday).toLocaleDateString()}</td>
                    <td>{d.gpa}</td>
                  </tr>
             ))}
       </tbody>
       </table>
    </div>
)
}

export default App                               // so it can be imported in other files.

*/ 

//The code above is for the sample code. The code below will be the modified version per assignment guidelines

import React, {useEffect, useState} from 'react'    // Imports the React library

/*
- Qx holds the result of Queryx variable from the Backend in the form of an array
- setQueryx is a function that is used to initalize Qx. This function requires a parameter, which is data.Queryx
- || [] <-- Not required but a good way to prevent a crash from .map if array is undefined after calling on Backend.
- .map(param#1, param#2), Takes it in the form of an array 
*/

function QueryOneToTwo(){
  const [Q1, setQuery1] = useState([]); 
  const [Q2, setQuery2] = useState([]);

  useEffect(() => {
    fetch('http://localhost:8081/Cams&Consoles')
      .then(response => response.json())
      .then(data => {
        setQuery1(data.Query1 || []); 
        setQuery2(data.Query2 || []);
      })
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h3><bold>Select Statement #1 Result:</bold></h3>
      <p><b><u>Brand - Platform</u></b></p>
      {Q1.map((element, index) => ( 
        <p key={index}>{element.Brand} - {element.Platform}</p>
      ))}
      <hr></hr>

      <h3><bold>Select Statement #2 Result:</bold></h3>
      <p><b><u>Brand - Platform</u></b></p> 
      {Q2.map((element, index) => (
        <p key={index}>{element.Brand} - {element.Platform}</p>
      ))}
      <hr></hr>
    </div>
  );
}

function QueryThreeToFive(){
  const [Q3, setQuery3] = useState([]); 
  const [Q4, setQuery4] = useState([]);
  const [Q5, setQuery5] = useState([]);
  
  useEffect(() => {
    fetch('http://localhost:8081/Michigan')
    .then(response => response.json())
    .then(data => {
      setQuery3(data.Query3 || []);
      setQuery4(data.Query4 || []);
      setQuery5(data.Query5 || []);
    })
    .catch(err => console.error(err));
  }, []);

  return(
    <div>
      <h3><bold>Select Statement #3 result: </bold></h3>
      <p><b><u>Population - Founded</u></b></p>
      {Q3.map((element, index) => (
        <p key={index}>{element.Population} - {element.Founded}</p>
      ))}
      <hr></hr>

      <h3><bold>Select Statement #4 result: </bold></h3>
      <p><b><u>City - Founded</u></b></p>
      {Q4.map((element, index) => (
        <p key={index}>{element.City} - {element.Founded}</p>
      ))}
      <hr></hr>

      <h3><bold>Select Statement #5 result: </bold></h3>
      <p><b><u>City - Founded</u></b></p>
      {Q5.map((element, index) => (
        <p key={index}>{element.City} - {element.Founded}</p>
      ))}
      <hr></hr>
    </div>
  );
}

function QuerySixToSeven(){
  const [Q6, setQuery6] = useState([]); 
  const [Q7, setQuery7] = useState([]);

  useEffect(() => {
    fetch('http://localhost:8081/Other_Tech&Consoles')
      .then(response => response.json())
      .then(data => {
        setQuery6(data.Query6 || []); 
        setQuery7(data.Query7 || []);
      })
      .catch(err => console.error(err));
  }, []);

  return (
    <div>
      <h3><bold>Select Statement #6 Result:</bold></h3>
      <p><b><u>Product - Price - Company</u></b></p>
      {Q6.map((element, index) => ( 
        <p key={index}>{element.Product} - {element.Price} - {element.Company}</p>
      ))}
      <hr></hr>

      <h3><bold>Select Statement #7 Result:</bold></h3>
      <p><b><u>Product - Price - Company</u></b></p>
      {Q7.map((element, index) => (
        <p key={index}>{element.Product} - {element.Price} - {element.Company}</p>
      ))}
      <hr></hr>
    </div>
  );

}

function QueryEightToTen(){
  const [Q8, setQuery8] = useState([]); 
  const [Q9, setQuery9] = useState([]);
  const [Q10, setQuery10] = useState([]);
  
  useEffect(() => {
    fetch('http://localhost:8081/Countries')
    .then(response => response.json())
    .then(data => {
      setQuery8(data.Query8 || []);
      setQuery9(data.Query9 || []);
      setQuery10(data.Query10 || []);
    })
    .catch(err => console.error(err));
  }, []);

  return(
    <div>
      <h3><bold>Select Statement #8 result: </bold></h3>
      <p><b><u>Country - Attraction - Car</u></b></p>
      {Q8.map((element, index) => (
        <p key={index}>{element.Country} - {element.Attraction} - {element.Car}</p>
      ))}
      <hr></hr>

      <h3><bold>Select Statement #9 result: </bold></h3>
      <p><b><u>Country - Attraction - Car</u></b></p>
      {Q9.map((element, index) => (
        <p key={index}>{element.Country} - {element.Attraction} - {element.Car}</p>
      ))}
      <hr></hr>

      <h3><bold>Select Statement #10 result: </bold></h3>
      <p><b><u>Country - Attraction - Car</u></b></p>
      {Q10.map((element, index) => (
        <p key={index}>{element.Country} - {element.Attraction} - {element.Car}</p>
      ))}
    </div>
  );
}

function App() { //you can only have one App() function in a react file                                         
return(                                            
    <div>
      <h1>Result of 10 Select Statements:</h1>
      <hr></hr>
      <QueryOneToTwo/>
      <QueryThreeToFive/>
      <QuerySixToSeven/>
      <QueryEightToTen/>

    </div>
  );
}

export default App                               