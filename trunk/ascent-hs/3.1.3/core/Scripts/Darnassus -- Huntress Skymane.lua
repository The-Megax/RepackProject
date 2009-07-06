--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HuntressSkymane_OnCombat(Unit, Event)
Unit:RegisterEvent("HuntressSkymane_HookedNet", 13000, 0)
Unit:RegisterEvent("HuntressSkymane_SunderArmor", 8000, 0)
end

function HuntressSkymane_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14030, pUnit:GetMainTank()) 
end

function HuntressSkymane_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HuntressSkymane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HuntressSkymane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HuntressSkymane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14378, 1, "HuntressSkymane_OnCombat")
RegisterUnitEvent(14378, 2, "HuntressSkymane_OnLeaveCombat")
RegisterUnitEvent(14378, 3, "HuntressSkymane_OnKilledTarget")
RegisterUnitEvent(14378, 4, "HuntressSkymane_OnDied")