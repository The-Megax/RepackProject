--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DCollectatron_OnCombat(Unit, Event)
Unit:RegisterEvent("DCollectatron_DumpOil", 10000, 0)
end

function DCollectatron_DumpOil(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50269, pUnit:GetMainTank()) 
end

function DCollectatron_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DCollectatron_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DCollectatron_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25793, 1, "DCollectatron_OnCombat")
RegisterUnitEvent(25793, 2, "DCollectatron_OnLeaveCombat")
RegisterUnitEvent(25793, 3, "DCollectatron_OnKilledTarget")
RegisterUnitEvent(25793, 4, "DCollectatron_OnDied")