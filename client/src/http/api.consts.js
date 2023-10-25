import { loadEnv } from "vite";

const env = loadEnv(mode, process.cwd(), "");

export const API_URL = env.API_URL
