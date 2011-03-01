-- UNITDEF -- EBARRICADE --
--------------------------------------------------------------------------------

local unitName = "ebarricade"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  buildAngle         = 4096,
  buildCostEnergy    = 0,
  buildCostMetal     = 25,
  builder            = false,
  buildTime          = 1,
  canAttack          = false,
  canstop            = "1",
  category           = "NOTAIR",
   collisionVolumeOffsets = "0 0 0",
   collisionVolumeScales  = "48 72 48",
   collisionVolumeTest    = 1,
   collisionVolumeType    = "box",
  damageModifier     = 0.2,
  description        = "Organic Barricade - Regenerates Health :: Armortype: Armored Building",
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "ESTOR_BUILDING",
  footprintX         = 3,
  footprintZ         = 3,
  autoHeal           = 15,
  iconType           = "barricade",
  idleTime           = 0,
  maxDamage          = 500,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "Thorn (b)",
  objectName         = "ebarricade.s3o",
  selfDestructAs     = "ESTOR_BUILDING",
  selfDestructCountdown = 0,
  side               = "ARM",
  sightDistance      = 0,
  smoothAnim         = true,
  TEDClass           = "FORT",
  unitname           = "ebarricade",
  workerTime         = 0,
  yardMap            = "ccccccccc",
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "turretselect",
    },
  },
  customParams = {
	twokhotkey = 'b',
	armortype   = "armoredbuilding", 
	normaltex = "unittextures/ebarricadenormal.png", 
	helptext = [[Organic Barricade

Regenerates Hitpoints as it takes damage. Provides cover for your units or structures.

Armortype: Armored Building

+500 Hitpoints

+15 Hitpoints regenerated per second]],
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=5,
	buildingGroundDecalSizeY=5,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[ebarricade_aoplane.dds]],
}

--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------