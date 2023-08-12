// app.js

const express = require('express');
const bodyParser = require('body-parser');
const teachersRoutes = require('./routes/teachersRoutes');

const app = express();
const port = 8080;

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.set('view engine', 'ejs');

app.use('/teachers', teachersRoutes);

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});