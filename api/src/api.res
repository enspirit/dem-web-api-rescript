open Routes

@module external express: 'x = "express"
let app = express(. )

let port = 3000

type urlencoded = {
  "extended": bool
}

app["use"](. express["json"](Js.Obj.empty()))
let extended = { "extended": true }
app["use"](. express["urlencoded"](. extended))

app["get"](. "/", healthCheck)
app["post"](. "/compile/", postCompile)

let start = () => {
  app["listen"](. port, () => {
    Js.Console.log(`Listening at http://localhost:${Belt.Int.toString(port)}`)
  })
}
