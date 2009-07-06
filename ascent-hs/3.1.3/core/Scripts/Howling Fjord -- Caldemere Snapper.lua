--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CaldemereSnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("CaldemereSnapper_ClawGrasp", 10000, 0)
end

function CaldemereSnapper_ClawGrasp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49978, pUnit:GetMainTank()) 
end

function CaldemereSnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaldemereSnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaldemereSnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24287, 1, "CaldemereSnapper_OnCombat")
RegisterUnitEvent(24287, 2, "CaldemereSnapper_OnLeaveCombat")
RegisterUnitEvent(24287, 3, "CaldemereSnapper_OnKilledTarget")
RegisterUnitEvent(24287, 4, "CaldemereSnapper_OnDied")