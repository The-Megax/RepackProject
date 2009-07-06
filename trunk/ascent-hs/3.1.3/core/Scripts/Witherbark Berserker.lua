--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function WitherbarkBerserker_OnEnterCombat(Unit,Event)
local choice = math.random(1,2)
local plr = Unit:GetMainTank()
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(4974,plr)
		Unit:RegisterEvent("Frenzy", 1000, 1)
elseif (choice == 2) then
		Unit:RegisterEvent("Frenzy", 1000, 1)
end
end

function Frenzy(Unit,Event)
 if Unit:GetHealthPct() <= 29 then
	Unit:CastSpell(3019)
end
end

function WitherbarkBerserker_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function WitherbarkBerserker_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2558,1,"WitherbarkBerserker_OnEnterCombat")
RegisterUnitEvent(2558,2,"WitherbarkBerserker_OnEnterCombat")
RegisterUnitEvent(2558,4,"WitherbarkBerserker_OnDied")