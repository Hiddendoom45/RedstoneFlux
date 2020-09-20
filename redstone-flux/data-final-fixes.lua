-- done here so se doesn't remove these integrations.
if mods["space-exploration"] then
    data.raw.technology["rflux-infusion"].unit.count = 500
    table.insert(data.raw.technology["rflux-infusion"].prerequisites, "se-energy-science-pack-1")
    table.insert(data.raw.technology["rflux-infusion"].unit.ingredients, {"se-energy-science-pack-1",1})

    data.raw.technology["rflux-heated-redstone"].unit.count = 1000
    table.insert(data.raw.technology["rflux-heated-redstone"].prerequisites, "se-energy-science-pack-3")
    table.insert(data.raw.technology["rflux-heated-redstone"].unit.ingredients, {"se-energy-science-pack-3",1})
end