-- UNITDEF -- EUWSTORAGE --
--------------------------------------------------------------------------------

local unitName = "euwstorage"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  buildAngle         = 8196,
  buildCostEnergy    = 0,
  buildCostMetal     = 25,
  builder            = false,
  buildTime          = 7,
  category           = "NOTAIR ECO",
  corpse             = "ammobox",
  description        = "Resource Storage - Stores 50m/50e",
  energyStorage      = 50,
  energyUse          = 0,
  explodeAs          = "ESTOR_BUILDING",
  footprintX         = 6,
  footprintZ         = 6,
  idleAutoHeal       = .5,
  idleTime           = 2200,
  icontype           = "eco",
  maxDamage          = 200,
  maxSlope           = 60,
  minWaterDepth      = 40,
  maxWaterDepth      = 10000,
  metalStorage       = 50,
  name               = "Underwater Storage",
  objectName         = "estorage.s3o",
  radarDistance      = 0,
  selfDestructAs     = "ESTOR_BUILDING",
  side               = "CORE",
  sightDistance      = 367,
  smoothAnim         = true,
  unitname           = "euwstorage",
  workerTime         = 0,
  yardMap            = "oooooooooooooooo",
   sfxtypes = {
    explosiongenerators = {
      "custom:bubbles",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "gdenergy",
    },
  },
  weapons = {
    [1]  = {
      def                = "fusionfx",
    },
  },
   customParams = {
	armortype   = "eco", 
	normaltex = "unittextures/estoragenormal.png", 
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=9,
	buildingGroundDecalSizeY=9,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[euwstorage_aoplane.dds]],
}


--------------------------------------------------------------------------------

local weaponDefs = {
  fusionfx = {

    areaOfEffect       = 5,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    rgbColor           = "0.5 0.5 0.5",
    rgbColor2          = "0.2 0.2 0.8",
    coreThickness      = 0.1,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = "custom:burn",
    fallOffRate        = 0.5,
    minintensity       = 1,
    impulseFactor      = 0,
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "Light Laser",
    noSelfDamage       = true,
    range              = 650,
    reloadtime         = 0.1,
    WeaponType         = "BeamLaser",
    selfprop           = true,
    soundTrigger       = true,
    startVelocity      = 1500,
    targetMoveError    = 0.3,
    thickness          = 1,
    turret             = true,
    weaponVelocity     = 1500,
    damage = {
      default            = 0,
    },
  },
}
unitDef.weaponDefs = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------