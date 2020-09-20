local function make_4way_animation_from_spritesheet(animation)
    local function make_animation_layer(idx, anim)
      local start_frame = (anim.frame_count or 1) * idx
      local x = 0
      local y = 0
      if anim.line_length then
        y = anim.height * math.floor(start_frame / (anim.line_length or 1))
      else
        x = idx * anim.width
      end
      return
      {
        filename = anim.filename,
        priority = anim.priority or "high",
        flags = anim.flags,
        x = x,
        y = y,
        width = anim.width,
        height = anim.height,
        frame_count = anim.frame_count or 1,
        line_length = anim.line_length,
        repeat_count = anim.repeat_count,
        shift = anim.shift,
        draw_as_shadow = anim.draw_as_shadow,
        force_hr_shadow = anim.force_hr_shadow,
        apply_runtime_tint = anim.apply_runtime_tint,
        animation_speed = anim.animation_speed,
        scale = anim.scale or 1,
        tint = anim.tint,
        blend_mode = anim.blend_mode
      }
    end
  
    local function make_animation_layer_with_hr_version(idx, anim)
      local anim_parameters = make_animation_layer(idx, anim)
      if anim.hr_version and anim.hr_version.filename then
        anim_parameters.hr_version = make_animation_layer(idx, anim.hr_version)
      end
      return anim_parameters
    end
  
    local function make_animation(idx)
      if animation.layers then
        local tab = { layers = {} }
        for k,v in ipairs(animation.layers) do
          table.insert(tab.layers, make_animation_layer_with_hr_version(idx, v))
        end
        return tab
      else
        return make_animation_layer_with_hr_version(idx, animation)
      end
    end
  
    return
    {
      north = make_animation(0),
      east = make_animation(1),
      south = make_animation(2),
      west = make_animation(3)
    }
