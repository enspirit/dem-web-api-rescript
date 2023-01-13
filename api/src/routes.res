let healthCheck = (req, res, next) => {
  Js.Console.log("GET /")
  res["setHeader"](. "Content-Type", "text/plain")
  res["status"](. 200)
  res["send"](. "Ok")
}

let postCompile = (req, res, next) => {
  Js.Console.log("POST /compile/")
  let body = req["body"]
  let text = body["text"]
  let dem_res = App.compile(None, None, text, None, None)
  res["setHeader"](. "Content-Type", "text/plain")
  res["status"](. 200)
  res["send"](. dem_res)
}
