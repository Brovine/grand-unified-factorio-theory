local resource_autoplace = require("resource-autoplace")

if settings.startup["guft-newores-clowns"].value and mods["Clowns-Processing"] then
	data:extend(
	{
		{
			type = "autoplace-control",
			name = "phosphorus-ore",
			richness = true,
			order = "t-c",
			category = "resource",
		},
		{
			type = "noise-layer",
			name = "phosphorus-ore"
		},
		{
			type = "resource",
			name = "phosphorus-ore",
			icon = "__Clowns-Processing__/graphics/icons/phosphorus-ore.png",
			icon_size = 32,
			flags = {"placeable-neutral"},
			order="t-f",
			tree_removal_probability = 0.2,
			tree_removal_max_distance = 16 * 16,
			minable =
			{
				hardness = 1,
				mining_particle = "stone-particle",
				mining_time = 1,
				result = "phosphorus-ore",
			},
			collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
			autoplace = resource_autoplace.resource_autoplace_settings
			{
				name = "phosphorus-ore",
				order = "c",
				base_density = 1,
				has_starting_area_placement = false,
				regular_rq_factor_multiplier = 0.5,
			},
			stage_counts = {10000, 5200, 2600, 1800, 1200, 800, 400, 80},
			stages =
			{
				sheet =
				{
					filename = "__angelsrefining__/graphics/entity/ores/ore-16-lr.png",
					priority = "extra-high",
					width = 64,
					height = 64,
					frame_count = 8,
					variation_count = 8,
					tint = {r=1, g=0.95, b=1},
					hr_version =
					{
						filename = "__angelsrefining__/graphics/entity/ores/ore-16-hr.png",
						priority = "extra-high",
						width = 128,
						height = 128,
						frame_count = 8,
						variation_count = 8,
						tint = {r=1, g=0.95, b=1},
						scale = 0.5
					}
				}
			},
			map_color = {r=1, g=0.95, b=1}
		},
	})
end