--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TurgidtheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("TurgidtheVile_ScourgeHook", 6000, 0)
Unit:RegisterEvent("TurgidtheVile_VileVommit", 8000, 0)
end

function TurgidtheVile_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function TurgidtheVile_VileVommit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51356, pUnit:GetMainTank()) 
end

function TurgidtheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TurgidtheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TurgidtheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27808, 1, "TurgidtheVile_OnCombat")
RegisterUnitEvent(27808, 2, "TurgidtheVile_OnLeaveCombat")
RegisterUnitEvent(27808, 3, "TurgidtheVile_OnKilledTarget")
RegisterUnitEvent(27808, 4, "TurgidtheVile_OnDied")