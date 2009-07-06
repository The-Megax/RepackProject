--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodShade_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodShade_VexedBloodoftheAncestors", 6000, 0)
end

function BloodShade_VexedBloodoftheAncestors(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49843, pUnit:GetMainTank()) 
end

function BloodShade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodShade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodShade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24872, 1, "BloodShade_OnCombat")
RegisterUnitEvent(24872, 2, "BloodShade_OnLeaveCombat")
RegisterUnitEvent(24872, 3, "BloodShade_OnKilledTarget")
RegisterUnitEvent(24872, 4, "BloodShade_OnDied")