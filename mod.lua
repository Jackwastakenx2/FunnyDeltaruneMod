function Mod:init()
    print("Loaded "..self.info.name.."!")
    Recruitsbeforemod = 19
    PrevChapter = 2
    DeltaruneLoader.load({chapter = 2,completed=true})
end