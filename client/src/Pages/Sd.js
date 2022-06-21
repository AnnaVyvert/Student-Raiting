import React, { useState, useEffect } from "react";
import axios from "axios";
import { trackPromise, usePromiseTracker } from 'react-promise-tracker';
import DirectionsTable from "../components/tables/DirectionsTable";

function Sd() {
  document.title = "Спортивная";

  const [items, setItems] = useState([]);
  const { promiseInProgress } = usePromiseTracker();
  
  useEffect(() => {
    trackPromise(axios.get('http://localhost:8080/api/sd'))
        .then(response => setItems(response.data))
        .catch(error => console.log(error));
}, []);

  return (
    <div>
      <h1 className="header">Спортивная деятельность</h1>
      
      {/* блокс с промисом "загрузка..." */}
      {promiseInProgress
        ? <div>Загрузка...</div> : <DirectionsTable data={items} itemsPerPage={10} />
      }
    </div>
  );
}

export default Sd;
