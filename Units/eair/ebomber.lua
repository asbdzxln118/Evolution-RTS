-- UNITDEF -- EBOMBER --
--------------------------------------------------------------------------------

local unitName                   = "ebomber"

--------------------------------------------------------------------------------

local unitDef                    = {

	--mobileunit 
	transportbyenemy             = false;

	--**


	acceleration                 = 0.5,
	airStrafe                    = true,
	BadTargetCategory            = "VTOL",
	brakeRate                    = 0.5,
	buildCostEnergy              = 0,
	buildCostMetal               = 55,
	builder                      = false,
	buildTime                    = 2.5,
	canAttack                    = true,
	canFly                       = true,
	canGuard                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = true,
	category                     = "ARMORED VTOL",
	collide                      = true,
	corpse                       = "ammobox",
	cruiseAlt                    = 140,
	description                  = [[Bomber
	Armored
	200 Damage vs Buildings
	50 Damage vs Light/Armored

	Requires +10 Power
	Uses +10 Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "hugeExplosionGeneric",
	footprintX                   = 7,
	footprintZ                   = 7,
	floater                      = true,
	hoverAttack                  = true,
	iconType                     = "assault",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	loopbackattack               = false,
	maxDamage                    = 270,
	maxSlope                     = 10,
	maxVelocity                  = 11,
	verticalSpeed		         = 15,
	maxWaterDepth                = 0,
	metalStorage                 = 0,
	name                         = "Kamper",
	noChaseCategory              = "VTOL",
	objectName                   = "ebomber2.s3o",
	script			             = "ebomber2.cob",
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "hugeExplosionGeneric",
	side                         = "CORE",
	sightDistance                = 900,
	smoothAnim                   = true,
	stealth                      = false,
	turnRate                     = 5000,
	unitname                     = "ebomber",
	workerTime                   = 0,
	sfxtypes                     = { 
		pieceExplosionGenerators = { 
			"deathceg3", 
			"deathceg4", 
		}, 

		explosiongenerators      = {
			"custom:jethtrail",
			"custom:blacksmoke",
		},
	},
	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "SBOMB",
			noChaseCategory      = "VTOL",
			onlyTargetCategory   = "BUILDING",
		},
	},
	customParams                 = {
		--    needed_cover       = 2,
		death_sounds             = "generic",
		nofriendlyfire           = "1",
		RequireTech              = "10 Power",
		armortype                = "light",
		nofriendlyfire	         = "1",
		supply_cost              = 10,
		normalstex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",   
	},
}


--------------------------------------------------------------------------------
-- Energy Per Shot Calculation is: dmg / 20 * ((aoe / 1000) + 1)

local weapon1Damage              = 200
local weapon1AOE				 = 500

local weaponDefs                 = {
	SBOMB                        = {
		AreaOfEffect             = weapon1AOE,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		cegTag                   = "missiletrailgunship",
		explosionGenerator       = "custom:genericshellexplosion-large-red",
		energypershot            = weapon1Damage / 20 * ((weapon1AOE / 1000) + 1),
		edgeEffectiveness        = 0.1,
		fireStarter              = 70,
		guidance                 = false,
		id                       = 136,
		impulseBoost             = 0,
		impulseFactor            = 0,
		interceptedByShieldType  = 4,
		lineOfSight              = true,
		metalpershot             = 0,
		model                    = "missile.s3o",
		name                     = "Rockets",
		range                    = 900,
		reloadtime               = 3,
		weaponType		         = "MissileLauncher",  -- This causes the missile trail to go off kilter
		--	rendertype		     = 1,
		selfprop                 = true,
		smokedelay               = ".1",
		smokeTrail               = false,
		soundHit                 = "unitexplodebig.wav",
		soundHitVolume	         = 10,
		soundStart               = "bomberlaunch.wav",
		soundStartVolume         = 10,
		startsmoke               = "0",
		startVelocity            = 500,
		tolerance                = 8000,
		turnRate                 = 10000,
		tracks                   = false,
		turret			         = false,
		weaponAcceleration       = 10,
		flightTime               = 10,
		weaponVelocity           = 800,
		customparams             = {
			damagetype		     = "ebomber",  
			nofriendlyfire	     = 1,
		},
		damage                   = {
			default              = weapon1Damage,
		},
	},
}
unitDef.weaponDefs               = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName]    = unitDef })

--------------------------------------------------------------------------------