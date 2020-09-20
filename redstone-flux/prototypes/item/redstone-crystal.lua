data:extend({
    {
        type = "item",
        name = "rflux-redstone-crystal",
        icon = "__redstone-flux__/graphics/icons/redstone-crystal.png",
        icon_size = 64,
        fuel_value = "1GJ",
        fuel_category = "int-flux",
        subgroup = "intermediate-product",
        stack_size = 200,
        order = "m[rflux]-[int]-a",

    },
    {
        type = "recipe",
        name = "rflux-redstone-crystal-fuge",
        ingredients = {{"rflux-redstone-dust",20}},
        result = "rflux-redstone-crystal",
        energy_required = 300,
        category = "rflux-centrifuging",
        crafting_machine_tint = {primary = {r = 1, g = 0, b = 0, a = 0.5}},
        order = "m[rflux]-[int]-a",
        enabled = false,
    }
})