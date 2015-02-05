-- UNITDEF -- ESTORAGE --
--------------------------------------------------------------------------------

local unitName                    = "estorage"

--------------------------------------------------------------------------------

local unitDef                     = {
	activateWhenBuilt             = true,
	buildAngle                    = 8196,
	buildCostEnergy               = 0,
	buildCostMetal                = 10,
	builder                       = false,
	buildTime                     = 5,
	canAttack			          = false,
	category                      = "BUILDING NOTAIR ECO",

	collisionVolumeScales         = [[66 74 126]],
	collisionVolumeOffsets        = [[0 10 0]],
	collisionVolumeTest           = 1,
	collisionVolumeType           = "box",

	corpse                        = "ammobox",
	description                   = [[Storage and Supply Depot

	Increases your Metal and Energy storage reserves by +25
	
	Grants +10 Supply]],
	energyStorage                 = 25,
	energyUse                     = 0,
	explodeAs                     = "hugeBuildingExplosionGenericPurple",
	footprintX                    = 4,
	footprintZ                    = 8,
	idleAutoHeal                  = .5,
	idleTime                      = 2200,
	icontype                      = "eco",
	maxDamage                     = 200,
	maxSlope                      = 50,
	maxWaterDepth                 = 5000,
	metalStorage                  = 25,
	name                          = "Storage",
	objectName                    = "estorage2.s3o",
	script			              = "estorage2.cob",
	radarDistance                 = 0,
	repairable		              = false,
	selfDestructAs                = "hugeBuildingExplosionGenericPurple",
	side                          = "CORE",
	sightDistance                 = 367,
	smoothAnim                    = true,
	unitname                      = "estorage",
	workerTime                    = 0,
	yardMap                       = "yyooooyy yyooooyy yyooooyy yyooooyy yyooooyy yyooooyy yyooooyy yyooooyy ",

	sfxtypes                      = {
		pieceExplosionGenerators  = {
			"deathceg3",
			"deathceg4",
		},
		
		explosiongenerators       = {
			"custom:blacksmoke",
			"custom:fusionreactionstoragenew",
			"custom:skyhatelaser",
		},
	},

	sounds                        = {
		underattack               = "unitsunderattack1",
		select                    = {
			"gdenergy",
		},
	},
	weapons                       = {
	},
	customParams                  = {
		iseco                     = 1,
		needed_cover              = 2,
		supply_granted            = 10,
		death_sounds              = "generic",
		armortype                 = "building", 
		normalstex                = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                 = "unittextures/lego2skin_explorerbucket.dds",
		factionname	              = "outer_colonies",  
		helptext                  = [[]],
	},
	useGroundDecal                = true,
	BuildingGroundDecalType       = "factorygroundplate.dds",
	BuildingGroundDecalSizeX      = 10,
	BuildingGroundDecalSizeY      = 10,
	BuildingGroundDecalDecaySpeed = 0.9,
}

--------------------------------------------------------------------------------

return lowerkeys({ [unitName]     = unitDef })

--------------------------------------------------------------------------------