import { pool } from '../db.js'

export const ping = async (req, res)=> {
    const [result] = await pool.query('SELECT "pong" as result') // con el [result] estoy obteniendo sólo result de toda la respuesta, sino me trae un montón de info que no necesito
    res.json(result[0])
}

export const getProfile = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM profile WHERE id = 1')
    
        if (rows.length <= 0) return res.status(404).json({
            message: 'Profile not found'
        })
    
        res.json(rows[0])
    } catch(error) {
        res.status(500).json({
            message: 'Something goes wrong'
        })
    }
}

export const getSocialProfile = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM social_profile WHERE profile_id = 1')
        res.json(rows)
    } catch(error) {
        res.status(500).json({
            message: 'Something goes wrong'
        })
    }
}

export const getEducation = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM education')
        res.json(rows)
    } catch(error) {
        res.status(500).json({
            message: 'Something goes wrong'
        })
    }
}

export const getJobs = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM jobs')
        res.json(rows)
    } catch(error) {
        res.status(500).json({
            message: 'Something goes wrong'
        })
    }
}

export const getProjects = async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM projects')
        res.json(rows)
    } catch(error) {
        res.status(500).json({
            message: 'Something goes wrong'
        })
    }
}

export const getInfo = async (req, res) => {
    res.status(200).json({
        message: 'Esta aplicación está construida con NodeJS'
    })
}