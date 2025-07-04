return {
  version = "1.11",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 16,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 10,
  nextobjectid = 21,
  properties = {},
  tilesets = {
    {
      name = "darksea",
      firstgid = 1,
      filename = "../../tilesets/darksea.tsx",
      exportfilename = "../../tilesets/darksea.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      id = 9,
      name = "Tile Layer 3",
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
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 13, 13,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 13, 13, 22, 22, 22,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 22, 22, 13, 22, 22, 0,
        13, 13, 13, 13, 13, 13, 13, 13, 13, 22, 22, 13, 13, 22, 22, 0,
        22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 13, 13, 22, 22, 0,
        22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 13, 13, 22, 22, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      id = 8,
      name = "Tile Layer 2",
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
        0, 0, 0, 0, 0, 0, 1, 2, 2, 2, 2, 2, 2, 2, 3, 0,
        0, 0, 0, 0, 0, 0, 9, 10, 10, 10, 10, 10, 10, 10, 11, 0,
        0, 0, 0, 0, 0, 0, 9, 10, 10, 10, 10, 10, 10, 10, 11, 0,
        0, 0, 0, 0, 0, 0, 9, 10, 10, 10, 10, 10, 10, 10, 11, 0,
        0, 0, 0, 0, 0, 0, 5, 10, 10, 11, 17, 18, 19, 5, 7, 0,
        0, 0, 0, 0, 0, 0, 5, 10, 10, 11, 21, 22, 23, 5, 7, 0,
        0, 0, 0, 0, 0, 0, 5, 10, 10, 11, 21, 22, 23, 5, 7, 0,
        0, 0, 0, 0, 0, 0, 5, 10, 10, 11, 21, 22, 23, 5, 6, 2,
        2, 2, 2, 2, 2, 2, 10, 10, 10, 11, 21, 22, 23, 5, 6, 10,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 21, 22, 23, 17, 18, 18,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 21, 22, 23, 21, 22, 22,
        10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 21, 22, 23, 21, 1, 2,
        18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 21, 22, 23, 21, 17, 18,
        22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 21, 22, 23, 21, 21, 22,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 21, 22, 23, 21, 21, 22,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 21, 22, 23, 21, 21, 22
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "collision",
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
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 400,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 240,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 160,
          width = 120,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 520,
          y = 360,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = -40,
          width = 360,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 0,
          width = 40,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
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
      id = 4,
      name = "objects",
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
          id = 1,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = -40,
          y = 320,
          width = 40,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "darkseastart/peninsula",
            ["marker"] = "enterpeninsula"
          }
        },
        {
          id = 17,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 280,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {
            ["map"] = "darkseastart/sliditude",
            ["marker"] = "in"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
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
      id = 6,
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
          id = 2,
          name = "in",
          type = "",
          shape = "point",
          x = 40,
          y = 400,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "out",
          type = "",
          shape = "point",
          x = 600,
          y = 320,
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
      id = 7,
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
