--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ColdarraSpellbinder_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraSpellbinder_Frostbolt", 8000, 0)
end

function ColdarraSpellbinder_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function ColdarraSpellbinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraSpellbinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraSpellbinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25719, 1, "ColdarraSpellbinder_OnCombat")
RegisterUnitEvent(25719, 2, "ColdarraSpellbinder_OnLeaveCombat")
RegisterUnitEvent(25719, 3, "ColdarraSpellbinder_OnKilledTarget")
RegisterUnitEvent(25719, 4, "ColdarraSpellbinder_OnDied")