Config                            = Config or {}
Config.DrawDistance               = 5.0
Config.Distance               	  = 1.5
Config.MarkerColor                = {r = 255, g = 255, b = 255}
Config.ResellPercentage           = 50
Config.Qtarget 					  = false
Config.RentCar 					  = true
Config.PlateRentedCar 			  = "PDM"
Config.IPL 					      = true
Config.CloseCar 				  = true
Config.changePrice 				  = true
Config.Locale                     = 'fr'

Config.ColorMenu = {
	Red = 255,
	Green = 255,
	Blue = 255,
	Alpha = 100
}

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.OxInventory = ESX.GetConfig().OxInventory

Config.Blip = {
	Coords = vector3(162.602875, -1103.831787, 29.211443),
	Sprite  = 326,
	Display = 4,
	Scale   = 0.7,
	Colour  = 0
}

Config.Zone = { -- sans loop(120.509315, -1097.478149, 29.211447, 177.465775)

	ShopOutside = {
		Pos     = vector3 (120.933128, -1099.723389, 28.568134),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 177.465775,
		Type    = -1,
	},

	ShopInside = {
		Pos     = vector3 (120.933128, -1099.723389, 28.568134),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 177.465775,
		Type    = -1,
	},
}

Config.Zones = { -- avec loop

	ShopEntering = {
		Pos   = vector3(162.602875, -1103.831787, 28.31),
		Size  = {x = 0.7, y = 0.7, z = 0.7},
		Type  = 25,
		message = "Appuyez sur [E]",
		func = function() openCarDealer() end,
		event = "esx_vehicleshop:openCarDealer",
		grade = {'recruit', 'novice', 'experienced', 'boss'},
		activate = true
	},


	BossActions = {
		Pos   = vector3 (144.025284, -1100.602539, 28.31),
		Size  = {x = 0.7, y = 0.7, z = 0.7},
		Type  = 25,
		message = "Appuyez sur [E]",
		func = function() OpenBossMenu() end,
		event = "esx_vehicleshop:OpenBossMenu",
		grade = {'boss'},
		activate = true
	},

	GiveBackVehicle = {
		Pos   = vector3(-18.2, -1078.5, 25.6),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = -1,
		message = "Appuyez sur ~r~[~s~E~r~]~s~ pour rendre le véhicule",
		func = function() GiveBackVehicle() end,
		grade = {'none'},
		activate = true
	},

	ResellVehicle = {
		Pos   = vector3(135.077652, -1107.412109, 28.603029),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1,
		message = "Appuyez sur ~r~[~s~E~r~]~s~ pour revendre le véhicule",
		func = function() ResellVehiclePlayers() end,
		grade = {'none'},
		activate = true
	}

}