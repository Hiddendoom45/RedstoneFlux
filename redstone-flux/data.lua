-- data.lua

-- add infusion recipes
function addInfusionRecipe(oreName,oreID,mjValue)
    table.insert(data.raw.technology["rflux-infusion"].effects, {type = "unlock-recipe", recipe = "rflux-"..oreName.."-infusion"})
    return {
        type = "recipe",
        name = "rflux-"..oreName.."-infusion",
        ingredients = 
        {
            {type = "item", name = oreID, amount = 200/mjValue},
            {type = "fluid", name = "rflux-flux", amount = 10},
            {type = "fluid", name = "rflux-energized-flux", amount = 100},
        },
        results = {
            --{type = "fluid", name = "rflux-flux", amount = 10},
            {type = "fluid", name = "rflux-energized-flux",amount = 110},
        },
        energy_required = 30,
        category = "chemistry",
        crafting_machine_tint = {
            primary = {r = 1, g = 0, b = 0, a = 0.5},
            secondary = {r = 1, g = 0, b = 0, a = 0.5},
            tertiary = {r = 1, g = 0, b = 0, a = 0.5},
            quaternary = {r = 1, g = 0, b = 0, a = 0.5},
        },
        enabled = false,
    }
end

data:extend({
    {
        name = "flux",
        type = "fuel-category",
    },
    {
        name = "adv-flux",
        type = "fuel-category",
    },
    {
        name = "redstone-flux",
        type = "item-subgroup",
        group = "intermediate-products",
        order = "g[rflux]",
    }

})

require("prototypes.entity.redstone")
require("prototypes.entity.redstone-burner-generator")
require("prototypes.entity.redstone-centrifuge")
require("prototypes.entity.redstone-turbine")
require("prototypes.entity.flux-generator")

require("prototypes.item.redstone-dust")
require("prototypes.item.redstone-crystal")
require("prototypes.item.redstone-flux")
require("prototypes.item.redstone-energized-flux")
require("prototypes.item.redstone-energy-cell")
require("prototypes.item.redstone-circuit")

require("prototypes.technology")

data:extend({
    
    addInfusionRecipe("Iron Ore","iron-ore",1),
    addInfusionRecipe("Copper Ore","copper-ore",1),
    addInfusionRecipe("Coal","coal",4),
    addInfusionRecipe("Redstone","rflux-redstone",25),
    addInfusionRecipe("Redstone Dust","rflux-redstone-dust",15),
    addInfusionRecipe("Stone","stone",0.5),
    addInfusionRecipe("Uranium Ore","uranium-ore",200),
})

