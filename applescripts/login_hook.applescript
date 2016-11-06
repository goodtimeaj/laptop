-- vim:ft=applescript:
-- Scripts to be run at login.

-- Turn off wifi
networksetup -setairportpower en1 off

-- Launch Chrome
tell application "Google Chrome" to activate

-- Enable the Intellimouse driver (without accelaration)
-- tell application "System Preferences"
--   activate
--   set current pane to pane "com.microsoft.microsoftmouse"
--   tell application "System Preferences" to quit
-- end tell

-- Launch Terminal
tell application "Terminal" to activate

-- Wait for Terminal to launch before attempting window maximization
do shell script "sleep 0.5"

-- Get the screen bounds
tell application "Finder"
  set {screen_left, screen_top, screen_width, screen_height} to bounds of window of desktop
end tell

-- Maximize Terminal window
tell application "Terminal"
  set size of window 1 to {screen_width, screen_height}
  set position of window 1 to {screen_left, screen_top}
end tell

-- Set focus to Terminal
tell application "Terminal" to activate

-- Send <c-l> to Terminal to clear the screen
tell application "System Events"
  tell process "Terminal"
    keystroke "l" using control down
  end tell
end tell

-- Turn volume off
set Volume 0

-- Quit Finder
tell application "Finder" to quit
