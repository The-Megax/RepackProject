--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LonghoofGrazer_OnCombat(Unit, Event)
Unit:RegisterEvent("LonghoofGrazer_HeadButt", 8000, 0)
end

function LonghoofGrazer_HeadButt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(42320, pUnit:GetMainTank()) 
end

function LonghoofGrazer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LonghoofGrazer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LonghoofGrazer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26418, 1, "LonghoofGrazer_OnCombat")
RegisterUnitEvent(26418, 2, "LonghoofGrazer_OnLeaveCombat")
RegisterUnitEvent(26418, 3, "LonghoofGrazer_OnKilledTarget")
RegisterUnitEvent(26418, 4, "LonghoofGrazer_OnDied")