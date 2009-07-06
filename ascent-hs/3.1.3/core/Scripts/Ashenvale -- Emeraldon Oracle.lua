--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EmeraldonOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldonOracle_Regrowth", 6000, 1)
Unit:RegisterEvent("EmeraldonOracle_Rejuvenation", 12000, 0)
end

function EmeraldonOracle_Regrowth(pUnit, Event) 
pUnit:CastSpell(20665) 
end

function EmeraldonOracle_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(20664) 
end

function EmeraldonOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldonOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldonOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12476, 1, "EmeraldonOracle_OnCombat")
RegisterUnitEvent(12476, 2, "EmeraldonOracle_OnLeaveCombat")
RegisterUnitEvent(12476, 3, "EmeraldonOracle_OnKilledTarget")
RegisterUnitEvent(12476, 4, "EmeraldonOracle_OnDied")