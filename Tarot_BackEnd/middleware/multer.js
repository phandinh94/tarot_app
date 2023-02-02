const multer = require("multer")
const path = require("path")
const uploads = multer({
    storage: storage,
    // fileFilter: isImage,
})

const storage = multer.diskStorage({
    destination: function(req, file, cb){
        cb(null,'/public/assets/users' + file.originalname)
    },
    filename: function(req,file, cb){
        cb(null, file.fieldname+ "-" + (Date.now()+ "-" + Math.round(Math.random()*1E9))
        )}
})
