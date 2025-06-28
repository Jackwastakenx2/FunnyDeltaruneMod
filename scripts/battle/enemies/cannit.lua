local Cannit, super = Class(EnemyBattler)

function Cannit:init()
    super.init(self)

    self.name = "Cannit"
    self:setActor("cannit")

    self.max_health = 400
    self.health = 400
    self.attack = 5
    self.defense = 0
    self.money = 20
    self.spare_points = 20
    self.check = "AT 6 DF 0\n* Soda? Pop? \n* Who cares, really?"
    self.text = {
        "* Cannit fizzes passively.",
        "* Cannit could care less about this."
    }
    self.low_health_text = "* Cannit's gone flat."
    self:registerAct("Clean")
    self:registerAct("CleanX", "", {"growlie"})
    self.waves = {
        "bottles",
        "soda_drops"
    }
    self.dialogue = {
        "can we finish up? i'm bored.",
        "we done yet?",
        "i don't have time for this...",
        ":|"
    }
end
function Cannit:onAct(char,act)
    if act=="CleanX" then
        Game.battle:startActCutscene("cannit.growlieClean")
        return --"test"
    elseif act=="Clean" then
        self:addMercy(50)
        self.dialogue_override = "thanks, i guess."
        return {"You polished the Cannit!"}
    elseif act=="Standard" then
        local charid = char.chara.id
        if charid == "growlie" then
            self:addMercy(30)
            self.dialogue_override = "i'm used to it..."
            return "* Growlie ignored Cannit!"
        end
    end
    return super.onAct(self,char,act)
end
return Cannit