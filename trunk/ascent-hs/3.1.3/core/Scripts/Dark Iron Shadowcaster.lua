--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, May 08, 2009. ]]

function Dark.Iron.Shadowcaster_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("Immolate", 4000, 1)
	Unit:RegisterEvent("ShadowBolt", 7000, 0)
end

function Immolate(Unit,Event)
 if (plr ~= nil) then
	return
	else
	Unit:FullCastSpellOnTarget(2941,plr)
 end
end

function ShadowBolt(Unit,Event)
 if (plr ~= nil) then
	return
	else
	Unit:FullCastSpellOnTarget(20816,plr)
 end
end

function Dark.Iron.Shadowcaster_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function Dark.Iron.Shadowcaster_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2577, 1, "Dark.Iron.Shadowcaster_OnEnterCombat")
RegisterUnitEvent(2577, 2, "Dark.Iron.Shadowcaster_OnLeaveCombat")
RegisterUnitEvent(2577, 4, "Dark.Iron.Shadowcaster_OnDied")