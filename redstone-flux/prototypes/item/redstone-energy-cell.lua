data:extend({
    {
        type = "item",
        name = "rflux-energy-cell",
        order = "a[rflux]-redstone-energy-cell",
        icon = "__redstone-flux__/graphics/icons/redstone-energy-cell.png",
        icon_size = 64, icon_mipmaps = 4,
        fuel_value = "10GJ",
        fuel_category = "adv-flux",
        burnt_result = "rflux-depleted-energy-cell",
        subgroup = "intermediate-product",
        order = "m[rflux]-[int]-b",
        stack_size = 50,
    },
    {
        type = "recipe",
        name = "rflux-energy-cell-create",
        ingredients = {
            {type = "item", name = "iron-plate", amount = 10},
            {type = "fluid", name = "rflux-energized-flux", amount = 100},
        },
        result = "rflux-energy-cell",
        energy_required = 10,
        category = "chemistry",
        order = "m[rflux]-[int]-c",
        crafting_machine_tint = {
            primary = {r = 1, g = 0, b = 0, a = 0.5},
            secondary = {r = 1, g = 0, b = 0, a = 0.5},
            tertiary = {r = 1, g = 0, b = 0, a = 0.5},
            quaternary = {r = 1, g = 0, b = 0, a = 0.5},
        },
        enabled = false,
    },
    {
        type = "recipe",
        name = "rflux-energy-cell-charge",
        ingredients = {
            {type = "item", name = "rflux-depleted-energy-cell", amount = 1},
            {type = "fluid", name = "rflux-energized-flux", amount = 100},
        },
        results = {
            {type = "item", name = "rflux-energy-cell", amount = 1},
            {type = "fluid", name = "rflux-flux", amount = 100},
        },
        main_product = "rflux-energy-cell",
        energy_required = 10,
        category = "chemistry",
        order = "m[rflux]-[int]-b",
        crafting_machine_tint = {
            primary = {r = 1, g = 0, b = 0, a = 0.5},
            secondary = {r = 1, g = 0, b = 0, a = 0.5},
            tertiary = {r = 1, g = 0, b = 0, a = 0.5},
            quaternary = {r = 1, g = 0, b = 0, a = 0.5},
        },
        enabled = false,
    },
    {
        type = "item",
        name = "rflux-depleted-energy-cell",
        order = "a[rflux]-redstone-dust",
        icon = "__redstone-flux__/graphics/icons/depleted-redstone-energy-cell.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "m[rflux]-[int]-d",
        stack_size = 50,
    },
    {
        type = "recipe",
        name = "rflux-depleted-energy-cell-create",
        ingredients = {
            {type = "item", name = "iron-plate", amount = 10},
            {type = "fluid", name = "rflux-flux", amount = 100},
        },
        result = "rflux-depleted-energy-cell",
        energy_required = 10,
        category = "chemistry",
        order = "m[rflux]-[int]-d",
        crafting_machine_tint = {
            primary = {r = 0.45, g = 0, b = 0, a = 0.5},
            secondary = {r = 0.45, g = 0, b = 0, a = 0.5},
            tertiary = {r = 0.45, g = 0, b = 0, a = 0.5},
            quaternary = {r = 0.45, g = 0, b = 0, a = 0.5},
        },
        enabled = false,
    }
})