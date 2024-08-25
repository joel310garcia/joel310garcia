import { pool } from '../db.js'


export const producto = async (req, res) => {
    const [result] = await pool.query('SELECT * FROM producto')
    res.json(result[0])
 }