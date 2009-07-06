--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimbermawTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawTotemic_HealingWard", 13000, 0)
end

function TimbermawTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(5605) 
end

function TimbermawTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6186, 1, "TimbermawTotemic_OnCombat")
RegisterUnitEvent(6186, 2, "TimbermawTotemic_OnLeaveCombat")
RegisterUnitEvent(6186, 3, "TimbermawTotemic_OnKilledTarget")
RegisterUnitEvent(6186, 4, "TimbermawTotemic_OnDied")