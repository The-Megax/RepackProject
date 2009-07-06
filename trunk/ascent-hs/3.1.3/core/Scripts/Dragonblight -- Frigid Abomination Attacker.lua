--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrigidAbominationAttacker_OnCombat(Unit, Event)
Unit:RegisterEvent("FrigidAbominationAttacker_Cleave", 8000, 0)
end

function FrigidAbominationAttacker_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function FrigidAbominationAttacker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrigidAbominationAttacker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrigidAbominationAttacker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27531, 1, "FrigidAbominationAttacker_OnCombat")
RegisterUnitEvent(27531, 2, "FrigidAbominationAttacker_OnLeaveCombat")
RegisterUnitEvent(27531, 3, "FrigidAbominationAttacker_OnKilledTarget")
RegisterUnitEvent(27531, 4, "FrigidAbominationAttacker_OnDied")