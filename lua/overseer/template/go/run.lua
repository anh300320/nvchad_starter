return {
  name = "Go Run (args)",

  params = {
    args = { type = "list", delimiter = " " },
  },

  builder = function(params)
    return {
      cmd = { "go", "run", "." },
      args = params.args,
    }
  end,
}
