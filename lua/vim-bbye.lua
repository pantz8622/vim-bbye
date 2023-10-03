local M = { }

local function bdelete(opts)
  if opts == nil then opts = { } end
  if opts.bufnr == nil then opts.bufnr = vim.api.nvim_get_current_buf() end
  if opts.force == nil then opts.force = false end

  local cmd = 'Bdelete'
  if opts.force then
    cmd = cmd .. '!'
  end

  vim.cmd(cmd .. ' ' .. opts.bufnr)
end

M.setup = function (opts)
  M.bdelete = bdelete
end

return M
