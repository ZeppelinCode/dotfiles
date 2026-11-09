-- ~/.cargo/bin/rust-analyzer is a rustup proxy that exits with
-- "Unknown binary 'rust-analyzer'" unless the rustup component is installed.
-- Prefer the toolchain's real binary when it exists, otherwise use Mason's.
local function rust_analyzer_cmd()
  if vim.fn.executable("rustup") == 1 then
    local out = vim.fn.systemlist({ "rustup", "which", "rust-analyzer" })
    if vim.v.shell_error == 0 and out[1] and vim.fn.executable(out[1]) == 1 then
      return { out[1] }
    end
  end
  return { vim.fn.stdpath("data") .. "/mason/bin/rust-analyzer" }
end

return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "rust-analyzer" } },
  },
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        cmd = rust_analyzer_cmd,
      },
    },
  },
}
