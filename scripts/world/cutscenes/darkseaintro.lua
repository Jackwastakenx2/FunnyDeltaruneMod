return {
    ---@param cutscene  WorldCutscene
    fight1 = function (cutscene)
        cutscene:text("* insert cap'n Ripley introduction here.")
        cutscene:text("* idk i dont have a sprite for 'em yet...")
        cutscene:startEncounter("chstart")
    end
}