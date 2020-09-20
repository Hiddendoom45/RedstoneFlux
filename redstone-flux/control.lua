--Add new infusion recipes in case new mods add new ores, doesn't unlock automatically
--should have the resulting effect that it's triggered on every save load, perhaps.

local technologies = {"rflux-infusion","rflux-redstone-processing","rflux-adv-flux-energy","rflux-flux-processing"}
local unlockNewRecipes = function(player)
    for _,tech in pairs(technologies) do
        if player.force.technologies[tech].researched then
            -- iterate through recipes
            for _, recipe in pairs(player.force.technologies[tech].effects) do
                -- enable recipe and print message to player
                if not player.force.recipes[recipe.recipe].enabled then
                    player.force.recipes[recipe.recipe].enabled = true
                    player.print("enabled new recipe "..recipe.recipe)
                end
            end
        end
    end
end

script.on_init(function()
    -- find all players
    for _,player in pairs(game.players) do
       unlockNewRecipes(player)
    end
end)

script.on_configuration_changed(function()
    -- find all players
    for _,player in pairs(game.players) do
        unlockNewRecipes(player)
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    local player = game.get_player(event.player_index)
    unlockNewRecipes(player)
end)



-- functions for the compound heated redstone generator
-- May split into its own file if I end up building more compound entities in the future.

function on_gen_built(event)
    local entity
    if event.entity and event.entity.valid then
        entity = event.entity
    end
    if event.created_entity and event.created_entity.valid then
        entity = event.created_entity
    end
    if not entity then return end
    if entity.name == "rflux-heated-flux-generator" then
        local dir = entity.direction
        local tank_position = entity.position
        if dir == defines.direction.north then
            tank_position.y = tank_position.y-0.7
        elseif dir == defines.direction.east then
            tank_position.x = tank_position.x+0.7
        elseif dir == defines.direction.south then
            tank_position.y = tank_position.y+0.7
        elseif dir == defines.direction.west then
            tank_position.x = tank_position.x-0.7
        end
        local turbine = entity.surface.create_entity{
            name = "rflux-heated-eflux-generator",
            position = entity.position,
            direction = entity.direction,
            force = entity.force
        }
        turbine.destructible = false
        local tank = entity.surface.create_entity{
            name = "rflux-heated-generator-storage",
            position = tank_position,
            direction = entity.direction,
            force = entity.force
        }
        tank.destructible = false
    end

end

script.on_event(defines.events.on_built_entity, on_gen_built)
script.on_event(defines.events.on_robot_built_entity, on_gen_built)
script.on_event(defines.events.script_raised_built, on_gen_built)
script.on_event(defines.events.script_raised_revive, on_gen_built)



function on_gen_destroy(event)
    if event.entity and event.entity.valid and event.entity.surface
    and event.entity.name == "rflux-heated-flux-generator" then
        local dir = event.entity.direction
        local tank_position = event.entity.position
        if dir == defines.direction.north then
            tank_position.y = tank_position.y-0.7
        elseif dir == defines.direction.east then
            tank_position.x = tank_position.x+0.7
        elseif dir == defines.direction.south then
            tank_position.y = tank_position.y+0.7
        elseif dir == defines.direction.west then
            tank_position.x = tank_position.x-0.7
        end

        local turbine = event.entity.surface.find_entity("rflux-heated-eflux-generator", event.entity.position)
        if turbine then turbine.destroy() end
        local tank = event.entity.surface.find_entity("rflux-heated-generator-storage", tank_position)
        if tank then tank.destroy() end
    end
end

script.on_event(defines.events.on_entity_died, on_gen_destroy)
script.on_event(defines.events.on_robot_mined_entity, on_gen_destroy)
script.on_event(defines.events.on_player_mined_entity, on_gen_destroy)
script.on_event(defines.events.script_raised_destroy, on_gen_destroy)