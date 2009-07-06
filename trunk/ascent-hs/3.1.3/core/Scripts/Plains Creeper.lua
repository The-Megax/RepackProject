--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, March 17, 2009. ]]

function PlainsCreeper_OnEnterCombat(Unit,Event)
local plr = Unit:GetMainTank()
	Unit:RegisterEvent("EncasingWebs", 18000, 0)
	Unit:RegisterEvent("Poison", 5000, 1)
end

function EncasingWebs(Unit,Event)
	Unit:FullCastSpellOnTarget(4962,plr)
end

function Poison(Unit,Event)
	Unit:FullCastSpellOnTarget(744,plr)
end

function PlainsCreeper_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function PlainsCreeper_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(2563,1,"PlainsCreeper_OnEnterCombat")
RegisterUnitEvent(2563,2,"PlainsCreeper_OnLeaveCombat")
RegisterUnitEvent(2563,4,"PlainsCreeper_OnDied")