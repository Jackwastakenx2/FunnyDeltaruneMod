local RoomName, super = Class(Map)

function RoomName:onEnter()
  if Game:getFlag("story")==2 then
    Game.world.music:pause()
    Game.world:startCutscene("intro.yard")
  end
end

return RoomName