local Cannit, super = Class(Recruit)
function Cannit:init()
    super.init(self)
    self.chapter = "5..?"
    self.name = "Cannit"
    self.defense = 8
    self.attack = 12
    self.description = "An apathetic soda can.\nWould rather sleep with the \nfishes."
    self.like = "Soda"
    self.dislike = "Everything"
    self.index = Recruitsbeforemod+1
    self.element = "ORDER:RUDE"
    self.recruit_amount = 2
end
return Cannit