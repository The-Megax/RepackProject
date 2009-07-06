--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TundraWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("TundraWolf_InfectedBite", 8000, 0)
end

function TundraWolf_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7367, pUnit:GetMainTank()) 
end

function TundraWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TundraWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TundraWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25675, 1, "TundraWolf_OnCombat")
RegisterUnitEvent(25675, 2, "TundraWolf_OnLeaveCombat")
RegisterUnitEvent(25675, 3, "TundraWolf_OnKilledTarget")
RegisterUnitEvent(25675, 4, "TundraWolf_OnDied")