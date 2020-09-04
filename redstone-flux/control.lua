--Add new infusion recipes in case new mods add new ores, doesn't unlock automatically
--should have the resulting effect that it's triggered on every save load, perhaps.
script.on_init(function()
    -- find all players
    for _,player in pairs(game.players) do
        -- check if infusion researched
        if player.force.technologies["rflux-infusion"].enabled then
            -- iterate through recipes
            for _, recipe in pairs(player.force.technologies["rflux-infusion"].effects) do
                -- enable recipe and print message to player
                if not player.force.recipes[recipe.recipe].enabled then
                    player.force.recipes[recipe.recipe].enabled = true
                    player.print("enabled new infusion recipe "..recipe.recipe)
                end
            end
        end
    end
end)

script.on_configuration_changed(function()
    -- find all players
    for _,player in pairs(game.players) do
        -- check if infusion researched
        if player.force.technologies["rflux-infusion"].enabled then
            -- iterate through recipes
            for _, recipe in pairs(player.force.technologies["rflux-infusion"].effects) do
                -- enable recipe and print message to player
                if not player.force.recipes[recipe.recipe].enabled then
                    player.force.recipes[recipe.recipe].enabled = true
                    player.print("enabled new infusion recipe "..recipe.recipe)
                end
            end
        end
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    local player = game.get_player(event.player_index)
    if player.force.technologies["rflux-infusion"].enabled then
        -- iterate through recipes
        for _, recipe in pairs(player.force.technologies["rflux-infusion"].effects) do
            -- enable recipe and print message to player
            if not recipe.enabled then
                player.force.recipes[recipe.recipe].enabled = true
                player.print("enabled new infusion recipe "..recipe.recipe)
            end
        end
    end
end)