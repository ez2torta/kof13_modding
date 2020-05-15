repeat
  module("GameConfig", package.seeall)
  is_location_test = false
  is_skip_demo = false
  is_skip_AI_battle = false
  is_skip_intrude_battle = false
  fontmap_default = {
    ["$matis"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$matis_EB"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$rodan_B"] = {
      Font = "FOT-\227\131\173\227\131\128\227\131\179 Pro B"
    },
    ["$rodan_EB"] = {
      Font = "FOT-\227\131\173\227\131\128\227\131\179 Pro B"
    },
    ["$CreditFont"] = {
      Font = "FOT-\227\131\173\227\131\128\227\131\179 Pro B"
    },
    ["$DebugFont"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$SystemMenuFont"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$font_matis"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$font_rodan"] = {
      Font = "FOT-\227\131\173\227\131\128\227\131\179 Pro B"
    },
    ["$symbol_font"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$staff_name_matis"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$staff_name_rodan_EB"] = {
      Font = "FOT-\227\131\173\227\131\128\227\131\179 Pro B"
    },
    ["$font_message"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    },
    ["$font_message_b"] = {
      Font = "FOT-\227\131\173\227\131\128\227\131\179 Pro B"
    },
    ["$font_movie"] = {
      Font = "FOT-\227\131\158\227\131\134\227\130\163\227\130\185 Pro EB"
    }
  }
  fontmap_zh = {
    ["$font_message"] = {
      Font = "FZShuSong-Z01"
    },
    ["$font_message_b"] = {
      Font = "FZShuSong-Z01"
    },
    ["$font_movie"] = {
      Font = "FZShuSong-Z01"
    }
  }
  setmetatable(fontmap_zh, {__index = fontmap_default})
  fontmap_ko = {
    ["$font_message"] = {
      Font = "FOTK-YDCharmingMincho M"
    },
    ["$font_message_b"] = {
      Font = "FOTK-YDCharmingMincho M"
    },
    ["$font_movie"] = {
      Font = "FOTK-YDCharmingMincho M"
    }
  }
  setmetatable(fontmap_ko, {__index = fontmap_default})
  fontmap_table = {
    zh_cn = fontmap_zh,
    zh_tw = fontmap_zh,
    ko = fontmap_ko
  }
  setmetatable(fontmap_table, {
    __index = function()
      return fontmap_default
    end
  })
  function FontMap(lang_code)
    GFX.ClearFontMap()
    local t = fontmap_table[lang_code]
    for k, v in pairs(fontmap_default) do
      if type(t[k]) == "table" then
        GFX.MapFont(k, t[k].Font)
      elseif type(v) == "table" then
        GFX.MapFont(k, v.Font)
      end
    end
  end
  function IsSaiki(aid)
    return aid == 25
  end
  function IsDAsh(aid)
    return aid == 26
  end
  function IsBoss(aid)
    return IsSaiki(aid) or IsDAsh(aid)
  end
  ArcadeAvatarIDSet = is_location_test or {
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    27,
    28,
    29,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    25,
    26
  }
  do break end -- pseudo-goto
  ArcadeAvatarIDSet = {
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    27,
    28,
    29
  }
until true
setmetatable(ArcadeAvatarIDSet, {
  __newindex = function(_, key)
    error("don't append ArcadeAvatarIDSet" .. key, 2)
  end
})
TestModeAvatarIDSet = {
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  25,
  26,
  27,
  28,
  29,
  30,
  31,
  32,
  33,
  34,
  35,
  36,
  37
}
setmetatable(TestModeAvatarIDSet, {
  __newindex = function(_, key)
    error("don't append TestModeAvatarIDSet" .. key, 2)
  end
})
MinAvatarIDSet = {
  0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  27,
  28,
  29,
  32,
  33,
  34
}
setmetatable(MinAvatarIDSet, {
  __newindex = function(_, key)
    error("don't append MinAvatarIDSet" .. key, 2)
  end
})
if is_location_test then
  TeamMemberTable = {
    {
      0,
      1,
      2
    },
    {
      3,
      4,
      5
    },
    {
      6,
      7,
      8
    },
    {
      9,
      10,
      11
    },
    {
      12,
      13,
      14
    },
    {
      15,
      16,
      17
    },
    {
      18,
      19,
      20
    },
    {
      21,
      22,
      23
    },
    {
      27,
      28,
      29
    }
  }
