--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Goggeroc_OnCombat(Unit, Event)
Unit:RegisterEvent("Goggeroc_SnapKick", 6000, 0)
Unit:RegisterEvent("Goggeroc_Uppercut", 1000, 0)
end

function Goggeroc_SnapKick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8646, pUnit:GetMainTank()) 
end

function Goggeroc_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function Goggeroc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Goggeroc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Goggeroc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11920, 1, "Goggeroc_OnCombat")
RegisterUnitEvent(11920, 2, "Goggeroc_OnLeaveCombat")
RegisterUnitEvent(11920, 3, "Goggeroc_OnKilledTarget")
RegisterUnitEvent(11920, 4, "Goggeroc_OnDied")