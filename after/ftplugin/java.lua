-- nvim-jdtls config
-- https://github.com/mfussenegger/nvim-jdtls/wiki/Sample-Configurations#pavva91-configuration
local jdtls = require('jdtls')
local jdtls_setup = require("jdtls.setup")

local home = os.getenv("HOME")
local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
local root_dir = jdtls_setup.find_root(root_markers)
local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = home .. "/.cache/nvim/jdtls/workspace" .. project_name
local path_to_mason_packages = home .. "/.local/share/nvim/mason/packages"
local path_to_jdtls = path_to_mason_packages .. "/jdtls"
-- local path_to_jdebug = path_to_mason_packages .. "/java-debug-adapter"
-- local path_to_jtest = path_to_mason_packages .. "/java-test"
local path_to_config = path_to_jdtls .. "/config_linux"
local lombok_path = path_to_jdtls .. "/lombok.jar"
local path_to_jar = path_to_jdtls .. "/plugins/org.eclipse.equinox.launcher_1.6.700.v20231214-2017.jar"
-- local bundles = {
--   vim.fn.glob(path_to_jdebug .. "/extension/server/com.microsoft.java.debug.plugin-*.jar", true),
--   vim.split(vim.fn.glob(path_to_jtest .. "/extension/server/*.jar", true), "\n")
-- }

local config = {
  -- cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw', 'pom.xml', 'build.gradle' }, { upward = true })[1]),
  capabilities = {
    workspace = { configuration = true },
    textDocument = {
      completion = {
        completionItem = { snippetSupport = true }
      }
    }
  },
  on_attach = function(client, bufnr) LSP_onAttach(client, bufnr); jdtls_setup.add_commands() end,
  -- on_attach = LSP_onAttach,
  settings = {
    java = {
      project = {
        referencedLibraries = {
          -- "/home/ishaan/.local/lombok.jar",
          lombok_path,
          "/home/ishaan/.local/mysql-connector-j-8.3.0.jar",
          "/home/ishaan/.local/junit-platform-console-standalone-1.10.0.jar",
          "/home/ishaan/.local/apache-tomcat-10.1.20/lib/servlet-api.jar",
        },
        sourcePaths = { "./tests", "./src", "./src/main/java" }
      }
    }
  },
  init_options = {
    extendedClientCapabilities = jdtls.extendedClientCapabilities,
  }
}
vim.list_extend(config.capabilities, require('cmp_nvim_lsp').default_capabilities())
config.init_options.extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

config.cmd = {
  "java",
  "-Declipse.application=org.eclipse.jdt.ls.core.id1",
  "-Dosgi.bundles.defaultStartLevel=4",
  "-Declipse.product=org.eclipse.jdt.ls.core.product",
  "-Dlog.protocol=true",
  "-Dlog.level=ALL",
  "-Xmx1g",
  "-javaagent:" .. lombok_path,
  "--add-modules=ALL-SYSTEM",
  "--add-opens",
  "java.base/java.util=ALL-UNNAMED",
  "--add-opens",
  "java.base/java.lang=ALL-UNNAMED",
  "-jar", path_to_jar,
  "-configuration", path_to_config,
  "-data", workspace_dir,
}

jdtls.start_or_attach(config)


-- compiler setup
vim.cmd("compiler javac")
local classPath = "out"
for i, k in pairs(config.settings.java.project.referencedLibraries) do
  classPath = classPath .. ":" .. k
end
vim.cmd("set makeprg=javac\\ -cp\\ " .. classPath .. "\\ -d\\ out\\ %")
