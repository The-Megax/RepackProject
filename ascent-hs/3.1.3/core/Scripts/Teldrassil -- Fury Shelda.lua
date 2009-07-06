--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FuryShelda_OnCombat(Unit, Event)
Unit:RegisterEvent("FuryShelda_DeafeningScreech", 10000, 0)
end

function FuryShelda_DeafeningScreech(pUnit, Event) 
pUnit:CastSpell(3589) 
end

function FuryShelda_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FuryShelda_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FuryShelda_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14431, 1, "FuryShelda_OnCombat")
RegisterUnitEvent(14431, 2, "FuryShelda_OnLeaveCombat")
RegisterUnitEvent(14431, 3, "FuryShelda_OnKilledTarget")
RegisterUnitEvent(14431, 4, "FuryShelda_OnDied")