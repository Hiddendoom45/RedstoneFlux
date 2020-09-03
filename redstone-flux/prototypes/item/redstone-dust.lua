data:extend({
    {
        type = "item",
        name = "rflux-redstone-dust",
        order = "a[rflux]-redstone-dust",
        icon = "__redstone-flux__/graphics/icons/redstone-dust.png",
        icon_size = 64,
        fuel_value = "15MJ",
        fuel_category = "flux",
        subgroup = "raw-material",
        order = "g[rflux]-[raw]-b",
        stack_size = 200,
    },
    {
        type = "recipe",
        name = "rflux-redstone-dust-crush",
        ingredients = {{"rflux-redstone",1}},
        results = {{"rflux-redstone-dust",2}},
        energy_required = 1,
        order = "g[rflux]-[raw]-b",
        hide_from_hand_crafting = true,
        enabled = false,
    }
})