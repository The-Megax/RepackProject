--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Soul_OnCombat(Unit, Event)
Unit:RegisterEvent("Soul_Immune", 6000, 0)
end

function Soul_Immune(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36153, pUnit:GetMainTank()) 
end

function Soul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Soul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Soul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20512, 1, "Soul_OnCombat")
RegisterUnitEvent(20512, 2, "Soul_OnLeaveCombat")
RegisterUnitEvent(20512, 3, "Soul_OnKilledTarget")
RegisterUnitEvent(20512, 4, "Soul_OnDied")