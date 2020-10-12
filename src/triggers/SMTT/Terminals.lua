-- SMTT - Starmourn Terminal Tracker

-- Match on substring 'access terminal'

-- Examples:
-- - an unobtrusive access terminal
-- - a vandalized access terminal

local roomNum = gmcp.Room.Info.num
local untracked = false

for k, v in pairs(hack_tbl) do
  if roomNum == hack_tbl[k][2] then
    untracked = true
  end
end

-- Optional highlight for untracked terminals. Comment out if not wanted.
if not untracked then
  cecho("\n<yellow:red>UNTRACKED ACCESS TERMINAL: Room# "..roomNum)
end