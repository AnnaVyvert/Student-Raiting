require('dotenv').config()
const express = require('express')
const models = require('./models/models')
const errorHandler = require('./middleware/ErrorHandlingMiddleware')
const cors = require('cors')
const sequelize = require('./db')
const router = require('./routes/routes')

const PORT = process.env.PORT || 8080

const app= express()
app.use(cors())
app.use(express.json())
app.use('/api', router)

// Обработка ошибок, последний Middleware
app.use(errorHandler)

const start = async () => {
    try {
        await sequelize.authenticate()
        await sequelize.sync()
        app.listen(PORT, () => console.log(`Server started on port ${PORT}`))
    } catch (e) {
        console.log(e)
    }
}

start()
