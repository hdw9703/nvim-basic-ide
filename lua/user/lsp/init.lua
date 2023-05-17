local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

require'lspconfig'.perlls.setup{
  cmd = { "perl", "-MPerl::LanguageServer", "-e", "Perl::LanguageServer::run", "--", "--port", "27011","--version", "2.5.0" }
}

