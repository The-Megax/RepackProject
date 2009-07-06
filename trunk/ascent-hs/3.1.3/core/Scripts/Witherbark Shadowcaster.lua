--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function WitherbarkShadowcaster_OnSpawn(Unit,Event)
	Unit:CastSpell(11939)
end

function WitherbarkShadowcaster_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Shadowbolt", 7000, 0)
end

function ShadowBolt(Unit,Event)
local plr = Unit:GetMainTank()
	if (plr ~= nil) then
		return
	else
	Unit:FullCastSpellOnTarget(20816,plr)
end
end

function WitherbarkShadowcaster_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function WitherbarkShadowcaster_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2553,1,"WitherbarkShadowcaster_OnEnterCombat")
RegisterUnitEvent(2553,2,"WitherbarkShadowcaster_OnLeaveCombat")
RegisterUnitEvent(2553,4,"WitherbarkShadowcaster_OnDied")
RegisterUnitEvent(2553,18,"WitherbarkShadowcaster_OnSpawn")