--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HuntressLeafrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("HuntressLeafrunner_HookedNet", 13000, 0)
Unit:RegisterEvent("HuntressLeafrunner_SunderArmor", 8000, 0)
end

function HuntressLeafrunner_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14030, pUnit:GetMainTank()) 
end

function HuntressLeafrunner_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HuntressLeafrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HuntressLeafrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HuntressLeafrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14380, 1, "HuntressLeafrunner_OnCombat")
RegisterUnitEvent(14380, 2, "HuntressLeafrunner_OnLeaveCombat")
RegisterUnitEvent(14380, 3, "HuntressLeafrunner_OnKilledTarget")
RegisterUnitEvent(14380, 4, "HuntressLeafrunner_OnDied")