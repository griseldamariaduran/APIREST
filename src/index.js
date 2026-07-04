import "dotenv/config.js"
import express from 'express'
import userRouter from "./routes/users.routes.js"
import authRouter from './routes/auth.routes.js'
import {apikeyMiddelware} from "./middleware/apikey.middelware.js"

// CREAR INSTANCIA 
const app = express()
const PORT = process.env.PORT

// ESPECIFICAR JSON
app.use(express.json());

//MIDDELWARE
app.use(apikeyMiddelware)

//ENDPOINT
app.use("/", userRouter)
app.use("/auth", authRouter)








// CREAR EL SERVER
app.listen(PORT, () => {
    console.log(`Server running in ${PORT} 🚀🚀🚀`);
})