--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TundraScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("TundraScavenger_Maul", 5000, 0)
end

function TundraScavenger_Maul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51875, pUnit:GetMainTank()) 
end

function TundraScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TundraScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TundraScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27294, 1, "TundraScavenger_OnCombat")
RegisterUnitEvent(27294, 2, "TundraScavenger_OnLeaveCombat")
RegisterUnitEvent(27294, 3, "TundraScavenger_OnKilledTarget")
RegisterUnitEvent(27294, 4, "TundraScavenger_OnDied")