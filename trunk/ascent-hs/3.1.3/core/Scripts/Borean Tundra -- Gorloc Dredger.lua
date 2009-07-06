--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GorlocDredger_OnCombat(Unit, Event)
Unit:RegisterEvent("GorlocDredger_DeepDredge", 6000, 0)
Unit:RegisterEvent("GorlocDredger_Whirlwind", 9000, 0)
end

function GorlocDredger_DeepDredge(pUnit, Event) 
pUnit:CastSpell(50520) 
end

function GorlocDredger_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15576) 
end

function GorlocDredger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GorlocDredger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GorlocDredger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25701, 1, "GorlocDredger_OnCombat")
RegisterUnitEvent(25701, 2, "GorlocDredger_OnLeaveCombat")
RegisterUnitEvent(25701, 3, "GorlocDredger_OnKilledTarget")
RegisterUnitEvent(25701, 4, "GorlocDredger_OnDied")