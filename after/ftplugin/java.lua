vim.cmd("compiler javac")
vim.cmd("set makeprg=javac\\ -cp\\ out\\ -d\\ out\\ %")


-- nvim-jdtls config
local jdtls = require('jdtls')
local jdtls_setup = require("jdtls.setup")
local config = {
  cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
  capabilities = {
    workspace = { configuration = true },
    textDocument = {
      completion = {
        completionItem = { snippetSupport = true }
      }
    }
  },
  on_attach = function(client, bufnr) LSP_onAttach(client, bufnr); jdtls_setup.add_commands() end,
  settings = {
    java = {
      project = {
        referencedLibraries = {
          "/home/ishaan/.local/mysql-connector-j-8.3.0.jar",
          "/home/ishaan/.local/junit-platform-console-standalone-1.10.0.jar",
        }
      }
    }
  },
  init_options = {
    extendedClientCapabilities = jdtls.extendedClientCapabilities,
  }
}
vim.list_extend(config.capabilities, require('cmp_nvim_lsp').default_capabilities())
config.init_options.extendedClientCapabilities.resolveAdditionalTextEditsSupport = true
jdtls.start_or_attach(config)
