-- SMTT - Starmourn Terminal Tracker

-- Functions

-- Password guessers:
-- - https://www.crosswordsolver.org/solve/hac-er
-- - https://api.datamuse.com/sug?s=hac?er


function SMTT.showHTFaction(arg)
    local colorLevel = SMTT.colorLevel
    local colorRmNo  = SMTT.colorRmNo
    local colorArea  = SMTT.colorArea
    local colorRmDes = SMTT.colorRmDes
    local colorNotes = SMTT.colorNotes
    tt_fname = nil
    local count = 0
    if arg == "sh" then
      tt_fname = "Scatterhome"
    elseif arg == "sd" then
      tt_fname = "Song Dominion"
    elseif arg == "ca" then
      tt_fname = "Celestine Ascendency"
    elseif arg == "na" then
      tt_fname = "Non-Faction"
    else
      tt_fname = "All"
    end
  
    cecho("\n<gold>-- <cyan>SMTT <white>Terminal Tracker <gold>-- <cyan>"..tt_fname.." <white>Terminals <gold>"..
          string.rep("-", 99-39-tt_fname:len()))
    echo("\n")
    cecho("\n"..colorLevel.."Lvl"..string.rep(" ", 4-3)..
          colorRmNo.."Room"..string.rep(" ", 6-2)..
          colorArea.."Area"..string.rep(" ", 22-4)..
          colorRmDes.."Room Description"..string.rep(" ", 40-16+2)..
          colorNotes.."Notes")
    cecho("\n<gold>"..string.rep("-", 99))
    for k, v in pairs(hack_tbl) do
      if hack_tbl[k][4] == arg:upper() or tt_fname == "All" then
        count = count + 1
        cecho("\n"..colorLevel..hack_tbl[k][1]..string.rep(" ", 4-tostring(hack_tbl[k][1]):len())..
              colorRmNo..hack_tbl[k][2]..string.rep(" ", 8-tostring(hack_tbl[k][2]):len())..
              colorArea..hack_tbl[k][3]..string.rep(" ", 22-tostring(hack_tbl[k][3]):len())..
              colorRmDes..hack_tbl[k][5]:cut(40)..string.rep(" ", 42-tostring(hack_tbl[k][5]):cut(40):len())..
              colorNotes..hack_tbl[k][6])
      end
    end
    if tt_fname ~= "All" then
      cecho("\n<gold>"..string.rep("-", 99).."\n")
      cecho(" <cyan>"..count.." <white>Total <cyan>"..tt_fname.." <white>terminals")
      cecho("\n<gold>"..string.rep("-", 99).."\n")
    end
  end
  
  
  function SMTT.showHTLevel(lvl)
    local colorLevel = SMTT.colorLevel
    local colorRmNo  = SMTT.colorRmNo
    local colorArea  = SMTT.colorArea
    local colorRmDes = SMTT.colorRmDes
    local colorNotes = SMTT.colorNotes
    count = 0
    cecho("\n<gold>-- <cyan>SMTT <white>Terminal Tracker <gold>-- <cyan>Level "..lvl.." <white>Terminals <gold>"..
          string.rep("-", 99-45-tostring(lvl):len()))
    echo("\n")
    cecho("\n"..colorLevel.."Lvl"..string.rep(" ", 4-3)..
          colorRmNo.."Room"..string.rep(" ", 6-2)..
          colorArea.."Area"..string.rep(" ", 22-4)..
          colorRmDes.."Room Description"..string.rep(" ", 40-16+2)..
          colorNotes.."Notes")
    cecho("\n<gold>"..string.rep("-", 99))
    for k, v in pairs(hack_tbl) do
      if hack_tbl[k][1] == lvl then
        count = count + 1
        cecho("\n"..colorLevel..hack_tbl[k][1]..string.rep(" ", 4-tostring(hack_tbl[k][1]):len())..
              colorRmNo..hack_tbl[k][2]..string.rep(" ", 8-tostring(hack_tbl[k][2]):len())..
              colorArea..hack_tbl[k][3]..string.rep(" ", 22-tostring(hack_tbl[k][3]):len())..
              colorRmDes..hack_tbl[k][5]:cut(40)..string.rep(" ", 42-tostring(hack_tbl[k][5]):cut(40):len())..
              colorNotes..hack_tbl[k][6])
      end
    end
      if count == 0 then
      cecho("\n<goldenrod>Sorry, no level <cyan>"..lvl.."<goldenrod> terminals were found in the database.")
    end
      cecho("\n<gold>"..string.rep("-", 99).."\n")
      cecho(" <cyan>"..count.." <white>Total <cyan>Level "..lvl.." <white>terminals")
      cecho("\n<gold>"..string.rep("-", 99).."\n")
  end
  
  
  function SMTT.showHTArea()
    local colorLevel = SMTT.colorLevel
    local colorRmNo  = SMTT.colorRmNo
    local colorArea  = SMTT.colorArea
    local colorRmDes = SMTT.colorRmDes
    local colorNotes = SMTT.colorNotes
    local count = 0
    local area_lower = SMTT.area:lower()
    local area_upper = SMTT.area:gsub("(%l)(%w*)", function(a,b) return string.upper(a)..b end)
    cecho("\n<gold>-- <cyan>SMTT <white>Terminal Tracker <gold>-- <white>Searching for \"<cyan>"..area_upper.."<white>\" Terminals <gold>"..
          string.rep("-", 99-55-tostring(area_upper):len()))
    echo("\n")
    cecho("\n"..colorLevel.."Lvl"..string.rep(" ", 4-3)..
          colorRmNo.."Room"..string.rep(" ", 6-2)..
          colorArea.."Area"..string.rep(" ", 22-4)..
          colorRmDes.."Room Description"..string.rep(" ", 40-16+2)..
          colorNotes.."Notes")
    cecho("\n<gold>"..string.rep("-", 99))
    
    for k, v in pairs(hack_tbl) do
      if string.find(hack_tbl[k][3]:lower(), area_lower) then
        count = count + 1
        cecho("\n"..colorLevel..hack_tbl[k][1]..string.rep(" ", 4-tostring(hack_tbl[k][1]):len())..
              colorRmNo..hack_tbl[k][2]..string.rep(" ", 8-tostring(hack_tbl[k][2]):len())..
              colorArea..hack_tbl[k][3]..string.rep(" ", 22-tostring(hack_tbl[k][3]):len())..
              colorRmDes..hack_tbl[k][5]:cut(40)..string.rep(" ", 42-tostring(hack_tbl[k][5]):cut(40):len())..
              colorNotes..hack_tbl[k][6])
      end
    end
    if count == 0 then
      cecho("\n<goldenrod>Sorry, an area called \"<cyan>"..area_upper.."<goldenrod>\" was not found in the terminal database.")
    end
    cecho("\n<gold>"..string.rep("-", 99).."\n")
    cecho(" <cyan>"..count.." <white>Total terminals with \"<cyan>"..area_upper.."<white>\" in the name")
    cecho("\n<gold>"..string.rep("-", 99).."\n")
    
  end
  
  
  function SMTT.showHT(lvl)
      if lvl == nil then
      local table_size = #hack_tbl
      SMTT.showHTFaction("All")
      cecho("\n<gold>"..string.rep("-", 99).."\n")
      cecho(" <cyan>"..table_size.." <white>Total terminals")
      cecho("\n<gold>"..string.rep("-", 99).."\n")
      elseif lvl == "erm" then
          send("hack terminal")
    elseif lvl == "help" then
      cecho("\n<gold>-- <cyan>SMTT <white>Terminal Tracker <gold>-- <white>Help <gold>"..
            string.rep("-", 99-33))
      echo("\n")
      cecho("\n<white>  Script version: <cyan>"..SMTT.version)
      cecho("\n<white>Database version: <cyan>"..SMTT.dbversion)
      echo("\n")
      cecho("\n<cyan>ht<gold>             - Shows all known terminals")
      cecho("\n<cyan>ht<NUM><gold>        - (Example: ht1 - ht20) Shows all known terminals of that level.")
      cecho("\n<cyan>htsh<gold>           - Shows all known terminals in Scatterhome.")
      cecho("\n<cyan>htsd<gold>           - Shows all known terminals in the Song Dominion.")
      cecho("\n<cyan>htca<gold>           - Shows all known terminals in the Celestine Ascendancy.")
      cecho("\n<cyan>htna<gold>           - Shows all known terminals without a faction affiliation (neutral space).")
      cecho("\n<cyan>hterm<gold>          - Sends '<cyan>HACK TERMINAL<gold>'. (You must be in a room with a terminal.)")
      cecho("\n<cyan>htarea <AREA><gold>  - Fuzzy search for terminals in <cyan><AREA><gold>. <white>(Note the space!)")
      cecho("\n<cyan>htexport full<gold>  - Exports a formatted tsv list.")
      cecho("\n<cyan>htexport tab<gold>   - Exports a formatted tsv list. This export does not have the Notes column.")
      cecho("\n<cyan>htexport note<gold>  - Exports a formatted tsv list cut to 35 characters with color")
      cecho("\n<gold>                   for pasting into a note. This export does not have the Notes column.")
      cecho("\n<cyan>smttshowdb<gold>     - DEBUG: Shows the raw terminal database.")
      cecho("\n<cyan>hthelp<gold>         - Shows this help file")
      echo("\n")
      cecho("\n<gold>"..string.rep("-", 99).."\n")
    elseif lvl == "sh" then
      -- Scatterhome terminals
      SMTT.showHTFaction(lvl)
    elseif lvl == "sd" then
      -- Song Dominion terminals
      SMTT.showHTFaction(lvl)
    elseif lvl == "ca" then
      -- Celestine Ascendency terminals
      SMTT.showHTFaction(lvl)
    elseif lvl == "na" then
      -- Non-Faction terminals
      SMTT.showHTFaction(lvl)
    elseif lvl == "area" then
      -- Show area terminals
      if SMTT.area then
        SMTT.showHTArea()
      else
        cecho("\n<goldenrod>Please enter an area. Usage: <cyan>htarea <AREA>")
      end
    else
          lvl = tonumber(lvl)
      SMTT.showHTLevel(lvl)
      end
  end
  
  function SMTT.showHTExport(arg)
    if not arg then
      cecho("\n<goldenrod>Usage: <cyan>htexport note <goldenrod>or <cyan>htexport tab <goldenrod>or <cyan>htexport full")
      return
    end
    tt_fname = "All"
    count = 0
    cecho("\n<gold>-- <white>Terminal Tracker <gold>-- <cyan>"..tt_fname.." <white>Terminals (Note Format)<gold>"..
          string.rep("-", 99-48-tt_fname:len()))
    echo("\n")
    
    if arg == "note" then
      -- tabbed with color tags for pasting into a SM note
      cecho("\n<magenta>%5Lvl%".."\t"..
            "<cyan>%6Room%".."\t"..
            "<gold>%3Area%".."\t"..
            "<green>%2Room Description%")
      for k, v in pairs(hack_tbl) do
        count = count + 1
        cecho("\n<magenta>%5"..hack_tbl[k][1].."%\t"..
              "<cyan>%6"..hack_tbl[k][2].."%\t"..
              "<gold>%3"..hack_tbl[k][3].."%\t"..
              "<green>%2"..hack_tbl[k][5]:cut(35).."%")
      end
    elseif arg == "tab" then
      -- tabbed format
      echo("\nLvl".."\t"..
            "Room".."\t"..
            "Area".."\t"..
            "Room Description")
      for k, v in pairs(hack_tbl) do
        count = count + 1
        echo("\n"..hack_tbl[k][1].."\t"..
              hack_tbl[k][2].."\t"..
              hack_tbl[k][3].."\t"..
              hack_tbl[k][5])
      end
    elseif arg == "full" then
      -- full tabbed format
      echo("\nLvl".."\t"..
            "Room".."\t"..
            "Area".."\t"..
            "Room Description".."\t"..
            "Notes")
      for k, v in pairs(hack_tbl) do
        count = count + 1
        echo("\n"..hack_tbl[k][1].."\t"..
              hack_tbl[k][2].."\t"..
              hack_tbl[k][3].."\t"..
              hack_tbl[k][5].."\t"..
              hack_tbl[k][6])
      end
    end
    echo("\n")
    cecho("\n<gold>"..string.rep("-", 99).."\n")
    cecho(" <cyan>"..count.." <white>Total terminals")
    cecho("\n<gold>"..string.rep("-", 99).."\n")
  end
  
  