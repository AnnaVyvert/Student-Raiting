import React from 'react'
import usePagination from '../hooks/usePagination';
import './table.css'

const LoadTable = ({ data, itemsPerPage, startFrom }) => {

    const { slicedData, pagination, prevPage, nextPage, changePage } = usePagination({ itemsPerPage, data, startFrom });


    return (
        <>
            <table>
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Баллы</th>
                        <th>Уровень</th>
                        <th>ФИО</th>
                        <th>ГРУППА</th>
                        <th>ИНСТИТУТ</th>
                        <th>ГАС</th>
                    </tr>
                </thead>
                <tbody>
                    {/* Перебор данных из sliceData */}
                    {slicedData.map(item => (
                        <tr key={item.id}>
                            <td>{item.id}</td>
                            <td>{item.points}</td>
                            <td>{item.level}</td>
                            <td>{item.fio}</td>
                            <td>{item.group}</td>
                            <td>{item.institute}</td>
                            <td>{item.gas}</td>
                        </tr>
                    ))}
                </tbody>
            </table>

            {/* блок с пагинацией */}
            <nav className="pagination nav-pagination">

                {/* Кнопка "<< Назад" */}
                <li className='page-item'>
                    <a href="#" className="page-link" aria-label="Previous" onClick={prevPage}>
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>

                {/* Сам лист-пагинация  */}
                <ul className="pagination">
                    {pagination.map(page => {
                        if (!page.ellipsis) {
                            return <li className={page.current ? 'page-item active' : 'page-item'} key={page.id}>
                                <a href="#" className='page-link' onClick={(e) => changePage(page.id, e)}> {page.id}
                                </a>
                            </li>
                        } else {
                            return <li key={page.id}><span className="pagination-ellipsis">&hellip;</span></li>
                        }
                    })}
                </ul>

                {/* Кнопка "Вперед >>" */}
                <li className='page-item'>
                    <a href="#" className="page-link" aria-label="Next" onClick={nextPage}>
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </nav>
        </>
    )
}

export default LoadTable