end
local pipecoverspictures_hr_gen = function()
    return
    {
      north =
      {
        layers =
        {
          {
            filename = "__redstone-flux__/graphics/entity/heated-generator/pipe-cover-N.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            hr_version =
            {
                filename = "__redstone-flux__/graphics/entity/heated-generator/hr-pipe-cover-N.png",
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
            filename = "__redstone-flux__/graphics/entity/heated-generator/pipe-cover-E.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            hr_version =
            {
                filename = "__redstone-flux__/graphics/entity/heated-generator/hr-pipe-cover-E.png",
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
            filename = "__redstone-flux__/graphics/entity/heated-generator/pipe-cover-S.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            hr_version =
            {
                filename = "__redstone-flux__/graphics/entity/heated-generator/hr-pipe-cover-S.png",
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
            filename = "__redstone-flux__/graphics/entity/heated-generator/pipe-cover-W.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            hr_version =
            {
                filename = "__redstone-flux__/graphics/entity/heated-generator/hr-pipe-cover-W.png",
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
    }
  end
  
local blank_animation = {
    
        filename = "__redstone-flux__/graphics/entity/blank.png",
        width = 64,
        height = 64,
    
}


data:extend({
    {
        type = "recipe-category",
        name = "rflux-redstone-heat",
    },
    {
        type = "recipe",
        name = "rflux-heat-energized-flux",
        ingredients = {
            {type = "fluid", name = "rflux-energized-flux", amount = 10},
        },
        category = "rflux-redstone-heat",
        results = {
            {type = "fluid", name = "rflux-energized-flux", amount = 10, temperature = 750},
            {type = "fluid", name = "rflux-flux", amount = 10},
        },
        main_product = "rflux-flux",
        -- A very slight inbalance in the crafting time vs use time to avoid flickering in
        -- power graphs, does result in occasional crafting stopped/start triggers, shouldn't be a
        -- problem with how infrequently it occurs
        energy_required = 4.999, --0.4995,
        order = "f[rflux]-[energy]-d",
        hide_from_player_crafting = true,
        hidden = true,
    },
    
    {
        type = "recipe",
        name = "rflux-heat-flux",
        ingredients = {
            {type = "fluid", name = "rflux-flux", amount = 10},
        },
        category = "rflux-redstone-heat",
        results = {
            {type = "fluid", name = "rflux-flux", amount = 10, temperature = 750},
        },
        main_product = "rflux-flux",
        -- A very slight inbalance in the crafting time vs use time to avoid flickering in
        -- power graphs, does result in occasional crafting stopped/start triggers, shouldn't be a
        -- problem with how infrequently it occurs
        energy_required = 4.999,
        order = "f[rflux]-[energy]-d",
        hide_from_player_crafting = true,
        hidden = true,
    },
    {
        type = "recipe",
        name = "rflux-heated-flux-generator",
        ingredients = {
            {type = "fluid", name = "rflux-energized-flux", amount = 5000},
            {type = "item", name = "heat-pipe", amount = 100},
            {type = "item", name = "steel-plate", amount = 1000},
            {type = "item", name = "rflux-redstone-circuit", amount = 1000},
        },
        category = "crafting-with-fluid",
        result = "rflux-heated-flux-generator",
        energy_required = 60,
        enabled = false,
        order = "f[rflux]-[energy]-d",
    },
    {
        type = "item",
        name = "rflux-heated-flux-generator",
        icon = "__redstone-flux__/graphics/icons/heated-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "energy",
        order = "f[rflux]-[energy]-d",
        place_result = "rflux-heated-flux-generator",
        stack_size = 50,
    },
    {
        type = "storage-tank",
        name = "rflux-heated-generator-storage",
        icon = "__redstone-flux__/graphics/icons/heated-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        collision_mask = {"not-colliding-with-itself"},
        collision_box = {{-1.5, -0.25}, {1.5, 0.25}},
        selection_box = {{-1.5, -0.25}, {1.5, 0.25}},
        window_bounding_box = {{0,0}, {0,0}},
        flags = {"placeable-neutral", "player-creation","placeable-off-grid"},
        fluid_box = {
            base_area = 1,
            height = 2,
            base_level = -2,
            -- pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                {type = "input-output", position = {1, 1}},
                {type = "input-output", position = {-1, 1}},
                {type = "input-output", position = {0, 1}},
            },
            production_type = "input-output",
            -- filter = "rflux-energized-flux"
        },
        flow_length_in_ticks = 1,
        pictures = {
            picture = blank_animation,
            window_background = blank_animation,
            fluid_background = blank_animation,
            flow_sprite = blank_animation,
            gas_flow = blank_animation,
        }

    },
    {
        type = "generator",
        name = "rflux-heated-eflux-generator",
        icon = "__redstone-flux__/graphics/icons/heated-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        collision_mask = {"not-colliding-with-itself"},
        
        collision_box = {{-1.29, -0.39}, {1.29, 0.39}},
        selection_box = {{-1.5, -0.39}, {1.5, 0.39}},
        flags = {"placeable-neutral", "player-creation","placeable-off-grid"},
        effectivity = 1,
        energy_source = {
            type = "electric",
            usage_priority = "secondary-output",
        },
        fluid_usage_per_tick = 1/30, --0.033,-- ~2/60
        maximum_temperature = 1000,
        max_power_output = "1GW",
        fluid_box = {
            base_area = 1,
            height = 2,
            base_level = -3,
            -- pipe_covers = pipecoverspictures(),
            pipe_connections =
            {
                {type = "input-output", position = {0, 0.40}},
                {type = "input-output", position = {0, -0.40}},
                -- {type = "input-output", position = {-1, 0.31}},
                -- {type = "input-output", position = {-1, -0.31}},
            },
            production_type = "input-output",
            -- filter = "rflux-energized-flux"
        },
        vertical_animation = blank_animation,
        horizontal_animation = blank_animation,
        -- doesn't work well with the 4 directions the furnace can have vs 2 the generator can have
        -- smoke =
        -- {
        --   {
        --     name = "flux-smoke",
        --     north_position = {0.0, -1.0},
        --     east_position = {0.75, -0.75},
        --     frequency = 10 / 32,
        --     starting_vertical_speed = 0.08,
        --     slow_down_factor = 1,
        --     starting_frame_deviation = 60
        --   }
        -- },
    },
    {
        type = "furnace",
        name = "rflux-heated-flux-generator",
        icon = "__redstone-flux__/graphics/icons/heated-generator.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.3, result = "rflux-heated-flux-generator"},
        max_health = 1000,
        energy_usage = "300MW",
        corpse = "heat-exchanger-remnants",
        dying_explosion = "heat-exchanger-explosion",
        result_inventory_size = 0,
        source_inventory_size = 0,
        crafting_speed = 1,
        crafting_categories = {"rflux-redstone-heat"},
        order = "f[rflux]-[energy]-d",
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        -- mode = "output-to-separate-pipe",
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
        collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
        selection_box = {{-1.5, -1}, {1.5, 1}},
        -- damaged_trigger_effect = hit_effects.entity(),
        -- target_temperature = 500,
        fluid_boxes =
        {
            {
                base_area = 1,
                height = 2,
                base_level = -1,
                pipe_covers = pipecoverspictures_hr_gen(),
                pipe_connections =
                {
                    {type = "input-output", position = {-2, 0.5}},
                    {type = "input-output", position = {2, 0.5}}
                },
                production_type = "input",
               -- filter = "rflux-energized-flux"
            },
            {
                base_area = 1,
                height = 2,
                base_level = 1,
                pipe_connections = 
                {
                    {type = "output", position = {1, -0.80}},
                    {type = "output", position = {-1, -0.80}}
                },
                production_type = "output",
                -- filter = "rflux-energized-flux",
            },
            {
                base_area = 1,
                height = 2,
                base_level = 1,
                pipe_covers = pipecoverspictures_hr_gen(),
                pipe_connections =
                {
                    {type = "output", position = {0, -1.5}}
                },
                production_type = "output",
                filter = "rflux-flux"
            },
        },
        energy_source =
        {
            type = "heat",
            max_temperature = 2000,
            specific_heat = "3MJ",
            max_transfer = "4GW",
            min_working_temperature = 750,
            minimum_glow_temperature = 1,
            connections =
            {
                {
                position = {0, 0.5},
                direction = defines.direction.south
                }
            },
            pipe_covers =
                make_4way_animation_from_spritesheet(
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-endings.png",
                width = 32,
                height = 32,
                direction_count = 4,
                hr_version =
                {
                    filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings.png",
                    width = 64,
                    height = 64,
                    direction_count = 4,
                    scale = 0.5
                }
                }),
            heat_pipe_covers =
                make_4way_animation_from_spritesheet(
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-endings-heated.png",
                width = 32,
                height = 32,
                direction_count = 4,
                hr_version =
                {
                    filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-endings-heated.png",
                    width = 64,
                    height = 64,
                    direction_count = 4,
                    scale = 0.5
                }
                }),
            heat_picture =
            {
                north =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
                priority = "extra-high",
                width = 24,
                height = 48,
                shift = util.by_pixel(-1, 8),
                hr_version =
                {
                    filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
                    priority = "extra-high",
                    width = 44,
                    height = 96,
                    shift = util.by_pixel(-0.5, 8.5),
                    scale = 0.5
                }
                },
                east =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
                priority = "extra-high",
                width = 40,
                height = 40,
                shift = util.by_pixel(-21, -13),
                hr_version =
                {
                    filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
                    priority = "extra-high",
                    width = 80,
                    height = 80,
                    shift = util.by_pixel(-21, -13),
                    scale = 0.5
                }
                },
                south =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
                priority = "extra-high",
                width = 16,
                height = 20,
                shift = util.by_pixel(-1, -30),
                hr_version =
                {
                    filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
                    priority = "extra-high",
                    width = 28,
                    height = 40,
                    shift = util.by_pixel(-1, -30),
                    scale = 0.5
                }
                },
                west =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
                priority = "extra-high",
                width = 32,
                height = 40,
                shift = util.by_pixel(23, -13),
                hr_version =
                {
                    filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
                    priority = "extra-high",
                    width = 64,
                    height = 76,
                    shift = util.by_pixel(23, -13),
                    scale = 0.5
                }
                },
            },
            heat_glow =
            {
                north =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-N-glow.png",
                priority = "extra-high",
                width = 38,
                height = 70,
                tint = heat_glow_tint,
                shift = util.by_pixel(0, 8)
                },
                east =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-E-glow.png",
                priority = "extra-high",
                width = 60,
                height = 62,
                shift = util.by_pixel(-22, -12)
                },
                south =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-S-glow.png",
                priority = "extra-high",
                width = 38,
                height = 40,
                tint = heat_glow_tint,
                shift = util.by_pixel(0, -36)
                },
                west =
                {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-W-glow.png",
                priority = "extra-high",
                width = 60,
                height = 64,
                shift = util.by_pixel(20, -12)
                },
            }
        },
        working_sound =
        {
        sound =
        {
            filename = "__base__/sound/heat-exchanger.ogg",
            volume = 0.65
        },
        --max_sounds_per_type = 3,
        audible_distance_modifier = 0.5,
        fade_in_ticks = 4,
        fade_out_ticks = 20,
        },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        animation ={
        north =
        {
            layers =
            {
                {
                    filename = "__redstone-flux__/graphics/entity/heated-generator/heated-generator-N.png",
                    priority = "extra-high",
                    width = 131,
                    height = 108,
                    shift = util.by_pixel(-0.5, 4),
                    hr_version =
                {
                    filename = "__redstone-flux__/graphics/entity/heated-generator/hr-heated-generator-N.png",
                    priority = "extra-high",
                    width = 269,
                    height = 221,
                    shift = util.by_pixel(-1.25, 5.25),
                    scale = 0.5
                    }
                },
                {
                    filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
                    priority = "extra-high",
                    width = 137,
                    height = 82,
                    shift = util.by_pixel(20.5, 9),
                    draw_as_shadow = true,
                    hr_version =
                {
                    filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
                    priority = "extra-high",
                    width = 274,
                    height = 164,
                    scale = 0.5,
                    shift = util.by_pixel(20.5, 9),
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
                filename = "__redstone-flux__/graphics/entity/heated-generator/heated-generator-E.png",
                priority = "extra-high",
                width = 102,
                height = 147,
                shift = util.by_pixel(-2, -0.5),
                hr_version =
            {
                filename = "__redstone-flux__/graphics/entity/heated-generator/hr-heated-generator-E.png",
                priority = "extra-high",
                width = 211,
                height = 301,
                shift = util.by_pixel(-1.75, 1.25),
                scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
                priority = "extra-high",
                width = 92,
                height = 97,
                shift = util.by_pixel(30, 9.5),
                draw_as_shadow = true,
                hr_version =
            {
                filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
                priority = "extra-high",
                width = 184,
                height = 194,
                scale = 0.5,
                shift = util.by_pixel(30, 9.5),
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
                filename = "__redstone-flux__/graphics/entity/heated-generator/heated-generator-S.png",
                priority = "extra-high",
                width = 128,
                height = 100,
                shift = util.by_pixel(3, 10),
                hr_version =
            {
                filename = "__redstone-flux__/graphics/entity/heated-generator/hr-heated-generator-S.png",
                priority = "extra-high",
                width = 260,
                height = 201,
                shift = util.by_pixel(4, 10.75),
                scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
                priority = "extra-high",
                width = 156,
                height = 66,
                shift = util.by_pixel(30, 16),
                draw_as_shadow = true,
                hr_version =
            {
                filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
                priority = "extra-high",
                width = 311,
                height = 131,
                scale = 0.5,
                shift = util.by_pixel(29.75, 15.75),
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
                filename = "__redstone-flux__/graphics/entity/heated-generator/heated-generator-W.png",
                priority = "extra-high",
                width = 96,
                height = 132,
                shift = util.by_pixel(1, 5),
                hr_version =
            {
                filename = "__redstone-flux__/graphics/entity/heated-generator/hr-heated-generator-W.png",
                priority = "extra-high",
                width = 196,
                height = 273,
                shift = util.by_pixel(1.5, 7.75),
                scale = 0.5
                }
            },
            {
                filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
                priority = "extra-high",
                width = 103,
                height = 109,
                shift = util.by_pixel(19.5, 6.5),
                draw_as_shadow = true,
                hr_version =
            {
                filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
                priority = "extra-high",
                width = 206,
                height = 218,
                scale = 0.5,
                shift = util.by_pixel(19.5, 6.5),
                draw_as_shadow = true
                }
            }
            }
        }
        },
        -- Workaround as heat_picture  and heat_glow in the heat energy prototype does nothing 
        -- to assembling machines.
        -- More or less replicates the effects to some extent when machine is being used, 
        -- which should be most of the time
        working_visualisations = 
        {
        {
            north_animation =
            {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-N-heated.png",
            priority = "extra-high",
            width = 24,
            height = 48,
            frame_count = 1,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, 8),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-N-heated.png",
                priority = "extra-high",
                width = 44,
                height = 96,
                frame_count = 1,
                animation_speed = 0.5,
                shift = util.by_pixel(-0.5, 8.5),
                scale = 0.5
            }
            },
            east_animation =
            {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-E-heated.png",
            priority = "extra-high",
            width = 40,
            height = 40,
            frame_count = 1,
            animation_speed = 0.5,
            shift = util.by_pixel(-21, -13),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-E-heated.png",
                priority = "extra-high",
                width = 80,
                height = 80,
                frame_count = 1,
                animation_speed = 0.5,
                shift = util.by_pixel(-21, -13),
                scale = 0.5
            }
            },
            south_animation =
            {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-S-heated.png",
            priority = "extra-high",
            width = 16,
            height = 20,
            frame_count = 1,
            animation_speed = 0.5,
            shift = util.by_pixel(-1, -30),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-S-heated.png",
                priority = "extra-high",
                width = 28,
                height = 40,
                frame_count = 1,
                animation_speed = 0.5,
                shift = util.by_pixel(-1, -30),
                scale = 0.5
            }
            },
            west_animation =
            {
            filename = "__base__/graphics/entity/heat-exchanger/heatex-W-heated.png",
            priority = "extra-high",
            width = 32,
            height = 40,
            frame_count = 1,
            animation_speed = 0.5,
            shift = util.by_pixel(23, -13),
            hr_version =
            {
                filename = "__base__/graphics/entity/heat-exchanger/hr-heatex-W-heated.png",
                priority = "extra-high",
                width = 64,
                height = 76,
                frame_count = 1,
                animation_speed = 0.5,
                shift = util.by_pixel(23, -13),
                scale = 0.5
            },
            fadeout = true,
        },
        },
        -- stuff to make the pipe glow and flicker a bit, more dynamic than just a glowing heat pipe
        {
            north_animation = 
            {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-N-glow.png",
                priority = "medium",
                width = 38,
                height = 70,
                tint = {r = 0.7, g = 0, b = 0, a = 0.4},
                flags = {"light"},
                shift = util.by_pixel(0, 8)
            },
            east_animation = 
            {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-E-glow.png",
                priority = "medium",
                width = 60,
                height = 62,
                tint = {r = 0.7, g = 0, b = 0, a = 0.4},
                flags = {"light"},
                shift = util.by_pixel(-22, -12)
            },
            south_animation = 
            {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-S-glow.png",
                priority = "medium",
                width = 38,
                height = 40,
                tint = {r = 0.7, g = 0, b = 0, a = 0.4},
                flags = {"light"},
                shift = util.by_pixel(0, -36)
            },
            west_animation = 
            {
                filename = "__base__/graphics/entity/heat-exchanger/heatex-W-glow.png",
                priority = "medium",
                width = 60,
                height = 64,
                tint = {r = 0.7, g = 0, b = 0, a = 0.4},
                flags = {"light"},
                shift = util.by_pixel(20, -12)
            },
            effect = "uranium-glow",
            draw_as_light = true,
            light = {intensity = 0.7, size = 6, color = {r = 1.0, g = 0.5, b = 0.5}},
            fadeout = true,
        },
        },
        -- fire = {},
        -- fire_glow = {},
        -- burning_cooldown = 20,
        water_reflection = boiler_reflection()
    },
})