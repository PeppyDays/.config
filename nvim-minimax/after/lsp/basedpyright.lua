-- LSP config for basedpyright (Python)
-- Source: https://github.com/DetachHead/basedpyright
return {
  settings = {
    basedpyright = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        typeCheckingMode = "recommended",
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
}
