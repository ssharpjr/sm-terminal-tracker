-- SMTT - Starmourn Terminal Tracker

SMTT.area = ""

if matches[3] then
  SMTT.area = matches[3]
else
  SMTT.area = nil
end

SMTT.showHT(matches[2])
