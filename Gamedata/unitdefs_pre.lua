Shared.buildList = {
	[[ehbotfac]],
	[[eminifac]],
	[[ebasefactory]],
	[[eamphibfac]],
	[[eairplant]],
	[[etech1]],
	[[esolar2]],
	[[egeothermal]],
	[[efusion2]],
	[[estorage]],
	[[eradar2]],
	[[ejammer2]],
	[[ekmar]],
	[[elightturret2]],
	[[eheavyturret2]],
	[[eartyturret]],
	[[euwturret]],
	[[eshieldgen]],
	[[esilo]],
	[[emine]],
	[[eorb]],
	[[ebox]],
}

if Spring.GetModOptions ~= nil then
	if Spring.GetModOptions().luamex == "enabled" then
		Shared.buildList [#Shared.buildList + 1] = [[emetalextractor]]
	end
end
	
local turrets = {
	[[ehbotpeewee_turret]],
	[[ehbotthud_turret]],
	[[ehbotsniper_turret]],
	[[ehbotrocko_turret]],
}

Shared.buildListTurret = {}
for i = 1, #Shared.buildList do
	Shared.buildListTurret[i] = Shared.buildList[i]
end
for i = 1, #turrets do
	Shared.buildListTurret[#Shared.buildListTurret + 1] = turrets[i]
end

local factory = {
	[[ehbotpeewee]],
	[[ehbotthud]],
	[[eallterrlight]],
	[[eallterrriot]],
	[[elighttank3]],
	[[eriottank2]],
	[[eamphibbuggy]],
	[[eamphibriot]],
}

Shared.buildListFactory = {}
for i = 1, #Shared.buildList do
	Shared.buildListFactory[i] = Shared.buildList[i]
end
for i = 1, #factory do
	Shared.buildListFactory[#Shared.buildListFactory + 1] = factory[i]
end