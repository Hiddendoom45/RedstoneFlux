data:extend({
    {
        type = "technology",
        name = "rflux-redstone-processing",
        icon = "__redstone-flux__/graphics/technology/redstone-processing.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rflux-redstone-dust-crush",
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-burner-generator",
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-survivalist-generator",
            },
        },
        unit =
        {
          count = 100,
          ingredients =
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
          },
          time = 30
        },
        prerequisites = {"logistic-science-pack"},
        order = "c-b",
    },
    {
        type = "technology",
        name = "rflux-redstone-electronics",
        icon = "__redstone-flux__/graphics/icons/redstone-circuit.png",
        icon_size = 64,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rflux-redstone-circuit",
            },
        },
        unit =
        {
            count = 100,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack",1},
            },
            time = 30
        },
        prerequisites = {"rflux-redstone-processing","chemical-science-pack"},
        order = "c-b"
    },
    {
        type = "technology",
        name = "rflux-redstone-crystalization",
        icon = "__redstone-flux__/graphics/icons/redstone-crystal.png",
        icon_size = 64,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rflux-redstone-crystal-fuge",
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-centrifuge",
            }
        },
        unit =
        {
            count = 250,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack",1},
            },
            time = 45
        },
        prerequisites = {"rflux-redstone-electronics"},
        order = "c-b"
    },
    {
        type = "technology",
        name = "rflux-flux-processing",
        icon = "__redstone-flux__/graphics/icons/flux.png",
        icon_size = 64,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rflux-flux-infusion"
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-flux-energization"
            }
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack",1},
            },
            time = 30
        },
        prerequisites = {"rflux-redstone-crystalization"},
        order = "c-b"
    },
    {
        type = "technology",
        name = "rflux-adv-flux-energy",
        icon = "__redstone-flux__/graphics/icons/redstone-energy-cell.png",
        icon_size = 64,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rflux-energy-cell-create"
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-energy-cell-charge",
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-depleted-energy-cell-create",
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-flux-generator",
            },
            {
                type = "unlock-recipe",
                recipe = "rflux-hightemp-generator",
            }
        },
        unit =
        {
            count = 500,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack",1},
            },
            time = 60
        },
        prerequisites = {"rflux-flux-processing"},
        order = "c-b"
    },
    {
        type = "technology",
        name = "rflux-infusion",
        icon = "__redstone-flux__/graphics/icons/energized-flux.png",
        icon_size = 64,
        effects = {
        },
        unit =
        {
            count = 2000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        },
        prerequisites = {"rflux-flux-processing","production-science-pack"},
        order = "c-b"
    },
    {
        type = "technology",
        name = "rflux-heated-redstone",
        icon = "__redstone-flux__/graphics/technology/heated-redstone.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "rflux-heated-flux-generator",
            },
        },
        unit =
        {
            count = 5000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        },
        prerequisites = {"rflux-adv-flux-energy","production-science-pack"},
        order = "c-b"
    }

})