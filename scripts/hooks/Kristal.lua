local kristal, super = Utils.hookScript(Kristal)
    --hooking into the loadscript to load DELTARUNE files if we want completion data :33
    --this is distinctly a *bad* way to do it but idrc tbh
    function kristal.loadData(file,path)
        local matched = file:match("completion_(%d)")
        if matched then
            local DeltFile = DeltaruneLoader.getCompletion(4,matched)
            local KrisFile = {}
            local Crossovers = {"room_name","money","name"}
            local Valuetoflag = {"eggs","shadow_crystals","vessel_name"}
            if DeltFile then
                for i,v in ipairs(Crossovers) do
                    KrisFile[v]=DeltFile[v]
                end
                KrisFile.room_name = "Kris's Room?"
                KrisFile.room_name = KrisFile.room_name.." [CHAPTER 4 END]"
                KrisFile.flags = {}
                for i,v in ipairs(Valuetoflag) do
                    KrisFile.flags[v] = DeltFile[v]
                end
                
                local Krinventory = {
                    storage_enabled = true,
                    storages = {
                        key_items = {
                            items = {
                                ["2"] = {
                                    id = "shadowcrystal",
                                    flags = { }
                                },
                                ["1"] = {
                                    id = "cell_phone",
                                    flags = { }
                                }
                            },
                        max = 12
                        },
                        storage = {
                            items = { },
                            max = 24
                        },
                        armors = {
                            items = { },
                            max = 48
                        },
                        items = {
                            items = {
                                ["4"] = {
                                id = "darkburger",
                                flags = { }
                                },
                                ["1"] = {
                                id = "darkburger",
                                flags = { }
                                },
                                ["2"] = {
                                id = "darkburger",
                                flags = { }
                                },
                                ["3"] = {
                                id = "darkburger",
                                flags = { }
                                }
                            },
                            max = 12
                        },
                        weapons = {
                            items = { },
                            max = 48
                        }
                    }
                }
                if DeltFile.inventory then
                    for a,j in pairs(DeltFile.inventory) do
                        local b = 0
                        for _,k in pairs(j) do
                            b=b+1
                            Krinventory.storages[a].items[tostring(b)] = {id=k,flags={}}
                        end
                    end
                end
                local pdata = {}
                if DeltFile.equipment then
                    for i,v in pairs(DeltFile.equipment) do
                        pdata[i] = {
                            equipped={
                                weapon={
                                    flags={},
                                    id=v.weapon
                                },
                                armor={}
                            }
                        }
                        for j,k in ipairs(v.armor) do
                            pdata[i].equipped.armor[j] = {
                                flags={},
                                id=k
                            }
                        end

                    end
                end
                KrisFile.party_data=pdata
                KrisFile.inventory = Krinventory
            end
            KrisFile.room_id = "room1"
            return KrisFile
        else
            return super.loadData(file,path)
        end
    end
return kristal