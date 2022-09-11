import React, { useRef, useState } from 'react';
import PropTypes from 'prop-types';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCloudArrowUp, faFileExcel, faXmark } from "@fortawesome/free-solid-svg-icons";
import "./DropFileInput.css";

const DropFileInput = props => {

    const wrapperRef = useRef(null);
    const [fileList, setFileList] = useState([]);
    const onDragEnter = () => wrapperRef.current.classList.add('dragover');
    const onDragLeave = () => wrapperRef.current.classList.remove('dragover');
    const onDrop = () => wrapperRef.current.classList.remove('dragover');

    //Константа в которую кидаем файлы из дропзоны
    const onFileDrop = (e) => {
        for (let i = 0; i < e.target.files.length; i++) {
            setFileList(fileList => [...fileList, e.target.files[i]]);
            props.onFileChange(fileList);
        }
    }

    const fileRemove = (file) => {
        const updatedList = [...fileList];
        updatedList.splice(fileList.indexOf(file), 1);
        setFileList(updatedList);
        props.onFileChange(updatedList);
    }

    return (
        <>
            <div className="drop-file-input"
                ref={wrapperRef}
                onDragEnter={onDragEnter}
                onDragLeave={onDragLeave}
                onDrop={onDrop}
            >
                <div className="drop-file-input__label">
                    <FontAwesomeIcon size="5x" icon={faCloudArrowUp} />
                    <p>Перетащите сюда файлы или нажмите чтобы загрузить</p>
                </div>
                <input multiple type="file" accept=".csv" value="" onChange={onFileDrop} />
            </div>
            {
                fileList.length > 0 ? (
                    <div className="drop-file-preview">
                        <p className="drop-file-preview__title">Готовы к загрузке</p> {
                            fileList.map((item, index) => (
                                <div key={index} className="drop-file-preview__item">
                                    <FontAwesomeIcon size="2x" className="icon" icon={faFileExcel} />
                                    <div className="drop-file-preview__item__info">
                                        <p>{item.name}</p>
                                    </div>
                                    <span className="drop-file-preview__item__del" onClick={() => fileRemove(item)}>
                                        <FontAwesomeIcon icon={faXmark} />
                                    </span>
                                </div>
                            ))
                        }
                    </div>
                ) : null
            }
        </>
    )
}

DropFileInput.propTypes = {
    onFileChange: PropTypes.func
}

export default DropFileInput