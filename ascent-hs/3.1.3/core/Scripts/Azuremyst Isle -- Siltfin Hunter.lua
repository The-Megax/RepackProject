--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SiltfinHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SiltfinHunter_Throw", 4000, 0)
end

function SiltfinHunter_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SiltfinHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SiltfinHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SiltfinHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17192, 1, "SiltfinHunter_OnCombat")
RegisterUnitEvent(17192, 2, "SiltfinHunter_OnLeaveCombat")
RegisterUnitEvent(17192, 3, "SiltfinHunter_OnKilledTarget")
RegisterUnitEvent(17192, 4, "SiltfinHunter_OnDied")