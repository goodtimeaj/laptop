-- vim:ft=applescript:
-- Sets the desktop picture to Solid Black.

set desktopImage to POSIX file "/Library/Desktop Pictures/Solid Colors/Solid Black.png"
tell application "Finder"
  set desktop picture to desktopImage
end tell
