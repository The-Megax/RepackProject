--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, May 08, 2009. ]]

function Drywhisker.Surveyor_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Frost.Nova", 20000, 0)
	Unit:RegisterEvent("Frostbolt", 9000, 0)
end

function Frost.Nova(Unit,Event)
	Unit:FullCastSpell(865)
end

function FrostBolt(Unit,Event)
	Unit:FullCastSpellOnTarget(20822,plr)
end

function Drywhisker.Surveyor_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Surveyor_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Surveyor_OnSpawn(Unit,Event)
	Unit:FullCastSpell(12544)
end

RegisterUnitEvent(2573, 1, "Drywhisker.Surveyor_OnEnterCombat")
RegisterUnitEvent(2573, 2, "Drywhisker.Surveyor_OnLeaveCombat")
RegisterUnitEvent(2573, 4, "Drywhisker.Surveyor_OnDied")
RegisterUnitEvent(2573, 18, "Drywhisker.Surveyor_OnSpawn")