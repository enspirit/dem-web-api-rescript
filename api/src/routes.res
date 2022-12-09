let healthCheck = (req, res, next) => {
  Js.Console.log("GET /")
  res["setHeader"](. "Content-Type", "text/plain")
  res["write"](. "Ok")
  res["end"](. None)
}

let postCompile = (req, res, next) => {
  Js.Console.log("POST /compile/")
  let dem_res = App.compile(None, None, None, None, None)
  res["setHeader"](. "Content-Type", "text/plain")
  res["write"](. "Ok")
  res["end"](. None)
}
