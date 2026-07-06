return {
  name = "Go Debug (dlv)",

  params = {
    args = { type = "list", delimiter = " " },
  },

  builder = function(params)
    return {
      cmd = { "dlv", "debug", "." },
      args = params.args,
      cwd = vim.fn.getcwd(),
    }
  end,
}
