open Routes

%%raw("
const express = require('express')
const app = express()
const port = 3000

app.get('/', healthCheck)
app.get('/compile/', postCompile)

app.listen(port, () => {
  console.log(`Listening at http://localhost:${Js.Int.toString(port)}`)
})
")
