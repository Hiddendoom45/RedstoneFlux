data:extend({
    {
        type = "fluid",
        name = "rflux-flux",
        base_color = {r = 0.45, b = 0, g = 0},
        flow_color = {r = 0.45, b = 0, g = 0},
        default_temperature = 25,
        max_temperature = 1000,
        heat_capacity = "220kJ",
        fuel_value = "10MJ",
        icon = "__redstone-flux__/graphics/icons/flux.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "redstone-flux",
        order = "m[rflux]-[flux]-b",
    },
    {
        type = "recipe",
        name = "rflux-flux-infusion",
        ingredients = 
        {
            {type = "fluid", name = "water", amount = 100},
            {name = "rflux-redstone-dust", amount = 10}
        },
        results = {{type = "fluid", name = "rflux-flux", amount = 100}},
        energy_required = 30,
        category = "chemistry",
        subgroup = "redstone-flux",
        order = "m[rflux]-[flux]-a",
        crafting_machine_tint = {
            primary = {r = 0.45, g = 0, b = 0, a = 0.5},
            secondary = {r = 0.45, g = 0, b = 0, a = 0.5},
            tertiary = {r = 0.45, g = 0, b = 0, a = 0.5},
            quaternary = {r = 0.45, g = 0, b = 0, a = 0.5},
        },
        enabled = false,
    },
})