local gen_item = util.table.deepcopy(data.raw.item["rflux-flux-generator"])
local gen_rec = util.table.deepcopy(data.raw.recipe["rflux-flux-generator"])
local gen_ent = util.table.deepcopy(data.raw["burner-generator"]["rflux-flux-generator"])

gen_item.name = "rflux-hightemp-generator"
gen_item.order = "f[rflux]-[energy]-ba"
gen_item.place_result = "rflux-hightemp-generator"

gen_rec.name = "rflux-hightemp-generator"
gen_rec.order = "f[rflux]-[energy]-ba"
gen_rec.ingredients = {
    {type = "fluid", name = "rflux-energized-flux", amount = 2000},
    {type = "item", name = "copper-plate", amount = 150},
    {type = "item", name = "steel-plate", amount = 150},
    {type = "item", name = "rflux-redstone-circuit", amount = 30},
    {type = "item", name = "concrete", amount = 500},
}
gen_rec.result = "rflux-hightemp-generator"

gen_ent.name = "rflux-hightemp-generator"
gen_ent.minable.result = "rflux-hightemp-generator"
gen_ent.order = "f[rflux]-[energy]-ba"
gen_ent.burner.effectivity = 0.75
gen_ent.max_power_output = "400MW"
gen_ent.energy_source.usage_priority = "tertiary"

data:extend({
    gen_item,
    gen_rec,
    gen_ent
})