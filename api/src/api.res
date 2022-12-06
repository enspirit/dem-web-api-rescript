open Routes

@module external express: 'x = "express"
let app = express(. )

let port = 3000

app["get"](. "/", healthCheck)
app["post"](. "/compile/", postCompile)

let start = () => {
  app["listen"](. port, () => {
    Js.Console.log(`Listening at http://localhost:${Belt.Int.toString(port)}`)
  })
}
