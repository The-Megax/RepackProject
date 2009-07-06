--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function WitherbarkShadowHunter_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
local choice = math.random(1,2)
	if (choice == 1) then
		Unit:FullCastSpellOnTarget(7646,plr)
		Unit:RegisterEvent("ShadowWord:Pain", 1000, 1)
		Unit:RegisterEvent("Silence", 15000, 4)
elseif (choice == 2) then
		Unit:RegisterEvent("ShadowWord:Pain", 1000, 1)
		Unit:RegisterEvent("Silence", 15000, 4)
end
end

function ShadowWord:Pain(Unit,Event)
 if Unit:GetHealthPct() <= 29 then
	Unit:FullCastSpellOnTarget(992,plr)
end
end

function Silence(Unit,Event)
	Unit:FullCastSpellOnTarget(6726,plr)
end

function WitherbarkShadowHunter_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function WitherbarkShadowHunter_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2557,1,"WitherbarkShadowHunter_OnEnterCombat")
RegsiterUnitEvent(2557,2,"WitherbarkShadowHunter_OnLeaveCombat")
RegisterUnitEvent(2557,4,"WitherbarkShadowHunter_OnDied")