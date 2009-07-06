--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Oakpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Oakpaw_Rejuvenation", 8000, 0)
end

function Oakpaw_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function Oakpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Oakpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Oakpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10640, 1, "Oakpaw_OnCombat")
RegisterUnitEvent(10640, 2, "Oakpaw_OnLeaveCombat")
RegisterUnitEvent(10640, 3, "Oakpaw_OnKilledTarget")
RegisterUnitEvent(10640, 4, "Oakpaw_OnDied")