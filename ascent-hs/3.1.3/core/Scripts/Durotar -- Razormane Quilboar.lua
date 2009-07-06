--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneQuilboar_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneQuilboar_RazorMane", 2000, 2)
end

function RazormaneQuilboar_RazorMane(pUnit, Event) 
pUnit:CastSpell(5280) 
end

function RazormaneQuilboar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneQuilboar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneQuilboar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3111, 1, "RazormaneQuilboar_OnCombat")
RegisterUnitEvent(3111, 2, "RazormaneQuilboar_OnLeaveCombat")
RegisterUnitEvent(3111, 3, "RazormaneQuilboar_OnKilledTarget")
RegisterUnitEvent(3111, 4, "RazormaneQuilboar_OnDied")