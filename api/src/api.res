open Routes

@module external express: 'whatever = "express"
let app = express(. )

let port = 3000

let healthCheck = (req, res, next) => {
  Js.Console.log("GET /")
  res["setHeader"](. "Content-Type", "text/plain")
  res["write"](. "Ok")
  res["end"](. None)
}

let postCompile = (req, res, next) => {
  Js.Console.log("POST /compile/")
  res["setHeader"](. "Content-Type", "text/plain")
  res["write"](. "Ok")
  res["end"](. None)
}

app["get"](. "/", healthCheck)
app["post"](. "/compile/", postCompile)

let start = () => {
  app["listen"](. port, () => {
    Js.Console.log(`Listening at http://localhost:${Belt.Int.toString(port)}`)
  })
}
