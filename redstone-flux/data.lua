-- data.lua

-- add infusion recipes
function addInfusionRecipe(oreName,oreID,mjValue,totalMJ,tech)
    local totalMJ = totalMJ or 200
    local tech = tech or "rflux-infusion"
    table.insert(data.raw.technology[tech].effects, {type = "unlock-recipe", recipe = "rflux-"..oreID.."-infusion"})
    return {
        type = "recipe",
        name = "rflux-"..oreID.."-infusion",
        ingredients = 
        {
            {type = "item", name = oreID, amount = totalMJ/mjValue},
            {type = "item", name = "rflux-redstone-crystal", amount = 1},
            {type = "fluid", name = "rflux-flux", amount = totalMJ/20},
            {type = "fluid", name = "rflux-energized-flux", amount = 100},
        },
        results = {
            --{type = "fluid", name = "rflux-flux", amount = 10},
            {type = "fluid", name = "rflux-energized-flux",amount = 100 + totalMJ/20},
            {type = "item", name = "rflux-redstone-crystal", amount = 1, probability = 0.995},
        },
        main_product = "rflux-energized-flux",
        energy_required = 4,
        category = "chemistry",
        crafting_machine_tint = {
            primary = {r = 1, g = 0, b = 0, a = 0.5},
            secondary = {r = 1, g = 0, b = 0, a = 0.5},
            tertiary = {r = 1, g = 0, b = 0, a = 0.5},
            quaternary = {r = 1, g = 0, b = 0, a = 0.5},
        },
        enabled = false,
        order = "m[rflux]-[infusion]-e"..oreID,
        localized_name = oreName.." Flux Infusion",
    }
end

data:extend({
    {
        name = "flux",
        type = "fuel-category",
    },
    {
        name = "int-flux",
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
require("prototypes.entity.redstone-survivalist-generator")
require("prototypes.entity.redstone-centrifuge")
require("prototypes.entity.redstone-turbine")
require("prototypes.entity.flux-generator")
require("prototypes.entity.flux-hightemp-generator")
require("prototypes.entity.heated-flux-generator")

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
    addInfusionRecipe("Redstone","rflux-redstone",25,200,"rflux-flux-processing"),
    addInfusionRecipe("Redstone Dust","rflux-redstone-dust",15,200,"rflux-flux-processing"),
    addInfusionRecipe("Stone","stone",0.5),
    addInfusionRecipe("Uranium Ore","uranium-ore",400,400),
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
    se_core_fragment_resources["rflux-redstone"] = { multiplier = 0.5, omni_multiplier = 0.1}

   
end
if mods["Krastorio2"] then
    data.raw.recipe["rflux-redstone-dust-crush"].category = "crushing"
    data:extend({
        addInfusionRecipe("Imersite","raw-imersite",15),
        addInfusionRecipe("Rare Metals","raw-rare-metals",1),
        addInfusionRecipe("Biomass","biomass",2),
    })
    data.raw.technology["rflux-redstone-processing"].prerequisites = {"logistic-science-pack","kr-crusher"}
end