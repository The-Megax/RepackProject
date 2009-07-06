--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MindlessWight_OnCombat(Unit, Event)
Unit:RegisterEvent("MindlessWight_Smash", 6000, 0)
end

function MindlessWight_Smash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51334, pUnit:GetMainTank()) 
end

function MindlessWight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MindlessWight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MindlessWight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27287, 1, "MindlessWight_OnCombat")
RegisterUnitEvent(27287, 2, "MindlessWight_OnLeaveCombat")
RegisterUnitEvent(27287, 3, "MindlessWight_OnKilledTarget")
RegisterUnitEvent(27287, 4, "MindlessWight_OnDied")