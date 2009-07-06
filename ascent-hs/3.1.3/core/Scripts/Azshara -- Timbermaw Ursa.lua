--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TimbermawUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawUrsa_Thunderclap", 8000, 0)
end

function TimbermawUrsa_Thunderclap(pUnit, Event) 
pUnit:CastSpell(8078) 
end

function TimbermawUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6189, 1, "TimbermawUrsa_OnCombat")
RegisterUnitEvent(6189, 2, "TimbermawUrsa_OnLeaveCombat")
RegisterUnitEvent(6189, 3, "TimbermawUrsa_OnKilledTarget")
RegisterUnitEvent(6189, 4, "TimbermawUrsa_OnDied")