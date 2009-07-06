--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RagnarDrakkarlund_OnCombat(Unit, Event)
Unit:RegisterEvent("RagnarDrakkarlund_Whirlwind", 8000, 0)
end

function RagnarDrakkarlund_Whirlwind(pUnit, Event) 
pUnit:CastSpell(41057) 
end

function RagnarDrakkarlund_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RagnarDrakkarlund_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RagnarDrakkarlund_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26451, 1, "RagnarDrakkarlund_OnCombat")
RegisterUnitEvent(26451, 2, "RagnarDrakkarlund_OnLeaveCombat")
RegisterUnitEvent(26451, 3, "RagnarDrakkarlund_OnKilledTarget")
RegisterUnitEvent(26451, 4, "RagnarDrakkarlund_OnDied")