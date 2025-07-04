local jigsawry, super = Class(Recruit)

function jigsawry:init()
    super.init(self)
    
    -- Display Name
    self.name = "Jigsawry"
    
    -- How many times an enemy needs to be spared to be recruited
    self.recruit_amount = 0
    
    -- Organize the order that recruits show up in the recruit menu
    self.index = 6
    
    -- Selection Display
    self.description = "It cries tears of joy\nthat you are it's boss."
    self.chapter = 1
    self.level = 1
    self.attack = 4
    self.defense = 5
    self.element = "MOUSE:PUZZ"
    self.like = "Fitting In"
    self.dislike = "Susie's Ax"
    
    -- Controls the type of the box gradient
    -- Available options: dark, bright
    self.box_gradient_type = "bright"
    
    -- Dyes the box gradient
    self.box_gradient_color = {0.5 , 0 , 0.5 ,1}
    
    -- Sets the animated sprite in the box
    -- Syntax: Sprite/Animation path, offset_x, offset_y, animation_speed
    self.box_sprite = {"enemies/jigsawry/idle", 0, 12, 4/30}
    
    -- Recruit Status (saved to the save file)
    -- Number: Recruit Progress
    -- Boolean: True = Recruited | False = Lost Forever
    self.recruited = true
    
    -- Whether the recruit will be hidden from the recruit menu (saved to the save file)
    self.hidden = false
end

return jigsawry