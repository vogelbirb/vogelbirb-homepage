const express = require("express");

const app = express();

app.use(express.static("public"));

const port = 3001;
app.listen(process.env.PORT || port, "0.0.0.0");
console.log(`Server listening on port ${port}`);
