--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 27, 2009. ]]

function Broodlord_Lashlayer_OnCombat(pUnit, event)
--	pUnit:SendChatMessage(14, 0, "Need to find out what he says oncombat still")
pUnit:RegisterEvent("Cleave", 15000, 0)
pUnit:RegisterEvent("Whelps", 190000, 0)
pUnit:RegisterEvent("Taskmaster", 640000, 0)
pUnit:RegisterEvent("Hatcher", 640000, 0)
pUnit:RegisterEvent("Back", 30000, 0)

end
function Whelps(pUnit, event)
local x,y,z,o = pUnit:GetX(),pUnit:GetY(),pUnit:GetZ(),pUnit:GetO()
pUnit:SpawnCreature(14024 , x, y, z, o, 14, 190000)
pUnit:SpawnCreature(14025 , x, y, z, o, 14, 190000)
pUnit:SpawnCreature(14023 , x, y, z, o, 14, 190000)
pUnit:SpawnCreature(14022 , x, y, z, o, 14, 190000)
end

function Taskmaster(pUnit, event)
	local x,y,z,o = pUnit:GetX(),pUnit:GetY(),pUnit:GetZ(),pUnit:GetO()
	pUnit:SpawnCreature(12458 , x, y, z, o, 14, 650000)
	pUnit:SpawnCreature(12458 , x, y, z, o, 14, 650000)
	pUnit:SpawnCreature(12458 , x, y, z, o, 14, 650000)
	end
function Hatcher(pUnit, event)
	local x,y,z,o = pUnit:GetX(),pUnit:GetY(),pUnit:GetZ(),pUnit:GetO()
	pUnit:SpawnCreature(12468 , x, y, z, o, 14, 650000)
	end
function Cleave(pUnit, event)
	local tank = pUnit:GetMainTank()
	if tank ~= nill then
	pUnit:FullCastSpellOnTarget(15284, tank)
	end
	end
function Back(pUnit, event)
	local plr = pUnit:GetMainTank()
	if plr ~= nil then
pUnit:CastSpellOnTarget(18670, plr)
pUnit:RemoveThreatByPtr(plr)
	end
	end
function Broodlord_Lashlayer_OnLeaveCombat(pUnit, event)
	--pUnit:SendChatMessage(14, 0, "Something)
pUnit:RemoveEvents()
	end
function Broodlord_Lashlayer_OnKillTarget(pUnit, event)
pUnit:RemoveEvents()
	end
function Broodlord_Lashlayer_OnDeath(pUnit, event)
pUnit:RemoveEvents()
	end
	
RegisterUnitEvent(12017, 1, "Broodlord_Lashlayer_OnCombat")
RegisterUnitEvent(12017, 2, "Broodlord_Lashlayer_OnLeaveCombat")	
RegisterUnitEvent(12017, 3, "Broodlord_Lashlayer_OnKillTarget")
RegisterUnitEvent(12017, 4, "Broodlord_Lashlayer_OnDeath")		