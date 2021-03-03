if mods["angelssmelting"] and mods["248k"] then
	data:extend(
	{
		-- Durotal
		{
			type = "technology",
			name = "angels-industrial-steel-smelting-1",
			icon_size = 128,
			icon = "__grand-unified-factorio-theory__/graphics/technology/smelting-industrial-steel.png",
			effects =
			{
				{ type = "unlock-recipe", recipe = "molten-industrial-steel-smelting" },
				{ type = "unlock-recipe", recipe = "angels-plate-industrial-steel" },
			},
			prerequisites = { "angels-metallurgy-1", "fi_blends_tech" },
			unit =
			{
				count = 100,
				ingredients =
				{
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "chemical-science-pack", 1 },
				},
				time = 30,
			},
			order = "c-2-i",
		},
	})
end