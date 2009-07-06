--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Grizzlesnout_OnCombat(Unit, Event)
Unit:RegisterEvent("Grizzlesnout_GnawBone", 8000, 0)
end

function Grizzlesnout_GnawBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50046, pUnit:GetMainTank()) 
end

function Grizzlesnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Grizzlesnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Grizzlesnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27523, 1, "Grizzlesnout_OnCombat")
RegisterUnitEvent(27523, 2, "Grizzlesnout_OnLeaveCombat")
RegisterUnitEvent(27523, 3, "Grizzlesnout_OnKilledTarget")
RegisterUnitEvent(27523, 4, "Grizzlesnout_OnDied")