else
  TeamMemberTable = {
    {
      0,
      1,
      2
    },
    {
      3,
      4,
      5
    },
    {
      6,
      7,
      8
    },
    {
      9,
      10,
      11
    },
    {
      12,
      13,
      14
    },
    {
      15,
      16,
      17
    },
    {
      18,
      19,
      20
    },
    {
      21,
      22,
      23
    },
    {
      27,
      28,
      29
    },
    {
      32,
      33,
      34
    }
  }
end
setmetatable(TeamMemberTable, {
  __newindex = function(_, key)
    error("don't append TeamMemberTable" .. key, 2)
  end
})
function IsMatchedTeam(lhs, rhs)
  table.sort(lhs)
  table.sort(rhs)
  for k, v in ipairs(lhs) do
    if v ~= rhs[k] then
      return false
    end
  end
  return true
end
function IndexOfTeam(member_set)
  if member_set[1] == 24 then
    return 10
  end
  for idx, tbl in ipairs(TeamMemberTable) do
    if IsMatchedTeam(member_set, tbl) then
      return idx - 1
    end
  end
  return 11
end
CharacterSelectTable = {
  4,
  4,
  5,
  9,
  10,
  11,
  -1,
  -1,
  31,
  31,
  24,
  24,
  37,
  37,
  -2,
  -2,
  18,
  19,
  20,
  6,
  7,
  8,
  0,
  1,
  2,
  15,
  16,
  17,
  27,
  27,
  28,
  28,
  29,
  32,
  33,
  33,
  34,
  34,
  12,
  13,
  14,
  21,
  22,
  23
}
setmetatable(CharacterSelectTable, {
  __newindex = function(_, key)
    error("don't append CharacterSelectTable" .. key, 2)
  end
})
CHARSEL_TABLE_COL_SIZE = math.floor(#CharacterSelectTable / 2)
CHARSEL_TABLE_ROW_SIZE = 2
CHARSEL_TABLE_EDIT_RANDOM = -1
CHARSEL_TABLE_TEAM_RANDOM = -2
CHARSEL_TABLE_UNUSED = -3
CharacterSelectMapTableReverseSide = {
  [3] = 35,
  [20] = 36,
  [6] = 30,
  [37] = 25,
  [24] = 26
}
setmetatable(CharacterSelectMapTableReverseSide, {
  __newindex = function(_, key)
    error("don't append CharacterSelectMapTableReverseSide" .. key, 2)
  end,
  __index = function()
    return -1
  end
})
AlternativeColorCharacter = {
  [0] = true,
  [3] = true,
  [10] = true,
  [11] = true,
  [17] = true,
  [20] = true,
  [21] = true,
  [29] = true,
  [32] = true
}
setmetatable(AlternativeColorCharacter, {
  __newindex = function(_, key)
    error("don't append AlternativeColorCharacter" .. key, 2)
  end
})
StartPosCharaID = {3, 6}
setmetatable(StartPosCharaID, {
  __newindex = function(_, key)
    error("don't append StartPosCharaID" .. key, 2)
  end
})
ColorSet = {
  4,
  3,
  2,
  1,
  0,
  9,
  8,
  7,
  6,
  5,
  10,
  11,
  12,
  13,
  14
}
setmetatable(ColorSet, {
  __newindex = function(_, key)
    error("don't append ColorSet" .. key, 2)
  end
})
CharacterVoiceTable = {
  [1] = "select_elisabeth",
  [2] = "select_duolon",
  [3] = "select_shen",
  [4] = "select_kyo",
  [5] = "select_benimaru",
  [6] = "select_daimon",
  [7] = "select_iori",
  [8] = "select_mature",
  [9] = "select_vice",
  [10] = "select_terry",
  [11] = "select_andy",
  [12] = "select_joe",
  [13] = "select_athena",
  [14] = "select_kensou",
  [15] = "select_chin",
  [16] = "select_kim",
  [17] = "select_hwa",
  [18] = "select_raiden",
  [19] = "select_ryo",
  [20] = "select_robert",
  [21] = "select_takuma",
  [22] = "select_ralf",
  [23] = "select_clark",
  [24] = "select_leona",
  [25] = "select_ash",
  [26] = "select_w_saiki",
  [27] = "select_w_saiki",
  [28] = "select_mai",
  [29] = "select_king",
  [30] = "select_yuri",
  [31] = "select_98iori",
  [32] = "select_billy",
  [33] = "select_K",
  [34] = "select_kula",
  [35] = "select_maxima",
  [36] = "select_96kyo",
  [37] = "select_Mr_karate",
  [38] = "select_w_saiki"
}
setmetatable(CharacterVoiceTable, {
  __newindex = function(_, key)
    error("don't append CharacterVoiceTable" .. key, 2)
  end
})
EntryWordTable = {
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  "0",
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "[",
  "\\",
  "]",
  "?",
  "!",
  "#",
  "$",
  "%",
  "&",
  "'",
  "(",
  ")",
  "+",
  "-",
  ".",
  " ",
  "/",
  "*",
  ":",
  ";",
  "<",
  "=",
  ">",
  "@",
  "~",
  "BS",
  "ED"
}
setmetatable(EntryWordTable, {
  __newindex = function(_, key)
    error("don't append EntryWordTable" .. key, 2)
  end
})
NgWordTable = {
  "69 ",
  " 69",
  "6 9",
  "ASS",
  "BUM",
  "CUM",
  "FAC",
  "FAG",
  "GAY",
  "JEW",
  "JIZ",
  "JAP",
  "KKK",
  "SEX",
  "WOG",
  "XXX",
  "XX ",
  " XX",
  "X X",
  "",
  " ",
  "  ",
  "   "
}
setmetatable(NgWordTable, {
  __newindex = function(_, key)
    error("don't append NgWordTable" .. key, 2)
  end
})
UniqueEndingIllustTable = {
  {
    name = "KOF\228\184\187\228\186\186\229\133\172",
    team = {
      3,
      32,
      24
    },
    filename = "000"
  },
  {
    name = "KOF\228\184\187\228\186\186\229\133\172",
    team = {
      35,
      32,
      24
    },
    filename = "000"
  },
  {
    name = "\230\150\176\227\131\146\227\131\173\227\130\164\227\131\179",
    team = {
      12,
      29,
      33
    },
    filename = "001"
  },
  {
    name = "\233\133\146",
    team = {
      14,
      16,
      28
    },
    filename = "002"
  },
  {
    name = "\230\186\150\228\184\187\228\186\186\229\133\172",
    team = {
      10,
      19,
      4
    },
    filename = "003"
  },
  {
    name = "\227\129\138\229\167\137\227\129\149\227\129\190",
    team = {
      0,
      27,
      28
    },
    filename = "004"
  },
  {
    name = "\229\183\168\230\188\162",
    team = {
      5,
      17,
      34
    },
    filename = "005"
  },
  {
    name = "2003",
    team = {
      24,
      2,
      1
    },
    filename = "006"
  },
  {
    name = "\227\130\170\227\131\173\227\131\129",
    team = {
      23,
      7,
      8
    },
    filename = "007"
  },
  {
    name = "\227\130\173\227\131\142\227\130\179",
    team = {
      3,
      15,
      13
    },
    filename = "013"
  },
  {
    name = "\227\130\173\227\131\142\227\130\179",
    team = {
      35,
      15,
      13
    },
    filename = "013"
  },
  {
    name = "\230\173\180\228\187\163\228\184\187\228\186\186\229\133\172",
    team = {
      3,
      18,
      9
    },
    filename = "014"
  },
  {
    name = "\230\173\180\228\187\163\228\184\187\228\186\186\229\133\172",
    team = {
      35,
      18,
      9
    },
    filename = "014"
  },
  {
    name = "\227\129\184\227\129\157\229\135\186\227\129\151",
    team = {
      6,
      4,
      23
    },
    filename = "015"
  },
  {
    name = "\227\129\184\227\129\157\229\135\186\227\129\151",
    team = {
      30,
      4,
      23
    },
    filename = "015"
  },
  {
    name = "\227\130\175\227\131\188\227\131\169\228\187\150",
    team = {
      33,
      29,
      24
    },
    filename = "016"
  },
  {
    name = "\233\129\148\231\163\168\232\144\189\227\129\168\227\129\151",
    team = {
      22,
      17,
      5
    },
    filename = "017"
  },
  {
    name = "\233\164\147\231\139\188\230\130\170\229\189\185",
    team = {
      31,
      17,
      16
    },
    filename = "028"
  },
  {
    name = "\231\153\189\233\171\170",
    team = {
      24,
      14,
      32
    },
    filename = "029"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      3,
      6,
      20
    },
    filename = "030"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      3,
      6,
      36
    },
    filename = "030"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      3,
      30,
      20
    },
    filename = "030"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      3,
      30,
      36
    },
    filename = "030"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      35,
      6,
      20
    },
    filename = "030"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      35,
      6,
      36
    },
    filename = "030"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      35,
      30,
      20
    },
    filename = "030"
  },
  {
    name = "\231\184\129\230\151\165",
    team = {
      35,
      30,
      36
    },
    filename = "030"
  }
}
setmetatable(UniqueEndingIllustTable, {
  __newindex = function(_, key)
    error("don't append UniqueEndingIllustTable" .. key, 2)
  end
})
function UniqueEnding(member_set)
  for idx, tbl in ipairs(UniqueEndingIllustTable) do
    if IsMatchedTeam(member_set, tbl.team) then
      return tbl.filename
    end
  end
  return nil
