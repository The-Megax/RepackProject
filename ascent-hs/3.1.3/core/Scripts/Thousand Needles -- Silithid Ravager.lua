--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SilithidRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidRavager_StrongCleave", 5000, 0)
end

function SilithidRavager_StrongCleave(pUnit, Event) 
pUnit:CastSpell(8255) 
end

function SilithidRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4132, 1, "SilithidRavager_OnCombat")
RegisterUnitEvent(4132, 2, "SilithidRavager_OnLeaveCombat")
RegisterUnitEvent(4132, 3, "SilithidRavager_OnKilledTarget")
RegisterUnitEvent(4132, 4, "SilithidRavager_OnDied")