const express = require("express");

const app = express();

app.use(express.json())
const PORT = process.env.PORT || 8000;

app.get("/", (req, res) => {
    return res.json({ message: "Writing nodejs for dockerisation" })
})

app.listen(PORT, () => console.log(`Server started on ${PORT}`))
