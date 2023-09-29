import { createPool } from "mysql2/promise";

//
const pool = createPool({
    host: "localhost",
    user: "root",
    password: "",
    port: 3306,
    database: "laboratorio"
})
//
/*
const pool = createPool({
    host: "localhost",
    user: "id19913514_root",
    password: "Electronica.5000",
    port: 3306,
    database: "id19913514_laboratorio"
})
*/

export { pool }