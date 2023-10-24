import axios from 'axios'
import { API_URL } from './api.consts';

const $api = axios.create({
  withCredentials: true,
  baseURL: API_URL,
})

$api.interceptors.request.use((config) => {
    config.headers.authorization = `Token ${localStorage.getItem('token')}`;
    return config;
})

export default $api;