--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Master_OnCombat(Unit, Event)
Unit:RegisterEvent("Master_Beam", 6000, 0)
end

function Master_Beam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35919, pUnit:GetMainTank()) 
end

function Master_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Master_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Master_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18857, 1, "Master_OnCombat")
RegisterUnitEvent(18857, 2, "Master_OnLeaveCombat")
RegisterUnitEvent(18857, 3, "Master_OnKilledTarget")
RegisterUnitEvent(18857, 4, "Master_OnDied")