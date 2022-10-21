open Express
open Routes

let app = express()
let port = 3000

App.get(app, ~path="/", healthCheck)
App.get(app, ~path="/compile/", postCompile)

let server = App.listen(
  app,
  ~port,
  ~onListen=_ => {
    Js.log(`Listening at http://localhost:${Js.Int.toString(port)}`)
  },
  (),
)
