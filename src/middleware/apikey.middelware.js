export const apikeyMiddelware = (req, res, next) => {
    const apikey = req.headers['x-api-key']

    if 
    (!apikey || apikey !== process.env.APIKEY){
        return res.status(401).json ({message: "Unauthorized: invalid  API key"})
    
    }
    next()
}