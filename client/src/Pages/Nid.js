import React, { useState, useEffect } from "react";
import axios from "axios";
import { trackPromise, usePromiseTracker } from 'react-promise-tracker';
import NidTable from "../components/tables/NidTable";

function Nid() {
  document.title = "Научная";
  const [items, setItems] = useState([]);
  const { promiseInProgress } = usePromiseTracker();

  //Гет запрос на список "Научная деятельность"
  useEffect(() => {
    trackPromise(axios.get('http://localhost:8080/api/nid'))
      .then(response => setItems(response.data))
      .catch(error => console.log(error));
  }, []);

  return (
    <div>
      <h1 className="header">Научная деятельность</h1>

      {/* блокс с промисом "загрузка..." */}
      {promiseInProgress
        ? <div>Загрузка...</div> : <NidTable data={items} itemsPerPage={10} />
      }
    </div>
  );
}

export default Nid;
