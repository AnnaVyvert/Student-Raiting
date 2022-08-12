import React from 'react'
import "../LoadTable/LoadTable.css"
import usePagination from "../../hooks/usePagination";

const FinalTable = ({ data, itemsPerPage, startFrom }) => {
    const { slicedData, pagination, prevPage, nextPage, changePage } =
        usePagination({ itemsPerPage, data, startFrom });

    return (
        <>
            <table className='tableFinal'>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Баллы</th>
                        <th>Направление</th>
                        <th>Фио</th>
                        <th>Группа</th>
                        <th>Институт</th>
                        <th>Статус</th>
                    </tr>
                </thead>
                <tbody>
                    {slicedData.map((item) => (
                        <tr key={item.id}>
                            <td>{item.student.studnumber}</td>
                            <td>{item.rating.points}</td>
                            <td>{item.rating.ratingcourse.course.title}</td>
                            <td>{item.student.fullname}</td>
                            <td>{item.student.educationgroup}</td>
                            <td>{item.student.institute}</td>
                            <td>{item.cause}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </>
    )
}
export default FinalTable