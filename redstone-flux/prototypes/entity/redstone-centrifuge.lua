data:extend({
    {
        type = "recipe-category",
        name = "rflux-centrifuging",
    },
    {
        type = "item",
        name = "rflux-centrifuge",
        icon = "__redstone-flux__/graphics/icons/redstone-centrifuge.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "production-machine",
        order = "g[rflux]-[rflux-centrifuge]",
        place_result = "rflux-centrifuge",
        stack_size = 50,
    },
    {
        type = "recipe",
        name = "rflux-centrifuge",
        ingredients = {
            {"rflux-redstone-circuit",100},
            {"concrete",100},
            {"steel-plate",200},
            {"rflux-redstone-dust",250},
        },
        result = "rflux-centrifuge",
        energy_required = 5,
        
    },
    {
        type = "assembling-machine",
        name = "rflux-centrifuge",
        icon = "__redstone-flux__/graphics/icons/redstone-centrifuge.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.1, result = "rflux-centrifuge"},
        max_health = 350,
        crafting_speed = 1,
        crafting_categories = {"rflux-centrifuging"},
        fixed_recipe = "rflux-redstone-crystal-fuge",
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input",
          emissions_per_minute = 1,
          drain = "20kW"
        },
        energy_usage = "500kW",
        corpse = "centrifuge-remnants",
        dying_explosion = "centrifuge-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 70
          }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = {
            type = "create-entity",
            entity_name = "spark-explosion",
            offset_deviation =  {{-0.5, -0.5}, {0.5, 0.5}},
            offsets = {{0,1}},
            damage_type_filters = "fire"
        },
        drawing_box = {{-1.5, -2.2}, {1.5, 1.5}},
        always_draw_idle_animation = true,
        idle_animation =
        {
          layers =
          {
            -- Centrifuge A
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-C.png",
              priority = "high",
              line_length = 8,
              width = 119,
              height = 107,
              frame_count = 64,
              shift = util.by_pixel(-0.5, -26.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C.png",
                priority = "high",
                scale = 0.5,
                line_length = 8,
                width = 237,
                height = 214,
                frame_count = 64,
                shift = util.by_pixel(-0.25, -26.5)
              }
            },
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-C-shadow.png",
              draw_as_shadow = true,
              priority = "high",
              line_length = 8,
              width = 132,
              height = 74,
              frame_count = 64,
              shift = util.by_pixel(20, -10),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-C-shadow.png",
                draw_as_shadow = true,
                priority = "high",
                scale = 0.5,
                line_length = 8,
                width = 279,
                height = 152,
                frame_count = 64,
                shift = util.by_pixel(16.75, -10)
              }
            },
            -- Centrifuge B
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-B.png",
              priority = "high",
              line_length = 8,
              width = 78,
              height = 117,
              frame_count = 64,
              shift = util.by_pixel(23, 6.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B.png",
                priority = "high",
                scale = 0.5,
                line_length = 8,
                width = 156,
                height = 234,
                frame_count = 64,
                shift = util.by_pixel(23, 6.5)
              }
            },
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-B-shadow.png",
              draw_as_shadow = true,
              priority = "high",
              line_length = 8,
              width = 124,
              height = 74,
              frame_count = 64,
              shift = util.by_pixel(63, 16),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-B-shadow.png",
                draw_as_shadow = true,
                priority = "high",
                scale = 0.5,
                line_length = 8,
                width = 251,
                height = 149,
                frame_count = 64,
                shift = util.by_pixel(63.25, 15.25)
              }
            },
            -- Centrifuge A
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-A.png",
              priority = "high",
              line_length = 8,
              width = 70,
              height = 123,
              frame_count = 64,
              shift = util.by_pixel(-26, 3.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A.png",
                priority = "high",
                scale = 0.5,
                line_length = 8,
                width = 139,
                height = 246,
                frame_count = 64,
                shift = util.by_pixel(-26.25, 3.5)
              }
            },
            {
              filename = "__base__/graphics/entity/centrifuge/centrifuge-A-shadow.png",
              priority = "high",
              draw_as_shadow = true,
              line_length = 8,
              width = 108,
              height = 54,
              frame_count = 64,
              shift = util.by_pixel(6, 27),
              hr_version =
              {
                filename = "__base__/graphics/entity/centrifuge/hr-centrifuge-A-shadow.png",
                priority = "high",
                draw_as_shadow = true,
                scale = 0.5,
                line_length = 8,
                width = 230,
                height = 124,
                frame_count = 64,
                shift = util.by_pixel(8.5, 23.5)
              }
            }
          }
        },
    
        animation =
        {
          layers =
          {
            -- Centrifuge C
            {
              filename = "__redstone-flux__/graphics/entity/centrifuge/centrifuge-C-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 96,
              height = 104,
              frame_count = 64,
              shift = util.by_pixel(0, -27),
    
              hr_version =
              {
                filename = "__redstone-flux__/graphics/entity/centrifuge/hr-centrifuge-C-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 190,
                height = 207,
                frame_count = 64,
                shift = util.by_pixel(0, -27.25)
              }
            },
            -- Centrifuge B
            {
              filename = "__redstone-flux__/graphics/entity/centrifuge/centrifuge-B-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 65,
              height = 103,
              frame_count = 64,
              shift = util.by_pixel(16.5, 0.5),
              hr_version =
              {
                filename = "__redstone-flux__/graphics/entity/centrifuge/hr-centrifuge-B-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 131,
                height = 206,
                frame_count = 64,
                shift = util.by_pixel(16.75, 0.5)
              }
            },
            -- Centrifuge A
            {
              filename = "__redstone-flux__/graphics/entity/centrifuge/centrifuge-A-light.png",
              priority = "high",
              blend_mode = "additive", -- centrifuge
              line_length = 8,
              width = 55,
              height = 98,
              frame_count = 64,
              shift = util.by_pixel(-23.5, -2),
              hr_version =
              {
                filename = "__redstone-flux__/graphics/entity/centrifuge/hr-centrifuge-A-light.png",
                priority = "high",
                scale = 0.5,
                blend_mode = "additive", -- centrifuge
                line_length = 8,
                width = 108,
                height = 197,
                frame_count = 64,
                shift = util.by_pixel(-23.5, -1.75)
              }
            }
          }
        },
    
        working_visualisations =
        {
          {
            effect = "uranium-glow", -- changes alpha based on energy source light intensity
            light = {intensity = 0.6, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.0, b = 0.0}}
          }
        },
        open_sound = {{filename = "__base__/sound/machine-open.ogg", volume = 0.5}},
        close_sound = {{filename = "__base__/sound/machine-close.ogg", volume = 0.5}},
        vehicle_impact_sound = 
        {
            {
              filename = "__base__/sound/car-metal-impact-2.ogg", volume = 0.5
            },
            {
              filename = "__base__/sound/car-metal-impact-3.ogg", volume = 0.5
            },
            {
              filename = "__base__/sound/car-metal-impact-4.ogg", volume = 0.5
            },
            {
              filename = "__base__/sound/car-metal-impact-5.ogg", volume = 0.5
            },
            {
              filename = "__base__/sound/car-metal-impact-6.ogg", volume = 0.5
            }
        },
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/centrifuge-1.ogg",
              volume = 0.3
            },
            {
              filename = "__base__/sound/centrifuge-2.ogg",
              volume = 0.3
            },
            {
              filename = "__base__/sound/centrifuge-6.ogg",
              volume = 0.3
            },
          },
          fade_in_ticks = 4,
          fade_out_ticks = 20,
          max_sounds_per_type = 3,
          idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/centrifuge/centrifuge-reflection.png",
            priority = "extra-high",
            width = 28,
            height = 32,
            shift = util.by_pixel(0, 65),
            variation_count = 1,
            scale = 5,
          },
          rotate = false,
          orientation_to_variation = false
        }
    },
})