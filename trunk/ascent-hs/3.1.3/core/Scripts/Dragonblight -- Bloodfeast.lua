--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Bloodfeast_OnCombat(Unit, Event)
Unit:RegisterEvent("Bloodfeast_InciteMaggots", 4000, 1)
end

function Bloodfeast_InciteMaggots(pUnit, Event) 
pUnit:CastSpell(52126) 
end

function Bloodfeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bloodfeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bloodfeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27008, 1, "Bloodfeast_OnCombat")
RegisterUnitEvent(27008, 2, "Bloodfeast_OnLeaveCombat")
RegisterUnitEvent(27008, 3, "Bloodfeast_OnKilledTarget")
RegisterUnitEvent(27008, 4, "Bloodfeast_OnDied")