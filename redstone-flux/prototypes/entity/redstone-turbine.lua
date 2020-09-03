data:extend({
    {
        type = "item",
        name = "rflux-turbine",
        icon = "__redstone-flux__/graphics/icons/redstone-turbine.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "energy",
        order = "f[rflux]-[energy]-c",
        place_result = "rflux-turbine",
        stack_size = 50,

    },
    {
        type = "trivial-smoke",
        name = "flux-turbine-smoke",
        duration = 600,
        fade_in_duration = 30,
        fade_away_duration = 570,
        spread_duration = 600,
        start_scale = 0.8,
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
        type = "generator",
        name = "rflux-turbine",
        icon = "__redstone-flux__/graphics/icons/redstone-turbine.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral","player-creation"},
        minable = {mining_time = 0.3, result = "rflux-turbine"},
        max_health = 300,
        -- corpse = "steam-turbine-remnants",
        dying_explosion = "steam-turbine-explosion",
        alert_icon_shift = util.by_pixel(0, -12),
        effectivity = 1,
        fluid_usage_per_tick = 1,
        maximum_temperature = 1000,
        burns_fluid = true,
        resistances =
        {
          {
            type = "fire",
            percent = 70
          }
        },
        -- fast_replaceable_group = "steam-engine",
        collision_box = {{-1.25, -2.35}, {1.25, 2.35}},
        selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
        damaged_trigger_effect = {
            type = "create-entity",
            entity_name = "spark-explosion",
            offset_deviation =  {{-0.5, -0.5}, {0.5, 0.5}},
            offsets = {{0,1}},
            damage_type_filters = "fire"
        },
        fluid_box =
        {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_covers = {
            north =
            {
              layers =
              {
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                  }
                },
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  draw_as_shadow = true,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                  }
                }
              }
            },
            east =
            {
              layers =
              {
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                  }
                },
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  draw_as_shadow = true,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                  }
                }
              }
            },
            south =
            {
              layers =
              {
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                  }
                },
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  draw_as_shadow = true,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                  }
                }
              }
            },
            west =
            {
              layers =
              {
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5
                  }
                },
                {
                  filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                  priority = "extra-high",
                  width = 64,
                  height = 64,
                  draw_as_shadow = true,
                  hr_version =
                  {
                    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true
                  }
                }
              }
            }
          },
          pipe_connections =
          {
            { type = "input-output", position = {0, 3} },
            { type = "input-output", position = {0, -3} }
          },
          production_type = "input-output",
          filter = "rflux-energized-flux",
          minimum_temperature = 90
        },
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-output"
        },
        horizontal_animation =
        {
          layers =
          {
            {
              filename = "__redstone-flux__/graphics/entity/turbine/redstone-turbine-H.png",
              width = 160,
              height = 123,
              frame_count = 8,
              line_length = 4,
              shift = util.by_pixel(0, -2.5),
              hr_version =
              {
                filename = "__redstone-flux__/graphics/entity/turbine/hr-redstone-turbine-H.png",
                width = 320,
                height = 245,
                frame_count = 8,
                line_length = 4,
                shift = util.by_pixel(0, -2.75),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/steam-turbine/steam-turbine-H-shadow.png",
              width = 217,
              height = 74,
              repeat_count = 8,
              frame_count = 1,
              line_length = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(28.75, 18),
              hr_version =
              {
                filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
                width = 435,
                height = 150,
                repeat_count = 8,
                frame_count = 1,
                line_length = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(28.5, 18),
                scale = 0.5
              }
            }
          }
        },
        vertical_animation =
        {
         layers =
         {
            {
              filename = "__redstone-flux__/graphics/entity/turbine/redstone-turbine-V.png",
              width = 108,
              height = 173,
              frame_count = 8,
              line_length = 4,
              shift = util.by_pixel(5, 6.5),
              hr_version =
              {
                filename = "__redstone-flux__/graphics/entity/turbine/hr-redstone-turbine-V.png",
                width = 217,
                height = 347,
                frame_count = 8,
                line_length = 4,
                shift = util.by_pixel(4.75, 6.75),
                scale = 0.5
              }
            },
            {
              filename = "__base__/graphics/entity/steam-turbine/steam-turbine-V-shadow.png",
              width = 151,
              height = 131,
              repeat_count = 8,
              frame_count = 1,
              line_length = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(39.5, 24.5),
              hr_version =
              {
                filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
                width = 302,
                height = 260,
                repeat_count = 8,
                frame_count = 1,
                line_length = 1,
                draw_as_shadow = true,
                shift = util.by_pixel(39.5, 24.5),
                scale = 0.5
              }
            }
          }
        },
        smoke =
        {
          {
            name = "flux-turbine-smoke",
            north_position = {0.0, -1.0},
            east_position = {0.75, -0.75},
            frequency = 10 / 32,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
            starting_frame_deviation = 60
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
            filename = "__base__/sound/steam-turbine.ogg",
            volume = 0.67
          },
          match_speed_to_activity = true,
          audible_distance_modifier = 0.7,
          max_sounds_per_type = 3,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        min_perceived_performance = 0.25,
        performance_to_sound_speedup = 0.5,
        water_reflection =
        {
          pictures =
          {
            filename = "__base__/graphics/entity/steam-turbine/steam-turbine-reflection.png",
            priority = "extra-high",
            width = 40,
            height = 36,
            shift = util.by_pixel(0, 50),
            variation_count = 2,
            repeat_count = 2,
            scale = 5,
          },
          rotate = false,
          orientation_to_variation = true
        }
    },
})
