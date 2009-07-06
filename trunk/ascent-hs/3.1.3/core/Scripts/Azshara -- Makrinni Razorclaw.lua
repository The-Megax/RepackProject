--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MakrinniRazorclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MakrinniRazorclaw_SunderArmor", 5000, 0)
end

function MakrinniRazorclaw_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13444, pUnit:GetMainTank()) 
end

function MakrinniRazorclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakrinniRazorclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakrinniRazorclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6350, 1, "MakrinniRazorclaw_OnCombat")
RegisterUnitEvent(6350, 2, "MakrinniRazorclaw_OnLeaveCombat")
RegisterUnitEvent(6350, 3, "MakrinniRazorclaw_OnKilledTarget")
RegisterUnitEvent(6350, 4, "MakrinniRazorclaw_OnDied")