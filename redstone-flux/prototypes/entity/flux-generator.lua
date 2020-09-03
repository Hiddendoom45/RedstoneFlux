data:extend({
    {
        type = "item",
        name = "rflux-flux-generator",
        icon = "__redstone-flux__/graphics/icons/flux-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "energy",
        order = "f[rflux]-[energy]-b",
        place_result = "rflux-flux-generator",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "rflux-flux-generator",
        ingredients = {
            {type = "fluid", name = "rflux-energized-flux", amount = 1000},
            {type = "item", name = "copper-plate", amount = 100},
            {type = "item", name = "steel-plate", amount = 100},
            {type = "item", name = "rflux-redstone-circuit", amount = 250},
            {type = "item", name = "stone-brick", amount = 500},
        },
        category = "crafting-with-fluid",
        result = "rflux-flux-generator",
        energy = 60,
        enabled = false,
        order = "f[rflux]-[energy]-b",
    },
    {
        type = "burner-generator",
        name = "rflux-flux-generator",
        icon = "__redstone-flux__/graphics/icons/flux-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "rflux-flux-generator"},
        max_health = 350,
        burner = {
            type = "burner",
            emissions_per_minute = "20",
            fuel_inventory_size = "1",
            burnt_inventory_size = "1",
            fuel_categories = {"flux","adv-flux"},
            smoke =
            {
                {
                name = "flux-smoke",
                deviation = {0.1, 0.1},
                frequency = 5,
                position = {-1.1, 0.7},
                starting_vertical_speed = 0.08,
                starting_frame_deviation = 60,
                }
            },
            light_flicker = {color = {r = 1, g = 0, b = 0}},
        },
        energy_source = {
            type = "electric",
            usage_priority = "secondary-output",
        },
        max_power_output = "100MW",
        -- corpse = "electric-furnace-remnants",
        dying_explosion = "electric-furnace-explosion",
        resistances =
        {
          {
            type = "fire",
            percent = 80
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
        repair_sound = {
            {
              filename = "__base__/sound/manual-repair-simple-1.ogg",
              volume = 0.5
            },
            {
              filename = "__base__/sound/manual-repair-simple-2.ogg",
              volume = 0.5
            },
            {
              filename = "__base__/sound/manual-repair-simple-3.ogg",
              volume = 0.5
            },
            {
              filename = "__base__/sound/manual-repair-simple-4.ogg",
              volume = 0.5
            },
            {
              filename = "__base__/sound/manual-repair-simple-5.ogg",
              volume = 0.4
            }
        },
        working_sound =
        {
          sound =
          {
            filename = "__base__/sound/electric-furnace.ogg",
            volume = 0.6
          },
          audible_distance_modifier = 0.6,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        always_draw_idle_animation = true,
        idle_animation =
        {
          layers =
          {
            {
              filename = "__redstone-flux__/graphics/entity/flux-generator/flux-generator.png",
              priority = "high",
              width = 129,
              height = 100,
              line_length = 3,
              frame_count = 12,
              shift = {0.421875, 0},
              hr_version =
              {
                filename = "__redstone-flux__/graphics/entity/flux-generator/hr-flux-generator.png",
                priority = "high",
                width = 239,
                height = 219,
                line_length = 3,
                frame_count = 12,
                shift = util.by_pixel(0.75, 5.75),
                scale = 0.5
              }
            },
            {
              filename = "__redstone-flux__/graphics/entity/flux-generator/flux-generator-shadow.png",
              priority = "high",
              width = 129,
              height = 100,
              line_length = 3,
              frame_count = 12,
              shift = {0.421875, 0},
              draw_as_shadow = true,
              hr_version =
              {
                filename = "__redstone-flux__/graphics/entity/flux-generator/hr-flux-generator-shadow.png",
                priority = "high",
                width = 227,
                height = 171,
                line_length = 3,
                frame_count = 12,
                draw_as_shadow = true,
                shift = util.by_pixel(11.25, 7.75),
                scale = 0.5
              }
            }
          }
        },
        animation = {
            layers = {
                {
                    filename = "__redstone-flux__/graphics/entity/flux-generator/flux-generator-heater.png",
                    priority = "high",
                    width = 25,
                    height = 15,
                    frame_count = 12,
                    animation_speed = 0.5,
                    shift = {0.015625, 0.890625},
                    hr_version =
                    {
                        filename = "__redstone-flux__/graphics/entity/flux-generator/hr-flux-generator-heater.png",
                        priority = "high",
                        width = 60,
                        height = 56,
                        frame_count = 12,
                        animation_speed = 0.5,
                        shift = util.by_pixel(1.75, 32.75),
                        scale = 0.5
                    }
                },
                {
                    filename = "__redstone-flux__/graphics/entity/flux-generator/flux-generator-propeller-1.png",
                    priority = "high",
                    width = 19,
                    height = 13,
                    frame_count = 12,
                    animation_speed = 0.5,
                    shift = {-0.671875, -0.640625},
                    hr_version =
                    {
                        filename = "__redstone-flux__/graphics/entity/flux-generator/hr-flux-generator-propeller-1.png",
                        priority = "high",
                        width = 37,
                        height = 25,
                        frame_count = 12,
                        animation_speed = 0.5,
                        shift = util.by_pixel(-20.5, -18.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__redstone-flux__/graphics/entity/flux-generator/flux-generator-propeller-2.png",
                    priority = "high",
                    width = 12,
                    height = 9,
                    frame_count = 12,
                    animation_speed = 0.5,
                    shift = {0.0625, -1.234375},
                    hr_version =
                    {
                        filename = "__redstone-flux__/graphics/entity/flux-generator/hr-flux-generator-propeller-2.png",
                        priority = "high",
                        width = 23,
                        height = 15,
                        frame_count = 12,
                        animation_speed = 0.5,
                        shift = util.by_pixel(3.5, -38),
                        scale = 0.5
                    }
                }
            }
        },
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/electric-furnace/electric-furnace-reflection.png",
            priority = "extra-high",
            width = 24,
            height = 24,
            shift = util.by_pixel(5, 40),
            variation_count = 1,
            scale = 5,
          },
          rotate = false,
          orientation_to_variation = false
        }
    },
})