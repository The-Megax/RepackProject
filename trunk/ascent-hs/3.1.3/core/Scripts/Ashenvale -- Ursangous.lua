--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Ursangous_OnCombat(Unit, Event)
Unit:RegisterEvent("Ursangous_KnockAway", 8000, 0)
Unit:RegisterEvent("Ursangous_Rend", 10000, 0)
end

function Ursangous_KnockAway(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10101, pUnit:GetMainTank()) 
end

function Ursangous_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function Ursangous_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ursangous_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ursangous_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12678, 1, "Ursangous_OnCombat")
RegisterUnitEvent(12678, 2, "Ursangous_OnLeaveCombat")
RegisterUnitEvent(12678, 3, "Ursangous_OnKilledTarget")
RegisterUnitEvent(12678, 4, "Ursangous_OnDied")