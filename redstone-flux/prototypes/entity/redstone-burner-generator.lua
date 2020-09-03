data:extend({
    
    {
        type = "item",
        name = "rflux-burner-generator",
        icon = "__redstone-flux__/graphics/icons/redstone-burner-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "energy",
        order = "f[rflux]-[energy]-a",
        place_result = "rflux-burner-generator",
        stack_size = 50
    },
    {
        type = "recipe",
        name = "rflux-burner-generator",
        ingredients = {{"stone-brick",20}, {"rflux-redstone",2}},
        result = "rflux-burner-generator",
        energy_required = 5,
        enabled = false,
        order = "f[rflux]-[energy]-a",
        
    },
    {
        type = "trivial-smoke",
        name = "flux-smoke",
        duration = 600,
        fade_in_duration = 0,
        fade_away_duration = 600,
        spread_duration = 600,
        start_scale = 0.20,
        end_scale = 1.0,
        color = {r = 0.8, b = 0.3, g = 0.3, a = 0.4},
        cyclic = true,
        affected_by_wind = true,
        -- render_layer = opts.render_layer,
        -- movement_slow_down_factor = opts.movement_slow_down_factor,
        animation =
        {
            width = 152,
            height = 120,
            line_length = 5,
            frame_count = 60,
            shift = {-0.53125, -0.4375},
            priority = "high",
            animation_speed = 0.25,
            filename = "__base__/graphics/entity/smoke/smoke.png",
            flags = { "smoke" }
        }
    },
    {
        type = "burner-generator",
        name = "rflux-burner-generator",
        icon = "__redstone-flux__/graphics/icons/redstone-burner-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "rflux-burner-generator"},
        max_health = 200,
        burner = {
            type = "burner",
            emissions_per_minute = "10",
            fuel_inventory_size = "1",
            burnt_inventory_size = "1",
            fuel_category = "flux",
            smoke =
            {
                {
                    name = "flux-smoke",
                    deviation = {0.1, 0.1},
                    frequency = 5,
                    position = {0.0, -0.8},
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
        max_power_output = "4MW",
        --corpse = "stone-furnace-remnants",
        --dying_explosion = "stone-furnace-explosion",
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
        mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg",volume = 0.8},
        open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.5},
        close_sound =  {filename = "__base__/sound/machine-close.ogg", volume = 0.5},
        vehicle_impact_sound = {
            {
                filename = "__base__/sound/car-stone-impact.ogg", volume = 0.5
            },
            {
                filename = "__base__/sound/car-stone-impact-2.ogg", volume = 0.5
            },
            {
                filename = "__base__/sound/car-stone-impact-3.ogg", volume = 0.5
            },
            {
                filename = "__base__/sound/car-stone-impact-4.ogg", volume = 0.5
            },
            {
                filename = "__base__/sound/car-stone-impact-5.ogg", volume = 0.5
            },
            {
                filename = "__base__/sound/car-stone-impact-6.ogg", volume = 0.5
            },
        },
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/furnace.ogg",
                    volume = 0.6
                }
            },
            fade_in_ticks = 4,
            fade_out_ticks = 20,
            audible_distance_modifier = 0.4,
        },
        resistances =
        {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "explosion",
                percent = 30
            },
            {
                type = "impact",
                percent = 30
            }
        },
        collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{-0.8, -1}, {0.8, 1}},
        animation =
        {
            layers =
            {
                {
                    filename = "__redstone-flux__/graphics/entity/burner-generator/redstone-burner-generator-fire.png",
                    priority = "extra-high",
                    line_length = 8,
                    width = 20,
                    height = 49,
                    frame_count = 48,
                    axially_symmetrical = false,
                    direction_count = 1,
                    shift = util.by_pixel(-0.5, 5.5),
                    hr_version =
                    {
                        filename = "__redstone-flux__/graphics/entity/burner-generator/hr-redstone-burner-generator-fire.png",
                        priority = "extra-high",
                        line_length = 8,
                        width = 41,
                        height = 100,
                        frame_count = 48,
                        axially_symmetrical = false,
                        direction_count = 1,
                        shift = util.by_pixel(-0.75, 5.5),
                        scale = 0.5
                    }
                },
            }
        },
        always_draw_idle_animation = true,
        idle_animation = 
        {
            layers = 
            {
                {
                    filename = "__redstone-flux__/graphics/entity/burner-generator/redstone-burner-generator.png",
                    priority = "extra-high",
                    line_length = 8,
                    width = 81,
                    height = 64,
                    frame_count = 48,
                    shift = util.by_pixel(14.5, 2),
                    hr_version = 
                    {
                        filename = "__redstone-flux__/graphics/entity/burner-generator/hr-redstone-burner-generator.png",
                        priority = "extra-high",
                        line_length = 8,
                        width = 151,
                        height = 146,
                        frame_count = 48,
                        shift = util.by_pixel(-0.25, 6),
                        scale = 0.5
                    }
                },
                {
                    filename = "__redstone-flux__/graphics/entity/burner-generator/redstone-burner-generator-shadow.png",
                    priority = "extra-high",
                    line_length = 8,
                    width = 81,
                    height = 64,
                    frame_count = 48,
                    draw_as_shadow = true,
                    shift = util.by_pixel(14.5, 2),
                    hr_version =
                    {
                        filename = "__redstone-flux__/graphics/entity/burner-generator/hr-redstone-burner-generator-shadow.png",
                        priority = "extra-high",
                        line_length = 8,
                        width = 164,
                        height = 74,
                        frame_count = 48,
                        draw_as_shadow = true,
                        shift = util.by_pixel(14.5, 13),
                        scale = 0.5
                    }
                },
            }
        },
        water_reflection =
        {
            pictures =
            {
                filename = "__base__/graphics/entity/stone-furnace/stone-furnace-reflection.png",
                priority = "extra-high",
                width = 16,
                height = 16,
                shift = util.by_pixel(0, 35),
                variation_count = 1,
                scale = 5,
            },
            rotate = false,
            orientation_to_variation = false
        }
    },
    
})