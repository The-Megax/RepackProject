--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DunemaulBrute_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulBrute_Uppercut", 7000, 0)
end

function DunemaulBrute_Uppercut(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function DunemaulBrute_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulBrute_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulBrute_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5474, 1, "DunemaulBrute_OnCombat")
RegisterUnitEvent(5474, 2, "DunemaulBrute_OnLeaveCombat")
RegisterUnitEvent(5474, 3, "DunemaulBrute_OnKilledTarget")
RegisterUnitEvent(5474, 4, "DunemaulBrute_OnDied")