local SmallBullet, super = Class(Bullet)

function SmallBullet:init(x, y, momentum)
    -- Last argument = sprite path
    super.init(self, x, y, "bullets/soda_drop")
    self.physics.speed_x = momentum
    self.physics.friction = 1
    self.physics.gravity = 2
    self.scale_x = 0.5
    self.scale_y = 0.5
end


return SmallBullet