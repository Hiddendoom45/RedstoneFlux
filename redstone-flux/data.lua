-- data.lua

-- add infusion recipes
function addInfusionRecipe(oreName,oreID,mjValue)
    table.insert(data.raw.technology["rflux-infusion"].effects, {type = "unlock-recipe", recipe = "rflux-"..oreID.."-infusion"})
    return {
        type = "recipe",
        name = "rflux-"..oreID.."-infusion",
        ingredients = 
        {
            {type = "item", name = oreID, amount = 200/mjValue},
            {type = "item", name = "rflux-redstone-crystal", amount = 1},
            {type = "fluid", name = "rflux-flux", amount = 10},
            {type = "fluid", name = "rflux-energized-flux", amount = 100},
        },
        results = {
            --{type = "fluid", name = "rflux-flux", amount = 10},
            {type = "fluid", name = "rflux-energized-flux",amount = 110},
            {type = "item", name = "rflux-redstone-crystal", amount = 1, probability = 0.99},
        },
        main_product = "rflux-energized-flux",
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


if mods["space-exploration"] then
    data.raw.recipe["rflux-redstone-dust-crush"].category = "pulverising"
    data:extend({
        addInfusionRecipe("Cryonite","se-cryonite",1),
        addInfusionRecipe("Vulcanite","se-vulcanite",5),
        addInfusionRecipe("Iridium","se-iridium-ore",1),
        addInfusionRecipe("Beryllium","se-beryllium-ore",1),
        addInfusionRecipe("Holmium","se-holmium-ore",1),
        addInfusionRecipe("Naquium","se-naquium-ore",1),
        addInfusionRecipe("Vitamelange","se-vitamelange",1),
    })
    data.raw.technology["rflux-redstone-processing"].prerequisites = {"se-pulveriser"}
end
if mods["Krastorio2"] then
    data.raw.recipe["rflux-redstone-dust-crush"].category = "crushing"
    data:extend({
        addInfusionRecipe("Imersite","raw-imersite",15),
        addInfusionRecipe("Rare Metals","raw-rare-metals",1),
    })
    data.raw.technology["rflux-redstone-processing"].prerequisites = {"logistic-science-pack","kr-crusher"}
end