import React, { useState, useEffect } from "react";
import axios from "axios";
import { trackPromise, usePromiseTracker } from 'react-promise-tracker';
import DirectionsTable from "../components/tables/DirectionsTable";

function Od() {
  document.title = "Общественная";

  const [items, setItems] = useState([]);
  const { promiseInProgress } = usePromiseTracker();
  
  //Гет-запрос на список "Общественная деятельность"
  useEffect(() => {
    trackPromise(axios.get('http://localhost:8080/api/od'))
        .then(response => setItems(response.data))
        .catch(error => console.log(error));
}, []);

  return (
    <div>
      <h1 className="header">Общественная деятельность</h1>

      {/* блок с промисом "загрузка..." */}
      {promiseInProgress
        ? <div>Загрузка...</div> : <DirectionsTable data={items} itemsPerPage={10} />
      }
    </div>
  );
}

export default Od;
