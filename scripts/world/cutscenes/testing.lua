return {
    ---@param cutscene WorldCutscene
    growliechange = function(cutscene)
        local growlie = cutscene:getCharacter("growlie")
        if Game:hasPartyMember("growlie") then
            cutscene:text("* (it's where growlie was standing.)")
            cutscene:text("* (return them?)")
            if cutscene:choicer({"Yes","No"}) == 1 then
                Game:removePartyMember("growlie")
                cutscene:walkTo(growlie,"growliehere",1,"down")
                Game.world:removeFollower("growlie")
            end
        else
            cutscene:setSpeaker("growlie")
            cutscene:text("* you want my help?")
            if cutscene:choicer({"Yes","No"}) == 1 then
                Game:addPartyMember("growlie")
                growlie:convertToFollower()
                cutscene:interpolateFollowers()

            end
        end
        

    end
}