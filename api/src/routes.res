let healthCheck = (req, res, next) => {
  Js.Console.log("GET /")
  res["setHeader"](. "Content-Type", "text/plain")
  res["write"](. "Ok")
  res["end"](. None)
}

// let healthCheck = Middleware.from((_, _, res) => {
//   let result = Js.Dict.empty()
//   result->Js.Dict.set("Hello", "World"->Js.Json.string)
//   let json = result->Js.Json.object_
//   res |> Response.status(Response.StatusCode.Ok) |> Response.sendJson(json)
// })

let postCompile = (req, res, next) => {
  Js.Console.log("POST /compile/")
  res["setHeader"](. "Content-Type", "text/plain")
  res["write"](. "Ok")
  res["end"](. None)
}

// let postCompile = Middleware.from((_, _, res) => {
//   let result = Js.Dict.empty()
//   result->Js.Dict.set("Hello", "World"->Js.Json.string)
//   let json = result->Js.Json.object_
//   res |> Response.status(Response.StatusCode.Ok) |> Response.sendJson(json)
// })
