data:extend({
    {
        type = "item",
        name = "rflux-redstone-circuit",
        icon = "__redstone-flux__/graphics/icons/redstone-circuit.png",
        icon_size = 64,
        subgroup = "intermediate-product",
        stack_size = 200,
        order = "m[rflux]-[int]-b",

    },
    {
        type = "recipe",
        name = "rflux-redstone-circuit",
        ingredients = {{"rflux-redstone-dust",18},{"advanced-circuit",1}},
        result = "rflux-redstone-circuit",
        energy_required = 8,
        crafting_machine_tint = {primary = {r = 1, g = 0, b = 0, a = 0.5}},
        order = "m[rflux]-[int]-b",
        enabled = false,
    }
})