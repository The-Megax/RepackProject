--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimbermawShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("TimbermawShaman_LightningBolt", 8000, 0)
end

function TimbermawShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20295, pUnit:GetMainTank()) 
end

function TimbermawShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimbermawShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimbermawShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6188, 1, "TimbermawShaman_OnCombat")
RegisterUnitEvent(6188, 2, "TimbermawShaman_OnLeaveCombat")
RegisterUnitEvent(6188, 3, "TimbermawShaman_OnKilledTarget")
RegisterUnitEvent(6188, 4, "TimbermawShaman_OnDied")