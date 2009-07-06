--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, May 08, 2009. ]]

function Drywhisker.Digger_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
local HP = Unit:GetHealthPct()
	Unit:RegsiterEvent("Sunder.Armor", 9000, 0)
end

function Sunder.Armor(Unit,Event)
 if (plr ~= nil) then
	return
	elseif(HP <= 36) then
		Unit:FullCastSpellOnTarget(8380,plr)
 end
end

function Drywhisker.Digger_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Digger_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

function Drywhisker.Digger_OnSpawn(Unit,Event)
	Unit:FullCastSpell(7164)
end

RegisterUnitEvent(2574, 1, "Drywhisker.Digger_OnEnterCombat")
RegisterUnitEvent(2574, 2, "Drywhisker.Digger_OnLeaveCombat")
RegisterUnitEvent(2574, 4, "Drywhisker.Digger_OnDied")
RegisterUnitEvent(2574, 18, "Drywhisker.Digger_OnSpawn")