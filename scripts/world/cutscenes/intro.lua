return {
    ---@param cutscene WorldCutscene
    intro = function(cutscene,event)
        cutscene:wait(cutscene:fadeOut(1))
        cutscene:mapTransition("hometown/torielhouse/kris_room","introsleepy")
        cutscene:wait(3)
        local kris = cutscene:getCharacter("kris_lw")
        cutscene:wait(function() 
                Assets.playSound("knock",2)
                return true
        end)
        cutscene:wait(2)
        cutscene:wait(cutscene:fadeIn(1))
        cutscene:wait(cutscene:walkTo(kris,"exit_bed"))
        Game:setFlag("story",1)
        cutscene:text("* (Someone is at the front door.)\n[wait:5]* (...You should probably go answer it.)")
    end,
    ---@param cutscene WorldCutscene
    downstairs = function (cutscene,event)
        if Game:getFlag("story",0) == 1 then
            Game:setFlag("story",2)
            
            cutscene:wait(function() 
                Assets.playSound("knock",2)
                return true
            end)
            cutscene:text("* Kris? Kris??\n* You Awake??","nervous","susie_lw")
        end
    end,
    ---@param cutscene WorldCutscene
    yard = function (cutscene,event)
        if Game:getFlag("story",0)==2 then
            Game:setFlag("story",3)
            local susie = cutscene:getCharacter("susie_lw")
            local kris = cutscene:getCharacter("kris_lw")
            cutscene:setSpeaker(susie)
            local _,waitfor = cutscene:alert(susie)
            cutscene:wait(waitfor)
            cutscene:text("* Hey, Sleepyhead.","smirk")
            cutscene:text("* Look, I know it's early but...","nervous")
            cutscene:text("* Well...","nervous")
            cutscene:text("* Let's Just head to the apartments, I'll show you there.","sus_nervous")
            cutscene:wait(function() return not waiting end)

            Game:addPartyMember("susie")
            --cutscene:wait(cutscene:walkTo(kris,"intro_kriswalk"))
            susie:convertToFollower()
            --cutscene:wait(cutscene:attachFollowers(2))
            cutscene:interpolateFollowers()
        end
    end,
    ---@param cutscene WorldCutscene
    doors_generic = function (cutscene,event)
        cutscene:text("* (The door is locked.)")
        cutscene:setSpeaker("susie_lw")
        cutscene:text("* (C'mon Kris, We don't have all day!!!)","teeth_b")
    end,
    ---@param cutscene WorldCutscene
    testing = function (cutscene, event)
        
        cutscene:text("* Do you want to go to the Intro?")
        if cutscene:choicer({"Yes","No"}) == 1 then
            cutscene:text("* Off we go!")
            Game:setFlag("start",0)
            
            cutscene:gotoCutscene("intro.intro")
        else
            cutscene:text("* Then. why'd you touch me?")
        end
    end,
    ---@param cutscene WorldCutscene
    susie_wrongway_repremand = function (cutscene, event)
        cutscene:setSpeaker("susie_lw")
        cutscene:text("* (WRONG WAY, DUMBASS!)", "teeth_b")
    end,
    ---@param cutscene WorldCutscene
    wrongway_generic = function (cutscene,event)
        cutscene:gotoCutscene("intro.susie_wrongway_repremand")
        cutscene:walkTo("kris_lw","wrongway")
    end,
    ---@param cutscene WorldCutscene
    apartments = function (cutscene)
        cutscene:detachCamera()
        cutscene:detachFollowers()
        local kris = cutscene:getCharacter("kris_lw")
        local susie = cutscene:getCharacter("susie_lw")
        cutscene:walkTo(kris,"kris")
        cutscene:walkTo(susie,"susie")
        cutscene:setSpeaker(susie)
        cutscene:text("* Okay, so.")
        cutscene:text("* The reason I brought you here...")
        cutscene:wait(0.25)
        Assets.playSound("impact")
        cutscene:panTo("windowcam",0.125)
        cutscene:shakeCamera()
        cutscene:text("* IS THAT!",{top=false})
        cutscene:mapTransition("aprthall1")
    end,
    ---@param cutscene WorldCutscene
    door = function (cutscene)
        local kris = cutscene:getCharacter("kris_lw")
        local susie = cutscene:getCharacter("susie_lw")
        cutscene:detachFollowers()
        cutscene:walkTo(kris,"krisdoor",1,"up")
        cutscene:wait(cutscene:walkTo(susie,"susiedoor",1,"up"))
        
        cutscene:setSpeaker(susie)
        cutscene:text("* This... Should be it.", "nervous")
        cutscene:wait(cutscene:walkTo(susie,"susiecheckdoor",1,"up",true))
        Assets.playSound("knock",2)
        cutscene:wait(2)
        cutscene:text("* ...Nothing.")
        cutscene:text("* You wanna do the honours?")
        cutscene:wait(cutscene:walkTo(susie,"susieaside",1,"left"))
        cutscene:wait(cutscene:walkTo(kris,"susiecheckdoor",1,"up",true))
        cutscene:setSpeaker()
        cutscene:wait(1)
        cutscene:text("* You open The Door.")
        Assets.playSound("locker")
        Draw.setColor(0, 0, 0, 1)
        cutscene:wait(cutscene:walkTo(susie,"enterdoorkris",1,"up"))
        Game:setFlag("story",4)
        cutscene:gotoCutscene("intro.enterdarkaprt")
        local kris = cutscene:getCharacter("kris")
        local susie = cutscene:getCharacter("susie")
        cutscene:setSpeaker(susie)
        cutscene:text("* ...It's weird that there's always a good sized platform, right?", "closed_grin")
        cutscene:text("* Let's, uh, just go get our bearings.", "smile")
    end,
    ---@param cutscene WorldCutscene
    enterdarkaprt = function (cutscene)
        local kris = cutscene:getCharacter("kris_lw")
        local susie = cutscene:getCharacter("susie_lw")
        
        cutscene:detachCamera()
        cutscene:wait(0.25)

        kris.visible = false
        susie.visible = false

        local transition = DarkTransition(240, {skiprunback=true})
        transition.draw_doorblack = function ()
        end
        transition.loading_callback = function() 
            Game.world:loadMap("darkseastart/peninsula")
            if Game.world.music then
                Game.world.music:stop()
            end
            for _,party in ipairs(Game.party) do
                local char = Game.world:getCharacter(party.id)
                char.visible = false
            end
        end
        transition.layer = 99999

        Game.world:addChild(transition)

        local waiting = true
        local endData = {}
        transition.end_callback = function(transition, data)
            waiting = false
            endData = data
        end

        cutscene:wait(function() return not waiting end)
        
        --if not Game:hasPartyMember("ralsei") then
        --    Game:addPartyMember("ralsei")
        --end

        for _, character in ipairs(endData) do
            local char = Game.world:getPartyCharacterInParty(character.party)
            local kx, ky = character.sprite_1:localToScreenPos(character.sprite_1.width / 2, 0)
            char:setScreenPos(kx, transition.final_y)
            char.visible = true
            char:setFacing("down")
        end

        cutscene:interpolateFollowers()

        cutscene:attachCamera()
        cutscene:attachFollowers()
    end

}