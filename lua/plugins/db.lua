local function getOS()
  -- ask LuaJIT first
  if jit then
    return jit.os
  end

  -- Unix, Linux variants
  local fh = assert(io.popen("uname -o 2>/dev/null", "r"))
  if fh then
    Osname = fh:read()
  end

  return Osname or "Windows"
end

local os = getOS()
local path = ""
if os == "Windows" then path = "C:/Users/maty1/AppData/Local/nvim" else path = '~/.config/nvim/lua/config/init.lua' end
print(path)


require('dashboard').setup({
  theme = 'doom',
  config = {
    header = { '',
      ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
      ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
      ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
      ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
      ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
      ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
      '',
      ' [ -- Wellcome Matias :) --] ',
      '', }, --your header
    center = {
      { icon = ' ',
        desc = 'New File',
        action = 'DashboardNewFile',
        shortcut = 'Leader n f' },
      { icon = ' ',
        desc = 'Find  word',
        action = 'Telescope live_grep',
        shortcut = 'f w' },
      { icon = ' ',
        desc = 'Find  File                              ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        shortcut = 'f f' },
      { icon = ' ',
        desc = 'Recently opened files                   ',
        action = 'Telescope oldfiles',
        shortcut = 'f h' },
      { icon = ' ',
        desc = 'Bookmarks                               ',
        action = 'BookmarkShowAll',
        shortcut = 'b a' },
      { icon = ' ',
        desc = 'File Browser                             ',
        action = 'Telescope file_browser',
        shortcut = 'f b' },
      { icon = ' ',
        desc = 'NvimTree                              ',
        action = 'NvimTreeToggle',
        shortcut = 'Ctrl t' },
      { icon = ' ',
        desc = 'Config',
        action = 'edit ' .. path .. "/init.lua",
        shortcut = '' },
    },
    footer = {}
  }
})
