return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 9,
  nextobjectid = 69,
  properties = {
    ["light"] = false,
    ["name"] = "Test Map - Room 1"
  },
  tilesets = {
    {
      name = "castle",
      firstgid = 1,
      filename = "../tilesets/castle.tsx",
      exportfilename = "../tilesets/castle.lua"
    },
    {
      name = "HometownExterior",
      firstgid = 41,
      filename = "../tilesets/HometownExterior.tsx",
      exportfilename = "../tilesets/HometownExterior..lua"
    },
    {
      name = "hometownobjects",
      firstgid = 209,
      filename = "../../../libraries/hometown_library-main/scripts/world/tilesets/hometownobjects.tsx",
      exportfilename = "../../../libraries/hometown_library-main/scripts/world/tilesets/hometownobjects.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 1,
      name = "tiles",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        23, 23, 21, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23,
        23, 23, 21, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23,
        23, 23, 21, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 13, 23, 23,
        17, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8,
        10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12,
        10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12,
        10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12,
        10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12,
        14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 11, 11, 11, 11, 12,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 44, 11, 12,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 54, 11, 12,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 44, 11, 12
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 2,
      name = "decal",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 214, 0, 0, 0, 0, 0, 0, 0, 41, 42, 43, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 54, 0, 54, 64,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 54, 0, 54, 61,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 54, 0, 54, 61
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "collision",
      class = "",
      visible = true,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 120,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 360,
          width = 440,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 80,
          width = 640,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 120,
          width = 40,
          height = 360,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["cutscene"] = "testing.claws"
      },
      objects = {
        {
          id = 43,
          name = "savepoint",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["marker"] = "save",
            ["text1"] = "* (In this simple testing room, Nothing is expected of you)",
            ["text2"] = "* (You are filled with the power of amateurism)"
          }
        },
        {
          id = 46,
          name = "enemy",
          type = "",
          shape = "rectangle",
          x = 380,
          y = 140,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "dummy",
            ["encounter"] = "dummy"
          }
        },
        {
          id = 51,
          name = "warpdoor",
          type = "",
          shape = "point",
          x = 260,
          y = 130,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["map1"] = "room1",
            ["map2"] = "hometown/school/school_door",
            ["marker1"] = "",
            ["marker2"] = "door",
            ["name1"] = "Testing",
            ["name2"] = "Hometown"
          }
        },
        {
          id = 58,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 440,
          width = 200,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "rowsofroads",
            ["marker"] = "roads_enter"
          }
        },
        {
          id = 59,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 80,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "testing.claws"
          }
        },
        {
          id = 61,
          name = "climbentry",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 80,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["area"] = { id = 62 }
          }
        },
        {
          id = 62,
          name = "climbarea",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 0,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "text",
          x = -65.5,
          y = 619.5,
          width = 83,
          height = 19,
          rotation = 0,
          visible = true,
          text = "Hello World",
          wrap = true,
          properties = {}
        },
        {
          id = 64,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 160,
          y = 320,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "intro.testing",
            ["solid"] = true
          }
        },
        {
          id = 66,
          name = "npc",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "growlie",
            ["cond"] = "not (Game:hasPartyMember(\"growlie\"))"
          }
        },
        {
          id = 67,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "testing.growliechange"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 20,
          name = "spawn",
          type = "",
          shape = "point",
          x = 400,
          y = 240,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 60,
          name = "save",
          type = "",
          shape = "point",
          x = 540,
          y = 350,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "door",
          type = "",
          shape = "point",
          x = 260,
          y = 170,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 68,
          name = "growliehere",
          type = "",
          shape = "point",
          x = 20,
          y = 140,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "paths",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "controllers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "battleareas",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    }
  }
}
