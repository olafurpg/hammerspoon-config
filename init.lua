hyper = {"cmd", "alt", "ctrl", "shift"} 

apps = {
  P = "Skim",
  E = "Emacs",
  V = "org.vim.MacVim",
  D = "com.kapeli.dash",
  Y = "ru.keepcoder.Telegram",
  T = "com.googlecode.iterm2",
  C = "com.apple.finder",
  M = "com.spotify.client",
  K = "Keychain Access",
  U = "com.apple.iWork.Keynote",
  X = "com.microsoft.VSCode",
  Q = "org.hammerspoon.Hammerspoon",
  I = "com.microsoft.VSCode",
  -- I = "com.microsoft.VSCode",
  A = "com.google.Chrome",
  Z = "com.apple.Safari",
  -- I = "IntelliJ IDEA CE",
  O = "Slack",
  B = "org.mozilla.firefox"
  -- B = "Safari"
}

for key, app in pairs(apps) do
  hs.hotkey.bind(hyper, key, function()
    for name, application in pairs(hs.application.runningApplications()) do
      if application:name() == app then
        application:activate()
      elseif application:bundleID() == app then
        application:activate()
      end
    end
  end)
end

hs.hotkey.bind(hyper, "S", function()
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  win:moveToScreen(screen:next())
end)

hs.hotkey.bind(hyper, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()
  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()
  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind(hyper, "R", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:fullFrame()
  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)
