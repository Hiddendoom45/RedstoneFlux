data:extend({
    {
        type = "fluid",
        name = "rflux-energized-flux",
        base_color = {r = 0.45, b = 0, g = 0},
        flow_color = {r = 0.45, b = 0, g = 0},
        default_temperature = 100,
        max_temperature = 1000,
        heat_capacity = "1MJ",
        fuel_value = "110MJ",
        icon = "__redstone-flux__/graphics/icons/energized-flux.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "redstone-flux",
        order = "m[rflux]-[flux]-b",
    },
    {
        type = "recipe",
        name = "rflux-flux-energization",
        ingredients = 
        {
            {type = "fluid", name = "rflux-flux", amount = 100},
            {name = "rflux-redstone-crystal", amount = 2}
        },
        results = {{type = "fluid", name = "rflux-energized-flux", amount = 100}},
        energy_required = 30,
        category = "chemistry",
        subgroup = "redstone-flux",
        order = "m[rflux]-[flux]-b",
        crafting_machine_tint = {
            primary = {r = 1, g = 0, b = 0, a = 0.5},
            secondary = {r = 1, g = 0, b = 0, a = 0.5},
            tertiary = {r = 1, g = 0, b = 0, a = 0.5},
            quaternary = {r = 1, g = 0, b = 0, a = 0.5},
        },
        enabled = false,
    },
})