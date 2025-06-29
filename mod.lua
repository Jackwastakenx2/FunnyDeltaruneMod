function Mod:init()
    print("Loaded "..self.info.name.."!")
    Recruitsbeforemod = 19
    PrevChapter = 4
    DeltaruneLoader.load({chapter = 4,completed=true})
end