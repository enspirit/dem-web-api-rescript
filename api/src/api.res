open Routes

%%raw("
const express = require('express')
const app = express()
const port = 3000

const healthCheck = (req, res, next) => {
  res.setHeader('Content-Type', 'text/plain');
  res.write('Ok');
  res.end(undefined);
};

const postCompile = (req, res, next) => {
  console.log('coucou')
  res.setHeader('Content-Type', 'text/plain');
  res.write('Ok');
  res.end(undefined);
};

app.get('/', healthCheck)
app.post('/compile/', postCompile)


module.exports = () => {
  app.listen(port, () => {
    console.log(`Listening at http://localhost:${port}`)
  })
};

")
