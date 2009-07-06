--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MystLeecher_OnCombat(Unit, Event)
Unit:RegisterEvent("MystLeecher_LeechPoison", 10000, 0)
end

function MystLeecher_LeechPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31288, pUnit:GetMainTank()) 
end

function MystLeecher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MystLeecher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MystLeecher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17523, 1, "MystLeecher_OnCombat")
RegisterUnitEvent(17523, 2, "MystLeecher_OnLeaveCombat")
RegisterUnitEvent(17523, 3, "MystLeecher_OnKilledTarget")
RegisterUnitEvent(17523, 4, "MystLeecher_OnDied")