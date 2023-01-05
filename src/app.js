import express from 'express'
import cors from 'cors'
import indexRoutes from './routes/index.routes.js'

const app = express()

app.use(express.json())
app.use(cors())

app.use(indexRoutes)

app.use((req, res, next) => {
    res.status(404).json({
        message: 'Esta ruta no contiene datos'
    })
})

export default app