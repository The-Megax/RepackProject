--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TheAnvi_OnCombat(Unit, Event)
Unit:RegisterEvent("TheAnvi_MoltenBlast", 8000, 0)
end

function TheAnvi_MoltenBlast(pUnit, Event) 
pUnit:CastSpell(61577) 
end

function TheAnvi_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheAnvi_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheAnvi_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26406, 1, "TheAnvi_OnCombat")
RegisterUnitEvent(26406, 2, "TheAnvi_OnLeaveCombat")
RegisterUnitEvent(26406, 3, "TheAnvi_OnKilledTarget")
RegisterUnitEvent(26406, 4, "TheAnvi_OnDied")