end
UniqueCharaEndingIllustTable = {
  {
    name = "98\229\186\181",
    team = 30,
    filename = "008"
  },
  {
    name = "\227\131\147\227\131\170\227\131\188",
    team = 31,
    filename = "009"
  },
  {
    name = "96\228\186\172",
    team = 35,
    filename = "010"
  },
  {
    name = "Mr\227\130\171\227\131\169\227\131\134",
    team = 36,
    filename = "011"
  },
  {
    name = "\231\153\189\227\130\181\227\130\164\227\130\173",
    team = 37,
    filename = "012"
  }
}
setmetatable(UniqueCharaEndingIllustTable, {
  __newindex = function(_, key)
    error("don't append UniqueCharaEndingIllustTable" .. key, 2)
  end
})
function UniqueCharaEnding(avater_id)
  for idx, tbl in ipairs(UniqueCharaEndingIllustTable) do
    if avater_id == tbl.team then
      return tbl.filename
    end
  end
  return nil
end
CharacterNameTable = {
  [26] = {
    name = "\231\184\129\230\151\165",
    team = {
      35,
      30,
      20
    },
    filename = "030"
  },
  [27] = {
    name = "\231\184\129\230\151\165",
    team = {
      35,
      30,
      36
    },
    filename = "030"
  },
  "ELISABETH",
  "DUO LON",
  "SHEN",
  "KYO",
  "BENIMARU",
  "DAIMON",
  "IORI",
  "MATURE",
  "VICE",
  "TERRY",
  "ANDY",
  "JOE",
  "ATHENA",
  "KENSOU",
  "CHIN",
  "KIM",
  "HWA",
  "RAIDEN",
  "RYO",
  "ROBERT",
  "TAKUMA",
  "RALF",
  "CLARK",
  "LEONA",
  "ASH",
  [28] = "MAI",
  [29] = "KING",
  [30] = "YURI",
  [31] = "IORI",
  [32] = "BILLY",
  [33] = "K\194\180",
  [34] = "KULA",
  [35] = "MAXIMA",
  [36] = "KYO",
  [37] = "Mr.KARATE",
  [38] = "SAIKI"
}
setmetatable(CharacterNameTable, {
  __newindex = function(_, key)
    error("don't append CharacterNameTable" .. key, 2)
  end
})
StoryChapterPanels = {
  "p001_recollect",
  "p002_elisabeth",
  "p003_kdash",
  "p004_botan",
  "p005_shroom",
  "c002_adelheid",
  "c003_heidern",
  "c004_opening",
  "c005_others_01",
  "c005_others_02",
  "c005_others_03",
  "c006_ash",
  "c007_adelheid",
  "c008_agent",
  "middle",
  "c009_saiki",
  "c010_shroom",
  "c011_adelheid",
  "c012_ash",
  "c013_heidern",
  "c014_other",
  "c012_ash_02",
  "c015_heidern",
  "boss_before",
  "Bash_before",
  "Bash_after",
  "c017_edit",
  "c018_adelheid",
  "c019_ash",
  "c020_shion",
  "ed_bad",
  "ed_bad_02"
}
function StoryChapterPanels:NameToID(name)
  for i = 1, #StoryChapterPanels do
    if name == StoryChapterPanels[i] then
      return i - 1
    end
  end
  return -1
end
setmetatable(StoryChapterPanels, {
  __newindex = function(_, key)
    error("don't append StoryChapterPanels" .. key, 2)
  end
})
