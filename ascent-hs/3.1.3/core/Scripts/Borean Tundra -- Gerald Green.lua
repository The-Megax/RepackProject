--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GeraldGreen_OnCombat(Unit, Event)
Unit:RegisterEvent("GeraldGreen_Cleave", 7000, 0)
end

function GeraldGreen_Cleave(pUnit, Event) 
pUnit:FullCastSpellOnTarget(40504, pUnit:GetMainTank()) 
end

function GeraldGreen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeraldGreen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeraldGreen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26083, 1, "GeraldGreen_OnCombat")
RegisterUnitEvent(26083, 2, "GeraldGreen_OnLeaveCombat")
RegisterUnitEvent(26083, 3, "GeraldGreen_OnKilledTarget")
RegisterUnitEvent(26083, 4, "GeraldGreen_OnDied")