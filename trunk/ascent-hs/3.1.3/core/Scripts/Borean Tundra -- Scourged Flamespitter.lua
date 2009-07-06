--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScourgedFlamespitter_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedFlamespitter_Incinerate", 7000, 0)
end

function ScourgedFlamespitter_Incinerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32707, pUnit:GetMainTank()) 
end

function ScourgedFlamespitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedFlamespitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedFlamespitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25582, 1, "ScourgedFlamespitter_OnCombat")
RegisterUnitEvent(25582, 2, "ScourgedFlamespitter_OnLeaveCombat")
RegisterUnitEvent(25582, 3, "ScourgedFlamespitter_OnKilledTarget")
RegisterUnitEvent(25582, 4, "ScourgedFlamespitter_OnDied")