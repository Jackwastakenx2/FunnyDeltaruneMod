local ExampleWave, super = Class(Wave)
function ExampleWave:init()
    super.init(self)

end
function ExampleWave:onStart()
    local can = self:spawnBulletTo(Game.battle.arena,"can",-40)
    self.timer:every(0.75/table.maxn(self:getAttackers()),function()
        self:spawnBulletTo(Game.battle.arena,"droplet",can.x,can.y,(can.x-can.last_x)*(math.random()+1)*3)
    end)
end
return ExampleWave