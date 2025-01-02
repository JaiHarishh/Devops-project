const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello Every One... I am Jai Harish ... ');
});

app.listen(5000, function () {
  console.log('app running on port 5000');
});