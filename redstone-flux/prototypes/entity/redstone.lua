local resource_autoplace = require('resource-autoplace')
data:extend({
    {
        type = "autoplace-control",
        name = "rflux-redstone",
        richness = true,
        category = "resource",
        order = "b-h"
    },
    {
        type = "noise-layer",
        name = "rflux-redstone"
    },
    {
        type = "resource",
        name = "rflux-redstone",
        icon = "__redstone-flux__/graphics/entity/redstone/redstone.png",
        icon_size = 64,
        flags = {"placeable-neutral"},
        order="n[rflux]-[raw]-a",
        map_color = {r=0.95, g=0.0, b=0.0},
        minable =
        {
          hardness = 1,
          mining_particle = "stone-particle",
          mining_time = 1.5,
          result = "rflux-redstone"
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings
		{
			name = "rflux-redstone",
			order = "g",
			base_density = 1.7,
			base_spots_per_km2 = 2.5,
			has_starting_area_placement = false,
			random_spot_size_minimum = 1,
            random_spot_size_maximum = 4,
            additional_richness = 250,
			regular_blob_amplitude_multiplier = 1,
			regular_rq_factor_multiplier = 1,
			candidate_spot_count = 22
		},
        
        stage_counts = {10000, 5000, 2500, 1000, 500, 250, 100, 10},
        stages =
        {
            sheet =
            {
                filename = "__redstone-flux__/graphics/entity/redstone/redstone.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                hr_version = {
                    filename = "__redstone-flux__/graphics/entity/redstone/hr-redstone.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5,
                }
            }
        },
        stages_effect =
        {
            sheet =
            {
                filename = "__redstone-flux__/graphics/entity/redstone/redstone-glow.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
                blend_mode = "additive",
                flags = {"light"},
                hr_version =
                {
                    filename = "__redstone-flux__/graphics/entity/redstone/hr-redstone-glow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5,
                    blend_mode = "additive",
                    flags = {"light"}
                }
            }
        },
        effect_animation_period = 5,
        effect_animation_period_deviation = 1,
        effect_darkness_multiplier = 3.6,
        min_effect_alpha = 0.2,
        max_effect_alpha = 0.3,
        mining_visualisation_tint = {r = 1, g = 0, b = 0, a = 1.000},
    },
    {
        type = "item",
        name = "rflux-redstone",
        burnt_result = "rflux-depleted-redstone",
        fuel_value = "25MJ",
        fuel_category = "flux",
        icon = "__redstone-flux__/graphics/icons/redstone.png",
        icon_size = 64, icon_mipmaps = 4,
        pictures = 
        {
            { size = 64, filename = "__redstone-flux__/graphics/icons/redstone.png",   scale = 0.25, mipmap_count = 4},
            { size = 64, filename = "__redstone-flux__/graphics/icons/redstone-1.png",   scale = 0.25, mipmap_count = 4},
            { size = 64, filename = "__redstone-flux__/graphics/icons/redstone-2.png",   scale = 0.25, mipmap_count = 4},
            { size = 64, filename = "__redstone-flux__/graphics/icons/redstone-3.png",   scale = 0.25, mipmap_count = 4},
        },
        subgroup = "raw-resource",
        order="n[rflux]-[raw]-a",
        stack_size = 200
    },
    {
        type = "item",
        name = "rflux-depleted-redstone",
        fuel_value = "5MJ",
        fuel_category = "chemical",
        icon = "__redstone-flux__/graphics/icons/depleted-redstone.png",
        icon_size = 64, icon_mipmaps = 4,
        pictures = 
        {
            { size = 64, filename = "__redstone-flux__/graphics/icons/depleted-redstone.png",   scale = 0.25, mipmap_count = 4},
            { size = 64, filename = "__redstone-flux__/graphics/icons/depleted-redstone-1.png",   scale = 0.25, mipmap_count = 4},
            { size = 64, filename = "__redstone-flux__/graphics/icons/depleted-redstone-2.png",   scale = 0.25, mipmap_count = 4},
            { size = 64, filename = "__redstone-flux__/graphics/icons/depleted-redstone-3.png",   scale = 0.25, mipmap_count = 4},
        },
        subgroup = "raw-resource",
        order="n[rflux]-[raw]-b",
        stack_size = 200,
    },
})