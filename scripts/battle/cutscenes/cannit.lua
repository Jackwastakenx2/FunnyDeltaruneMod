return {
    ---@param cutscene BattleCutscene
    growlieClean = function (cutscene)
        cutscene:text("* You tell Growlie to help round up the cannit!")
        cutscene:setSpeaker(cutscene:getCharacter("growlie"))
        cutscene:text("* [wait:20]Do I have to?")
        cutscene:text("* [wait:20]Fine.")
        cutscene:wait(cutscene:fadeOut())
        cutscene:wait(1)
        local noncans = {}
        for i,v in pairs(Game.battle.enemies) do
            if v.id == "cannit" then
                v:spare()
            else
                table.insert(noncans,v)
            end
        end
        cutscene:wait(1)
        cutscene:wait(cutscene:fadeIn(0.25))
        cutscene:setSpeaker()
        cutscene:text("* The cannit are no more.")
        ---@ param v EnemyBattler
        for i,v in pairs(noncans) do
            v:addMercy(50)
            v.dialogue_override = "Those guys were a downer, anyways..."
        end

    end
}