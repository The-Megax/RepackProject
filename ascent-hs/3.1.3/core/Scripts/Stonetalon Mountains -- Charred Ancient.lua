--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CharredAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CharredAncient_EntanglingRoots", 10000, 0)
end

function CharredAncient_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function CharredAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CharredAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CharredAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4028, 1, "CharredAncient_OnCombat")
RegisterUnitEvent(4028, 2, "CharredAncient_OnLeaveCombat")
RegisterUnitEvent(4028, 3, "CharredAncient_OnKilledTarget")
RegisterUnitEvent(4028, 4, "CharredAncient_OnDied")