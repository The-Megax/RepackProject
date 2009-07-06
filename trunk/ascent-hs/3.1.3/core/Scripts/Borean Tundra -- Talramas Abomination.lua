--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TalramasAbomination_OnCombat(Unit, Event)
Unit:RegisterEvent("TalramasAbomination_PlagueCloud", 2000, 2)
end

function TalramasAbomination_PlagueCloud(pUnit, Event) 
pUnit:CastSpell(50366) 
end

function TalramasAbomination_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TalramasAbomination_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TalramasAbomination_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25684, 1, "TalramasAbomination_OnCombat")
RegisterUnitEvent(25684, 2, "TalramasAbomination_OnLeaveCombat")
RegisterUnitEvent(25684, 3, "TalramasAbomination_OnKilledTarget")
RegisterUnitEvent(25684, 4, "TalramasAbomination_OnDied")